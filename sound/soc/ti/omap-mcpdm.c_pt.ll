; ModuleID = '/llk/IR_all_yes/sound/soc/ti/omap-mcpdm.c_pt.bc'
source_filename = "../sound/soc/ti/omap-mcpdm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+omap_mcpdm_configure_dn_offsets\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_mcpdm_configure_dn_offsets\09\09\09\09"
module asm "\09.long\09__crc_omap_mcpdm_configure_dn_offsets\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_mcpdm_configure_dn_offsets:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_mcpdm_configure_dn_offsets\22\09\09\09\09\09"
module asm "__kstrtabns_omap_mcpdm_configure_dn_offsets:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.omap_mcpdm = type { ptr, i32, ptr, i32, %struct.pm_qos_request, [2 x i32], %struct.mutex, [2 x %struct.mcpdm_link_config], i32, i8, i32, [2 x %struct.snd_dmaengine_dai_dma_data] }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mcpdm_link_config = type { i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__kstrtab_omap_mcpdm_configure_dn_offsets = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_mcpdm_configure_dn_offsets = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_mcpdm_configure_dn_offsets = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_mcpdm_configure_dn_offsets to i32), ptr @__kstrtab_omap_mcpdm_configure_dn_offsets, ptr @__kstrtabns_omap_mcpdm_configure_dn_offsets }, section "___ksymtab_gpl+omap_mcpdm_configure_dn_offsets", align 4
@__initcall__kmod_snd_soc_omap_mcpdm__247_600_asoc_mcpdm_driver_init6 = internal global ptr @asoc_mcpdm_driver_init, section ".initcall6.init", align 4
@asoc_mcpdm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asoc_mcpdm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_mcpdm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asoc_mcpdm_driver_exit = internal global ptr @asoc_mcpdm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias248 = internal constant [45 x i8] c"snd_soc_omap_mcpdm.alias=platform:omap-mcpdm\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [66 x i8] c"snd_soc_omap_mcpdm.author=Misael Lopez Cruz <misael.lopez@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [54 x i8] c"snd_soc_omap_mcpdm.description=OMAP PDM SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [56 x i8] c"snd_soc_omap_mcpdm.file=sound/soc/ti/snd-soc-omap-mcpdm\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [31 x i8] c"snd_soc_omap_mcpdm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap-mcpdm\00", [21 x i8] zeroinitializer }, align 32
@omap_mcpdm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-mcpdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@asoc_mcpdm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mcpdm->mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dn_link\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"up_link\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@omap_mcpdm_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @omap_mcpdm_suspend, ptr @omap_mcpdm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@omap_mcpdm_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @omap_mcpdm_probe, ptr @omap_mcpdm_remove, ptr null, ptr null, ptr @omap_mcpdm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1024, i32 1536, i32 0, i32 0, i32 1, i32 3, i32 24 }, %struct.snd_soc_pcm_stream { ptr null, i64 1024, i32 1536, i32 0, i32 0, i32 1, i32 5, i32 24 }, i8 0, i32 1, i32 -1 }, [56 x i8] zeroinitializer }, align 32
@omap_mcpdm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_mcpdm_dai_startup, ptr @omap_mcpdm_dai_shutdown, ptr @omap_mcpdm_dai_hw_params, ptr null, ptr @omap_mcpdm_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"McPDM\00", [26 x i8] zeroinitializer }, align 32
@omap_mcpdm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 431, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Request for IRQ failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_mcpdm_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/ti/omap-mcpdm.c\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_mcpdm_probe._entry_ptr = internal global ptr @omap_mcpdm_probe._entry, section ".printk_index", align 4
@omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.9, ptr @.str.14, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_omap_mcpdm\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_mcpdm_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DN (playback) FIFO Full\0A\00", [39 x i8] zeroinitializer }, align 32
@omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.9, ptr @.str.15, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DN (playback) FIFO Empty\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.9, ptr @.str.16, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DN (playback) write request\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.9, ptr @.str.17, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"UP (capture) FIFO Full\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.9, ptr @.str.18, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UP (capture) FIFO Empty\0A\00", [39 x i8] zeroinitializer }, align 32
@omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.9, ptr @.str.19, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"UP (capture) write request\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"asoc_mcpdm_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 591, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 593, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"omap_mcpdm_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 585, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 553, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 555, i32 59 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 562, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 563, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 565, i32 59 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"omap_mcpdm_component\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 526, i32 46 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"omap_mcpdm_dai\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 504, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"omap_mcpdm_dai_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 407, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 425, i32 59 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 431, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 229, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 232, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 235, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 238, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 241, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [29 x i8] c"../sound/soc/ti/omap-mcpdm.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 244, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_asoc_mcpdm_driver_exit, ptr @__initcall__kmod_snd_soc_omap_mcpdm__247_600_asoc_mcpdm_driver_init6, ptr @__ksymtab_omap_mcpdm_configure_dn_offsets, ptr @asoc_mcpdm_driver_exit, ptr @omap_mcpdm_probe._entry, ptr @omap_mcpdm_probe._entry_ptr, ptr @asoc_mcpdm_driver, ptr @.str, ptr @omap_mcpdm_of_match, ptr @asoc_mcpdm_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @omap_mcpdm_component, ptr @omap_mcpdm_dai, ptr @omap_mcpdm_dai_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_mcpdm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcpdm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_mcpdm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcpdm_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcpdm_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcpdm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcpdm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap_mcpdm_configure_dn_offsets(ptr nocapture noundef readonly %rtd, i8 noundef zeroext %rx1, i8 noundef zeroext %rx2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %0 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dais, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %8 = shl i8 %rx1, 1
  %9 = and i8 %8, 62
  %shl = zext i8 %9 to i32
  %10 = and i8 %rx2, 31
  %and2 = zext i8 %10 to i32
  %shl3 = shl nuw nsw i32 %and2, 9
  %or = or i32 %shl3, %shl
  %dn_rx_offset = getelementptr inbounds %struct.omap_mcpdm, ptr %7, i32 0, i32 8
  %11 = ptrtoint ptr %dn_rx_offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %dn_rx_offset, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_mcpdm_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_mcpdm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asoc_mcpdm_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_mcpdm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_mcpdm_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.omap_mcpdm, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @asoc_mcpdm_probe.__key) #6
  %call1 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #6
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call1, align 4
  %add = add i32 %2, 72
  %dma_data = getelementptr inbounds %struct.omap_mcpdm, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %dma_data, align 4
  %4 = load i32, ptr %call1, align 4
  %add5 = add i32 %4, 76
  %arrayidx7 = getelementptr %struct.omap_mcpdm, ptr %call.i, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add5, ptr %arrayidx7, align 4
  %filter_data = getelementptr inbounds %struct.omap_mcpdm, ptr %call.i, i32 0, i32 11, i32 0, i32 3
  %6 = ptrtoint ptr %filter_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.3, ptr %filter_data, align 4
  %filter_data13 = getelementptr %struct.omap_mcpdm, ptr %call.i, i32 0, i32 11, i32 1, i32 3
  %7 = ptrtoint ptr %filter_data13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.4, ptr %filter_data13, align 4
  %call14 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.5) #6
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call14) #6
  %io_base = getelementptr inbounds %struct.omap_mcpdm, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %io_base, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end3
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.omap_mcpdm, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call23, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp slt i32 %call23, 0
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %call.i, align 4
  %call32 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @omap_mcpdm_component, ptr noundef nonnull @omap_mcpdm_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 @sdma_pcm_platform_register(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end28.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then19 ], [ %call37, %if.end35 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call32, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdma_pcm_platform_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcpdm_suspend(ptr nocapture noundef readonly %component) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %active.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 5
  %4 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %io_base.i.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 68
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !76
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %or.i = or i32 %9, 6144
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %11 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %12, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %10) #6, !srcloc !77
  %and.i = and i32 %or.i, -256
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %14 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %15, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %13) #6, !srcloc !77
  %and1.i = and i32 %9, -6400
  %16 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #6
  %17 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %16) #6, !srcloc !77
  %19 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 167772160) #6, !srcloc !77
  %21 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %22, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 16777216) #6, !srcloc !77
  %23 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %24, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 655360) #6, !srcloc !77
  %25 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i11.i14 = getelementptr i8, ptr %26, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i14, i32 33554432) #6, !srcloc !77
  %dn_rx_offset.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 8
  %27 = ptrtoint ptr %dn_rx_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dn_rx_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i13.i15 = getelementptr i8, ptr %30, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i15, i32 0) #6, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %pm_active_count = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %while.body ]
  %31 = ptrtoint ptr %pm_active_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge, ptr %pm_active_count, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 18
  %34 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp eq i32 %35, 0
  br i1 %cmp.i, label %while.cond.while.body_crit_edge, label %pm_runtime_active.exit

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

pm_runtime_active.exit:                           ; preds = %while.cond
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 15
  %36 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.while.body_crit_edge, label %while.end

pm_runtime_active.exit.while.body_crit_edge:      ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %pm_runtime_active.exit.while.body_crit_edge, %while.cond.while.body_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %33, i32 noundef 4) #6
  %37 = ptrtoint ptr %pm_active_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pm_active_count, align 4
  %inc = add i32 %38, 1
  br label %while.cond

while.end:                                        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcpdm_resume(ptr nocapture noundef readonly %component) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pm_active_count = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %pm_active_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pm_active_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %while.cond.preheader

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

while.cond.preheader:                             ; preds = %entry
  %dec17 = add i32 %5, -1
  %6 = ptrtoint ptr %pm_active_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec17, ptr %pm_active_count, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #6
  %9 = ptrtoint ptr %pm_active_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %pm_active_count, align 4
  %dec = add i32 %.pr, -1
  store i32 %dec, ptr %pm_active_count, align 4
  %tobool2.not = icmp eq i32 %.pr, 0
  br i1 %tobool2.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  %active.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 5
  %10 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %while.end.if.end7_crit_edge, label %if.then6

while.end.if.end7_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %while.end
  %io_base.i.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 68
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !76
  %15 = or i32 %14, 4194304
  %16 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %17, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %15) #6, !srcloc !77
  %18 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 168427520) #6, !srcloc !77
  %dn_rx_offset.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %dn_rx_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dn_rx_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then6.omap_mcpdm_open_streams.exit_crit_edge, label %if.then.i

if.then6.omap_mcpdm_open_streams.exit_crit_edge:  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %omap_mcpdm_open_streams.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %23 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %24, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %22) #6, !srcloc !77
  %or2.i = or i32 %21, 257
  %25 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #6
  %26 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %27, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %25) #6, !srcloc !77
  br label %omap_mcpdm_open_streams.exit

omap_mcpdm_open_streams.exit:                     ; preds = %if.then.i, %if.then6.omap_mcpdm_open_streams.exit_crit_edge
  %threshold.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 0, i32 1
  %28 = ptrtoint ptr %threshold.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %threshold.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  %31 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %32, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %30) #6, !srcloc !77
  %threshold5.i = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 1, i32 1
  %33 = ptrtoint ptr %threshold5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %threshold5.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %36 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %37, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %35) #6, !srcloc !77
  %38 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %39, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 50331648) #6, !srcloc !77
  %40 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %41, i32 68
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #6, !srcloc !76
  %config.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 7
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %config.i, align 4
  %arrayidx3.i = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx3.i, align 4
  %or.i = or i32 %46, %44
  %47 = or i32 %42, 1572864
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %49 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %50, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %47) #6, !srcloc !77
  %or6.i = or i32 %or.i, %48
  %51 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #6
  %52 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i20.i15 = getelementptr i8, ptr %53, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i15, i32 %51) #6, !srcloc !77
  %and.i = and i32 %or6.i, -6145
  %54 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %55 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i22.i16 = getelementptr i8, ptr %56, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i16, i32 %54) #6, !srcloc !77
  br label %if.end7

if.end7:                                          ; preds = %omap_mcpdm_open_streams.exit, %while.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcpdm_probe(ptr nocapture noundef %dai) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @pm_runtime_enable(ptr noundef %5) #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #6
  %io_base.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !77
  %irq = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call.i27 = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef nonnull @omap_mcpdm_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef %3) #6
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i28 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not = icmp eq i32 %call.i27, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7) #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %17, i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %threshold = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 0, i32 1
  %18 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %threshold, align 4
  %threshold10 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 1, i32 1
  %19 = ptrtoint ptr %threshold10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12, ptr %threshold10, align 4
  %dma_data = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 11
  %arrayidx13 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 11, i32 1
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %20 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dma_data, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %21 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx13, ptr %capture_dma_data.i, align 4
  ret i32 %call.i27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcpdm_remove(ptr nocapture noundef readonly %dai) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #6
  %pm_qos_req = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 4
  %call2 = tail call zeroext i1 @cpu_latency_qos_request_active(ptr noundef %pm_qos_req) #6
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcpdm_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.omap_mcpdm, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !76
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %2) #6, !srcloc !77
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcpdm_irq_handler, %if.then5)) #6
          to label %if.end6 [label %if.then5], !srcloc !78

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug241, ptr noundef %7, ptr noundef nonnull @.str.14) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %and7 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end27_crit_edge, label %do.body10

if.end6.if.end27_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcpdm_irq_handler, %if.then22)) #6
          to label %if.end27 [label %if.then22], !srcloc !78

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug242, ptr noundef %9, ptr noundef nonnull @.str.15) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %do.body10, %if.end6.if.end27_crit_edge
  %and28 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end48_crit_edge, label %do.body31

if.end27.if.end48_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.body31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcpdm_irq_handler, %if.then43)) #6
          to label %if.end48 [label %if.then43], !srcloc !78

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug243, ptr noundef %11, ptr noundef nonnull @.str.16) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %do.body31, %if.end27.if.end48_crit_edge
  %and49 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end69_crit_edge, label %do.body52

if.end48.if.end69_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.body52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcpdm_irq_handler, %if.then64)) #6
          to label %if.end69 [label %if.then64], !srcloc !78

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug244, ptr noundef %13, ptr noundef nonnull @.str.17) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %do.body52, %if.end48.if.end69_crit_edge
  %and70 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end90_crit_edge, label %do.body73

if.end69.if.end90_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

do.body73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcpdm_irq_handler, %if.then85)) #6
          to label %if.end90 [label %if.then85], !srcloc !78

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug245, ptr noundef %15, ptr noundef nonnull @.str.18) #6
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %do.body73, %if.end69.if.end90_crit_edge
  %and91 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.if.end111_crit_edge, label %do.body94

if.end90.if.end111_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

do.body94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_mcpdm_irq_handler, %if.then106)) #6
          to label %if.end111 [label %if.then106], !srcloc !78

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug246, ptr noundef %17, ptr noundef nonnull @.str.19) #6
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %do.body94, %if.end90.if.end111_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_latency_qos_request_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcpdm_dai_startup(ptr nocapture noundef readnone %substream, ptr noundef %dai) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %io_base.i.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !76
  %7 = or i32 %6, 4194304
  %8 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %9, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %7) #6, !srcloc !77
  %10 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 168427520) #6, !srcloc !77
  %dn_rx_offset.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %dn_rx_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dn_rx_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.omap_mcpdm_open_streams.exit_crit_edge, label %if.then.i

if.then.omap_mcpdm_open_streams.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %omap_mcpdm_open_streams.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %15 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %16, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %14) #6, !srcloc !77
  %or2.i = or i32 %13, 257
  %17 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #6
  %18 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %19, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %17) #6, !srcloc !77
  br label %omap_mcpdm_open_streams.exit

omap_mcpdm_open_streams.exit:                     ; preds = %if.then.i, %if.then.omap_mcpdm_open_streams.exit_crit_edge
  %threshold.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %threshold.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %threshold.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %23 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %24, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %22) #6, !srcloc !77
  %threshold5.i = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 1, i32 1
  %25 = ptrtoint ptr %threshold5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %threshold5.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %28 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %29, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %27) #6, !srcloc !77
  %30 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %31, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 50331648) #6, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %omap_mcpdm_open_streams.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_mcpdm_dai_shutdown(ptr nocapture noundef readonly %substream, ptr noundef %dai) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  %cond2 = zext i1 %cmp to i32
  %mutex = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call3 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %io_base.i.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 68
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %tobool6.not = icmp ult i32 %8, 16777216
  br i1 %tobool6.not, label %if.then.if.end11_crit_edge, label %if.then7

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.then
  %9 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %10, i32 68
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #6, !srcloc !76
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %or.i = or i32 %12, 6144
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %14 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %15, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %13) #6, !srcloc !77
  %and.i = and i32 %or.i, -256
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %17 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %16) #6, !srcloc !77
  %and1.i = and i32 %12, -6400
  %19 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #6
  %20 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %21, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %19) #6, !srcloc !77
  %22 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %23, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i46, i32 167772160) #6, !srcloc !77
  %24 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %25, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 16777216) #6, !srcloc !77
  %26 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 655360) #6, !srcloc !77
  %28 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i11.i47 = getelementptr i8, ptr %29, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i47, i32 33554432) #6, !srcloc !77
  %dn_rx_offset.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %dn_rx_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dn_rx_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.then7.omap_mcpdm_close_streams.exit_crit_edge, label %if.then.i

if.then7.omap_mcpdm_close_streams.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %omap_mcpdm_close_streams.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i13.i48 = getelementptr i8, ptr %33, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i48, i32 0) #6, !srcloc !77
  br label %omap_mcpdm_close_streams.exit

omap_mcpdm_close_streams.exit:                    ; preds = %if.then.i, %if.then7.omap_mcpdm_close_streams.exit_crit_edge
  %config = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %config, align 4
  %arrayidx9 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx9, align 4
  br label %if.end11

if.end11:                                         ; preds = %omap_mcpdm_close_streams.exit, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %arrayidx12 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 5, i32 %cond2
  %36 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool13.not = icmp eq i32 %37, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %pm_qos_req = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 4
  tail call void @cpu_latency_qos_update_request(ptr noundef %pm_qos_req, i32 noundef %37) #6
  br label %if.end23

if.else:                                          ; preds = %if.end11
  %arrayidx18 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 5, i32 %cond
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool19.not = icmp eq i32 %39, 0
  br i1 %tobool19.not, label %if.else.if.end23_crit_edge, label %if.then20

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %pm_qos_req21 = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 4
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req21) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.else.if.end23_crit_edge, %if.then14
  %arrayidx25 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 5, i32 %cond
  %40 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx25, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_mcpdm_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream1, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 4, label %sw.bb3
    i32 3, label %entry.sw.bb8_crit_edge
    i32 2, label %entry.sw.bb10_crit_edge
    i32 1, label %entry.sw.bb12_crit_edge
  ]

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.bb8_crit_edge

sw.bb.sw.bb8_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.sw.bb8_crit_edge

sw.bb3.sw.bb8_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb3.sw.bb8_crit_edge, %sw.bb.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge
  %link_mask.1 = phi i32 [ 7, %entry.sw.bb8_crit_edge ], [ 15, %sw.bb3.sw.bb8_crit_edge ], [ 31, %sw.bb.sw.bb8_crit_edge ]
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb8, %entry.sw.bb10_crit_edge
  %link_mask.2 = phi i32 [ 3, %entry.sw.bb10_crit_edge ], [ %link_mask.1, %sw.bb8 ]
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb10, %entry.sw.bb12_crit_edge
  %link_mask.3 = phi i32 [ %7, %entry.sw.bb12_crit_edge ], [ %link_mask.2, %sw.bb10 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %9 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %config = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 7
  %arrayidx = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 %5
  %threshold15 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 %5, i32 1
  %10 = ptrtoint ptr %threshold15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %threshold15, align 4
  br i1 %cmp.i, label %if.then17, label %if.else

if.then17:                                        ; preds = %sw.bb12
  %shl = shl nuw nsw i32 %link_mask.3, 3
  %arrayidx19 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %if.then22, label %if.then17.if.end29_crit_edge

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %arrayidx19, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.then17.if.end29_crit_edge
  %sub = sub i32 15, %11
  %mul = mul i32 %sub, %7
  %maxburst = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 2
  %15 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %maxburst, align 4
  br label %if.end48

if.else:                                          ; preds = %sw.bb12
  %16 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool36.not = icmp eq i32 %17, 0
  br i1 %tobool36.not, label %if.then37, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 24, ptr %config, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.else.if.end44_crit_edge
  %mul45 = mul i32 %11, %7
  %maxburst46 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 2
  %19 = ptrtoint ptr %maxburst46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul45, ptr %maxburst46, align 4
  %sub47 = sub i32 15, %11
  br label %if.end48

if.end48:                                         ; preds = %if.end44, %if.end29
  %latency.0 = phi i32 [ %11, %if.end29 ], [ %sub47, %if.end44 ]
  %link_mask.4 = phi i32 [ %shl, %if.end29 ], [ %link_mask.3, %if.end44 ]
  %mul49 = mul i32 %latency.0, 1000000
  %arrayidx.i.i121 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx.i.i121 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i121, align 4
  %div = udiv i32 %mul49, %21
  %arrayidx52 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 5, i32 %5
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %mul49)
  %tobool55.not = icmp ugt i32 %21, %mul49
  %spec.select = select i1 %tobool55.not, i32 10, i32 %div
  %22 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %arrayidx52, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool63.not = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %link_mask.4)
  %cmp67.not = icmp eq i32 %24, %link_mask.4
  %or.cond = select i1 %tobool63.not, i1 true, i1 %cmp67.not
  br i1 %or.cond, label %if.end48.if.end69_crit_edge, label %if.then68

if.end48.if.end69_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then68:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %restart = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %restart to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %restart, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end48.if.end69_crit_edge
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %link_mask.4, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end69 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcpdm_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pm_qos_req1 = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  %cond3 = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 5, i32 %cond3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx7 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 5, i32 %cond
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp8 = icmp slt i32 %9, %7
  br i1 %cmp8, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx11 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 5, i32 %cond
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %latency.0 = phi i32 [ %11, %if.then ], [ %7, %lor.lhs.false.if.end_crit_edge ]
  %call12 = tail call zeroext i1 @cpu_latency_qos_request_active(ptr noundef %pm_qos_req1) #6
  br i1 %call12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cpu_latency_qos_update_request(ptr noundef %pm_qos_req1, i32 noundef %latency.0) #6
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %latency.0)
  %tobool14.not = icmp eq i32 %latency.0, 0
  br i1 %tobool14.not, label %if.else.if.end17_crit_edge, label %if.then15

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_req1, i32 noundef %latency.0) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else.if.end17_crit_edge, %if.then13
  %io_base.i.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 68
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %14)
  %tobool19.not = icmp ult i32 %14, 16777216
  br i1 %tobool19.not, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %16, i32 68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47) #6, !srcloc !76
  %config.i = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %config.i, align 4
  %arrayidx3.i = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3.i, align 4
  %or.i = or i32 %21, %19
  %22 = or i32 %17, 1572864
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %24 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %25, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %22) #6, !srcloc !77
  %or6.i = or i32 %or.i, %23
  %26 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #6
  %27 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %28, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %26) #6, !srcloc !77
  %and.i = and i32 %or6.i, -6145
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %30 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %31, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %29) #6, !srcloc !77
  br label %if.end26

if.else21:                                        ; preds = %if.end17
  %restart = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 9
  %32 = ptrtoint ptr %restart to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %restart, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool22.not = icmp eq i8 %33, 0
  br i1 %tobool22.not, label %if.else21.if.end26_crit_edge, label %if.then23

if.else21.if.end26_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %35, i32 68
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49) #6, !srcloc !76
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %or.i50 = or i32 %37, 6144
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i50) #6
  %39 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %40, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %38) #6, !srcloc !77
  %and.i51 = and i32 %or.i50, -256
  %41 = tail call i32 @llvm.bswap.i32(i32 %and.i51) #6
  %42 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %43, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %41) #6, !srcloc !77
  %and1.i = and i32 %37, -6400
  %44 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #6
  %45 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %46, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %44) #6, !srcloc !77
  %47 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %48, i32 68
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #6, !srcloc !76
  %config.i54 = getelementptr inbounds %struct.omap_mcpdm, ptr %3, i32 0, i32 7
  %50 = ptrtoint ptr %config.i54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %config.i54, align 4
  %arrayidx3.i55 = getelementptr %struct.omap_mcpdm, ptr %3, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %arrayidx3.i55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx3.i55, align 4
  %or.i56 = or i32 %53, %51
  %54 = or i32 %49, 1572864
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  %56 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i18.i57 = getelementptr i8, ptr %57, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i57, i32 %54) #6, !srcloc !77
  %or6.i58 = or i32 %or.i56, %55
  %58 = tail call i32 @llvm.bswap.i32(i32 %or6.i58) #6
  %59 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i20.i59 = getelementptr i8, ptr %60, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i59, i32 %58) #6, !srcloc !77
  %and.i60 = and i32 %or6.i58, -6145
  %61 = tail call i32 @llvm.bswap.i32(i32 %and.i60) #6
  %62 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i22.i61 = getelementptr i8, ptr %63, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i61, i32 %61) #6, !srcloc !77
  %64 = ptrtoint ptr %restart to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %restart, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.else21.if.end26_crit_edge, %if.then20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__ksymtab_omap_mcpdm_configure_dn_offsets, !1, !"__ksymtab_omap_mcpdm_configure_dn_offsets", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 539, i32 1}
!2 = !{ptr @__initcall__kmod_snd_soc_omap_mcpdm__247_600_asoc_mcpdm_driver_init6, !3, !"__initcall__kmod_snd_soc_omap_mcpdm__247_600_asoc_mcpdm_driver_init6", i1 false, i1 false}
!3 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 600, i32 1}
!4 = !{ptr @__exitcall_asoc_mcpdm_driver_exit, !3, !"__exitcall_asoc_mcpdm_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias248, !6, !"__UNIQUE_ID_alias248", i1 false, i1 false}
!6 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 602, i32 1}
!7 = !{ptr @__UNIQUE_ID_author249, !8, !"__UNIQUE_ID_author249", i1 false, i1 false}
!8 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 603, i32 1}
!9 = !{ptr @__UNIQUE_ID_description250, !10, !"__UNIQUE_ID_description250", i1 false, i1 false}
!10 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 604, i32 1}
!11 = !{ptr @__UNIQUE_ID_file251, !12, !"__UNIQUE_ID_file251", i1 false, i1 false}
!12 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 605, i32 1}
!13 = !{ptr @__UNIQUE_ID_license252, !12, !"__UNIQUE_ID_license252", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 593, i32 11}
!16 = !{ptr @asoc_mcpdm_driver, !17, !"asoc_mcpdm_driver", i1 false, i1 false}
!17 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 591, i32 31}
!18 = !{ptr @asoc_mcpdm_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 553, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 555, i32 59}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 562, i32 35}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 563, i32 35}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 565, i32 59}
!29 = !{ptr @omap_mcpdm_component, !30, !"omap_mcpdm_component", i1 false, i1 false}
!30 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 526, i32 46}
!31 = !{ptr @omap_mcpdm_dai, !32, !"omap_mcpdm_dai", i1 false, i1 false}
!32 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 504, i32 34}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 425, i32 59}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 431, i32 3}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @omap_mcpdm_probe._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @omap_mcpdm_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 229, i32 3}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug241, !44, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 232, i32 3}
!50 = !{ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug242, !49, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 235, i32 3}
!53 = !{ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug243, !52, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 238, i32 3}
!56 = !{ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug244, !55, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 241, i32 3}
!59 = !{ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug245, !58, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 244, i32 3}
!62 = !{ptr @omap_mcpdm_irq_handler.__UNIQUE_ID_ddebug246, !61, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!63 = !{ptr @omap_mcpdm_dai_ops, !64, !"omap_mcpdm_dai_ops", i1 false, i1 false}
!64 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 407, i32 37}
!65 = !{ptr @omap_mcpdm_of_match, !66, !"omap_mcpdm_of_match", i1 false, i1 false}
!66 = !{!"../sound/soc/ti/omap-mcpdm.c", i32 585, i32 34}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 4887372}
!77 = !{i64 4886954}
!78 = !{i64 2148968156, i64 2148968161, i64 2148968174, i64 2148968218, i64 2148968252, i64 2148968273}
!79 = !{i8 0, i8 2}
