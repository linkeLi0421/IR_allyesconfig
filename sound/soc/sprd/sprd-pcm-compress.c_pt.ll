; ModuleID = '/llk/IR_all_yes/sound/soc/sprd/sprd-pcm-compress.c_pt.bc'
source_filename = "../sound/soc/sprd/sprd-pcm-compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_compress_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sprd_compr_callback = type { ptr, ptr }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.sprd_compr_stream = type { ptr, ptr, [2 x %struct.sprd_compr_dma], i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.sprd_compr_dma = type { ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_compr_runtime = type { i32, ptr, ptr, i64, i32, i32, i64, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, ptr }
%struct.sprd_compr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sprd_compr_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_compr_params = type { %struct.snd_compressed_buffer, %struct.snd_codec, i8 }
%struct.snd_compressed_buffer = type { i32, i32 }
%struct.snd_codec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_codec_options, [3 x i32] }
%union.snd_codec_options = type { %struct.snd_enc_generic }
%struct.snd_enc_generic = type { i32, [15 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.snd_compr_tstamp = type { i32, i32, i32, i32, i32 }
%struct.sprd_compr_playinfo = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_compr_caps = type { i32, i32, i32, i32, i32, i32, [32 x i32], [11 x i32] }
%struct.snd_compr_codec_caps = type { i32, i32, [32 x %struct.snd_codec_desc] }
%struct.snd_codec_desc = type { i32, [32 x i32], i32, [32 x i32], i32, i32, i32, i32, i32, i32, [15 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.sprd_dma_linklist = type { i32, i32, i32 }
%struct.sprd_compr_data = type { ptr, ptr }
%struct.sprd_pcm_dma_params = type { [2 x i32], [2 x i32], [2 x i32], [2 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@sprd_platform_compress_ops = dso_local constant { %struct.snd_compress_ops, [44 x i8] } { %struct.snd_compress_ops { ptr @sprd_platform_compr_open, ptr @sprd_platform_compr_free, ptr @sprd_platform_compr_set_params, ptr null, ptr null, ptr null, ptr @sprd_platform_compr_trigger, ptr @sprd_platform_compr_pointer, ptr @sprd_platform_compr_copy, ptr null, ptr null, ptr @sprd_platform_compr_get_caps, ptr @sprd_platform_compr_get_codec_caps }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description242 = internal constant [75 x i8] c"snd_soc_sprd_platform.description=Spreadtrum ASoC Compress Platform Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [64 x i8] c"snd_soc_sprd_platform.file=sound/soc/sprd/snd-soc-sprd-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [37 x i8] c"snd_soc_sprd_platform.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [55 x i8] c"snd_soc_sprd_platform.alias=platform:compress-platform\00", section ".modinfo", align 1
@sprd_platform_compr_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to open compress platform: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sprd_platform_compr_open\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sound/soc/sprd/sprd-pcm-compress.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_platform_compr_open._entry_ptr = internal global ptr @sprd_platform_compr_open._entry, section ".printk_index", align 4
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/sound/compress_driver.h\00", [32 x i8] zeroinitializer }, align 32
@sprd_platform_compr_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to config stage 1 DMA: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sprd_platform_compr_set_params\00", [33 x i8] zeroinitializer }, align 32
@sprd_platform_compr_set_params._entry_ptr = internal global ptr @sprd_platform_compr_set_params._entry, section ".printk_index", align 4
@sprd_platform_compr_set_params._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to config stage 0 DMA: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sprd_platform_compr_set_params._entry_ptr.10 = internal global ptr @sprd_platform_compr_set_params._entry.8, section ".printk_index", align 4
@sprd_platform_compr_set_params._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 302, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set parameters: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sprd_platform_compr_set_params._entry_ptr.13 = internal global ptr @sprd_platform_compr_set_params._entry.11, section ".printk_index", align 4
@sprd_platform_compr_dma_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no dma parameters setting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sprd_platform_compr_dma_config\00", [33 x i8] zeroinitializer }, align 32
@sprd_platform_compr_dma_config._entry_ptr = internal global ptr @sprd_platform_compr_dma_config._entry, section ".printk_index", align 4
@sprd_platform_compr_dma_config._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request dma channel\0A\00", [33 x i8] zeroinitializer }, align 32
@sprd_platform_compr_dma_config._entry_ptr.18 = internal global ptr @sprd_platform_compr_dma_config._entry.16, section ".printk_index", align 4
@sprd_platform_compr_dma_config._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set slave configuration: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sprd_platform_compr_dma_config._entry_ptr.21 = internal global ptr @sprd_platform_compr_dma_config._entry.19, section ".printk_index", align 4
@sprd_platform_compr_dma_config._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to prepare slave sg\0A\00", [36 x i8] zeroinitializer }, align 32
@sprd_platform_compr_dma_config._entry_ptr.24 = internal global ptr @sprd_platform_compr_dma_config._entry.22, section ".printk_index", align 4
@sprd_platform_compr_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 429, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported compress direction\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sprd_platform_compr_trigger\00", [36 x i8] zeroinitializer }, align 32
@sprd_platform_compr_trigger._entry_ptr = internal global ptr @sprd_platform_compr_trigger._entry, section ".printk_index", align 4
@sprd_platform_compr_trigger._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to submit request: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sprd_platform_compr_trigger._entry_ptr.29 = internal global ptr @sprd_platform_compr_trigger._entry.27, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"sprd_platform_compress_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 658, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 375, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [35 x i8] c"../include/sound/compress_driver.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 198, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 282, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 288, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 302, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 152, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 159, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 229, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 242, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 429, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private constant [38 x i8] c"../sound/soc/sprd/sprd-pcm-compress.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 444, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 230, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 214, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 156, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @sprd_platform_compr_dma_config._entry, ptr @sprd_platform_compr_dma_config._entry.16, ptr @sprd_platform_compr_dma_config._entry.19, ptr @sprd_platform_compr_dma_config._entry.22, ptr @sprd_platform_compr_dma_config._entry_ptr, ptr @sprd_platform_compr_dma_config._entry_ptr.18, ptr @sprd_platform_compr_dma_config._entry_ptr.21, ptr @sprd_platform_compr_dma_config._entry_ptr.24, ptr @sprd_platform_compr_open._entry, ptr @sprd_platform_compr_open._entry_ptr, ptr @sprd_platform_compr_set_params._entry, ptr @sprd_platform_compr_set_params._entry.11, ptr @sprd_platform_compr_set_params._entry.8, ptr @sprd_platform_compr_set_params._entry_ptr, ptr @sprd_platform_compr_set_params._entry_ptr.10, ptr @sprd_platform_compr_set_params._entry_ptr.13, ptr @sprd_platform_compr_trigger._entry, ptr @sprd_platform_compr_trigger._entry.27, ptr @sprd_platform_compr_trigger._entry_ptr, ptr @sprd_platform_compr_trigger._entry_ptr.29, ptr @sprd_platform_compress_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compress_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compr_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compr_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compr_set_params._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compr_set_params._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compr_dma_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compr_dma_config._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compr_dma_config._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compr_dma_config._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compr_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_compr_trigger._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_platform_compr_open(ptr nocapture noundef readonly %component, ptr noundef %cstream) #0 align 64 {
entry:
  %cb = alloca %struct.sprd_compr_callback, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb) #8
  %14 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %cb, align 4, !annotation !75
  %15 = getelementptr inbounds %struct.sprd_compr_callback, ptr %cb, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %15, align 4, !annotation !75
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %17 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %direction, align 4
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 18
  %19 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %5, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %5, i64 noundef 4294967295) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 156, i32 noundef 3520) #8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cstream, ptr %call.i, align 4
  %num_channels = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %num_channels, align 4
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %13, align 4
  %compr_ops = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %compr_ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %compr_ops, align 4
  %iram_buffer = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 4
  %call.i94 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 4, ptr noundef %5, i32 noundef 0, i32 noundef 33792, ptr noundef %iram_buffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp = icmp slt i32 %call.i94, 0
  br i1 %cmp, label %if.end7.err_iram_crit_edge, label %if.end11

if.end7.err_iram_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_iram

if.end11:                                         ; preds = %if.end7
  %area = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %area, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 33792
  %virt = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 2, i32 0, i32 4
  %27 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %virt, align 4
  %addr = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr, align 4
  %add = add i32 %29, 33792
  %phys = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %30 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %phys, align 4
  %add20 = add i32 %29, 34800
  %info_phys = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %info_phys to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add20, ptr %info_phys, align 4
  %add.ptr24 = getelementptr i8, ptr %26, i32 34800
  %info_area = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 7
  %32 = ptrtoint ptr %info_area to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr24, ptr %info_area, align 4
  %info_size = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %info_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %info_size, align 4
  %compr_buffer = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 5
  %call.i95 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %5, i32 noundef 0, i32 noundef 2098176, ptr noundef %compr_buffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp26 = icmp slt i32 %call.i95, 0
  br i1 %cmp26, label %if.end11.err_compr_crit_edge, label %if.end28

if.end11.err_compr_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_compr

if.end28:                                         ; preds = %if.end11
  %area30 = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %area30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %area30, align 4
  %add.ptr31 = getelementptr i8, ptr %35, i32 2098176
  %virt34 = getelementptr %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 2, i32 1, i32 4
  %36 = ptrtoint ptr %virt34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr31, ptr %virt34, align 4
  %addr36 = getelementptr inbounds %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 5, i32 2
  %37 = ptrtoint ptr %addr36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr36, align 4
  %add37 = add i32 %38, 2098176
  %phys40 = getelementptr %struct.sprd_compr_stream, ptr %call.i, i32 0, i32 2, i32 1, i32 3
  %39 = ptrtoint ptr %phys40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add37, ptr %phys40, align 4
  %40 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sprd_platform_compr_drain_notify, ptr %cb, align 4
  %41 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cstream, ptr %15, align 4
  %42 = ptrtoint ptr %compr_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %compr_ops, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call42 = call i32 %45(i32 noundef %18, ptr noundef nonnull %cb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %do.end

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %call42) #11
  call void @snd_dma_free_pages(ptr noundef %compr_buffer) #8
  br label %err_compr

if.end45:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %private_data46 = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %private_data46 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %private_data46, align 4
  br label %cleanup

err_compr:                                        ; preds = %do.end, %if.end11.err_compr_crit_edge
  %ret.0 = phi i32 [ %call.i95, %if.end11.err_compr_crit_edge ], [ %call42, %do.end ]
  call void @snd_dma_free_pages(ptr noundef %iram_buffer) #8
  br label %err_iram

err_iram:                                         ; preds = %err_compr, %if.end7.err_iram_crit_edge
  %ret.1 = phi i32 [ %call.i94, %if.end7.err_iram_crit_edge ], [ %ret.0, %err_compr ]
  call void @devm_kfree(ptr noundef %5, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_iram, %if.end45, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_iram ], [ 0, %if.end45 ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_platform_compr_free(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %cstream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  %num_channels = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16 = icmp sgt i32 %9, 0
  br i1 %cmp16, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %i.017
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %11) #8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_channels, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %compr_buffer = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 5
  tail call void @snd_dma_free_pages(ptr noundef %compr_buffer) #8
  %iram_buffer = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 4
  tail call void @snd_dma_free_pages(ptr noundef %iram_buffer) #8
  %compr_ops = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %compr_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %compr_ops, align 4
  %close = getelementptr inbounds %struct.sprd_compr_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %close, align 4
  %call = tail call i32 %18(i32 noundef %7) #8
  tail call void @devm_kfree(ptr noundef %5, ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_platform_compr_set_params(ptr nocapture noundef readonly %component, ptr noundef %cstream, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %compr_params = alloca %struct.sprd_compr_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %compr_params) #8
  %6 = call ptr @memset(ptr %compr_params, i32 0, i32 36)
  %call = tail call fastcc i32 @sprd_platform_compr_dma_config(ptr noundef %component, ptr noundef %cstream, ptr noundef %params, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @sprd_platform_compr_dma_config(ptr noundef %component, ptr noundef %cstream, ptr noundef %params, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %call3) #11
  br label %config_err

if.end9:                                          ; preds = %if.end
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %7 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %direction, align 4
  %9 = ptrtoint ptr %compr_params to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %compr_params, align 4
  %codec = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 1
  %sample_rate = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sample_rate, align 4
  %sample_rate11 = getelementptr inbounds %struct.sprd_compr_params, ptr %compr_params, i32 0, i32 2
  %12 = ptrtoint ptr %sample_rate11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sample_rate11, align 4
  %num_channels = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_channels, align 4
  %channels = getelementptr inbounds %struct.sprd_compr_params, ptr %compr_params, i32 0, i32 3
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %channels, align 4
  %info_phys = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %info_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %info_phys, align 4
  %info_phys12 = getelementptr inbounds %struct.sprd_compr_params, ptr %compr_params, i32 0, i32 7
  %18 = ptrtoint ptr %info_phys12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %info_phys12, align 4
  %info_size = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %info_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %info_size, align 4
  %info_size13 = getelementptr inbounds %struct.sprd_compr_params, ptr %compr_params, i32 0, i32 8
  %21 = ptrtoint ptr %info_size13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %info_size13, align 4
  %bit_rate = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %bit_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bit_rate, align 4
  %rate = getelementptr inbounds %struct.sprd_compr_params, ptr %compr_params, i32 0, i32 1
  %24 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rate, align 4
  %25 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %codec, align 4
  %format = getelementptr inbounds %struct.sprd_compr_params, ptr %compr_params, i32 0, i32 4
  %27 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %format, align 4
  %compr_ops = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %compr_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %compr_ops, align 4
  %set_params = getelementptr inbounds %struct.sprd_compr_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_params, align 4
  %call17 = call i32 %31(i32 noundef %8, ptr noundef nonnull %compr_params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end9.cleanup_crit_edge, label %do.end22

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end22:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %call17) #11
  %dma = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma, align 4
  call void @dma_release_channel(ptr noundef %33) #8
  br label %config_err

config_err:                                       ; preds = %do.end22, %do.end8
  %ret.0 = phi i32 [ %call3, %do.end8 ], [ %call17, %do.end22 ]
  %arrayidx25 = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx25, align 4
  call void @dma_release_channel(ptr noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %config_err, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %config_err ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %compr_params) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_platform_compr_trigger(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %cstream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %num_channels = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_channels, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %8 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.25) #11
  br label %cleanup93

if.end:                                           ; preds = %entry
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup93_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %for.cond34.preheader
    i32 5, label %if.end.sw.bb51_crit_edge
    i32 3, label %if.end.sw.bb51_crit_edge179
    i32 6, label %if.end.sw.bb70_crit_edge
    i32 4, label %if.end.sw.bb70_crit_edge180
    i32 9, label %if.end.sw.bb89_crit_edge
    i32 7, label %if.end.sw.bb89_crit_edge181
  ]

if.end.sw.bb89_crit_edge181:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb89

if.end.sw.bb89_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb89

if.end.sw.bb70_crit_edge180:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb70

if.end.sw.bb70_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb70

if.end.sw.bb51_crit_edge179:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb51

if.end.sw.bb51_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb51

if.end.cleanup93_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup93

for.cond34.preheader:                             ; preds = %if.end
  %i.2171 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2171)
  %cmp35172 = icmp sgt i32 %i.2171, -1
  br i1 %cmp35172, label %for.cond34.preheader.for.body36_crit_edge, label %for.cond34.preheader.for.end48_crit_edge

for.cond34.preheader.for.end48_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48

for.cond34.preheader.for.body36_crit_edge:        ; preds = %for.cond34.preheader
  br label %for.body36

sw.bb:                                            ; preds = %if.end
  %sub = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp4174 = icmp sgt i32 %sub, -1
  br i1 %cmp4174, label %sw.bb.for.body_crit_edge, label %sw.bb.for.end30_crit_edge

sw.bb.for.end30_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

for.cond18.preheader:                             ; preds = %for.inc
  br i1 %cmp4174, label %for.cond18.preheader.for.body20_crit_edge, label %for.cond18.preheader.for.end30_crit_edge

for.cond18.preheader.for.end30_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.cond18.preheader.for.body20_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %i.0175 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %sub, %sw.bb.for.body_crit_edge ]
  %desc = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %i.0175, i32 1
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_submit.i, align 4
  %call.i = tail call i32 %14(ptr noundef nonnull %12) #8
  %cookie = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %i.0175, i32 2
  %15 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool11.not = icmp sgt i32 %call.i, -1
  br i1 %tobool11.not, label %if.end7.for.inc_crit_edge, label %cleanup

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cleanup:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef %call.i) #11
  br label %cleanup93

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %i.0175, -1
  %cmp4 = icmp sgt i32 %i.0175, 0
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.cond18.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body20:                                       ; preds = %if.end27.for.body20_crit_edge, %for.cond18.preheader.for.body20_crit_edge
  %i.1178 = phi i32 [ %dec29, %if.end27.for.body20_crit_edge ], [ %sub, %for.cond18.preheader.for.body20_crit_edge ]
  %arrayidx23 = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %i.1178
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %17, null
  br i1 %tobool24.not, label %for.body20.if.end27_crit_edge, label %if.then25

for.body20.if.end27_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 50
  %20 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %21(ptr noundef nonnull %17) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body20.if.end27_crit_edge
  %dec29 = add nsw i32 %i.1178, -1
  %cmp19 = icmp sgt i32 %i.1178, 0
  br i1 %cmp19, label %if.end27.for.body20_crit_edge, label %if.end27.for.end30_crit_edge

if.end27.for.end30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

if.end27.for.body20_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20

for.end30:                                        ; preds = %if.end27.for.end30_crit_edge, %for.cond18.preheader.for.end30_crit_edge, %sw.bb.for.end30_crit_edge
  %compr_ops = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %compr_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %compr_ops, align 4
  %start = getelementptr inbounds %struct.sprd_compr_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %start, align 4
  %call31 = tail call i32 %25(i32 noundef 0) #8
  br label %cleanup93

for.body36:                                       ; preds = %if.end45.for.body36_crit_edge, %for.cond34.preheader.for.body36_crit_edge
  %i.2173 = phi i32 [ %i.2, %if.end45.for.body36_crit_edge ], [ %i.2171, %for.cond34.preheader.for.body36_crit_edge ]
  %arrayidx39 = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %i.2173
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx39, align 4
  %tobool41.not = icmp eq ptr %27, null
  br i1 %tobool41.not, label %for.body36.if.end45_crit_edge, label %if.then42

for.body36.if.end45_crit_edge:                    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %for.body36
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 47
  %30 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then42.if.end45_crit_edge, label %if.then.i

if.then42.if.end45_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %call.i155 = tail call i32 %31(ptr noundef nonnull %27) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then.i, %if.then42.if.end45_crit_edge, %for.body36.if.end45_crit_edge
  %i.2 = add i32 %i.2173, -1
  %cmp35 = icmp sgt i32 %i.2, -1
  br i1 %cmp35, label %if.end45.for.body36_crit_edge, label %if.end45.for.end48_crit_edge

if.end45.for.end48_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48

if.end45.for.body36_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

for.end48:                                        ; preds = %if.end45.for.end48_crit_edge, %for.cond34.preheader.for.end48_crit_edge
  %copied_total = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 9
  %compr_ops49 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 1
  %32 = call ptr @memset(ptr %copied_total, i32 0, i32 20)
  %33 = ptrtoint ptr %compr_ops49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %compr_ops49, align 4
  %stop = getelementptr inbounds %struct.sprd_compr_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stop, align 4
  %call50 = tail call i32 %36(i32 noundef 0) #8
  br label %cleanup93

sw.bb51:                                          ; preds = %if.end.sw.bb51_crit_edge, %if.end.sw.bb51_crit_edge179
  %i.3168 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.3168)
  %cmp54169 = icmp sgt i32 %i.3168, -1
  br i1 %cmp54169, label %sw.bb51.for.body55_crit_edge, label %sw.bb51.for.end67_crit_edge

sw.bb51.for.end67_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end67

sw.bb51.for.body55_crit_edge:                     ; preds = %sw.bb51
  br label %for.body55

for.body55:                                       ; preds = %if.end64.for.body55_crit_edge, %sw.bb51.for.body55_crit_edge
  %i.3170 = phi i32 [ %i.3, %if.end64.for.body55_crit_edge ], [ %i.3168, %sw.bb51.for.body55_crit_edge ]
  %arrayidx58 = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %i.3170
  %37 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx58, align 4
  %tobool60.not = icmp eq ptr %38, null
  br i1 %tobool60.not, label %for.body55.if.end64_crit_edge, label %if.then61

for.body55.if.end64_crit_edge:                    ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then61:                                        ; preds = %for.body55
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 45
  %41 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_pause.i, align 4
  %tobool.not.i156 = icmp eq ptr %42, null
  br i1 %tobool.not.i156, label %if.then61.if.end64_crit_edge, label %if.then.i158

if.then61.if.end64_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then.i158:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %call.i157 = tail call i32 %42(ptr noundef nonnull %38) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then.i158, %if.then61.if.end64_crit_edge, %for.body55.if.end64_crit_edge
  %i.3 = add i32 %i.3170, -1
  %cmp54 = icmp sgt i32 %i.3, -1
  br i1 %cmp54, label %if.end64.for.body55_crit_edge, label %if.end64.for.end67_crit_edge

if.end64.for.end67_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end67

if.end64.for.body55_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body55

for.end67:                                        ; preds = %if.end64.for.end67_crit_edge, %sw.bb51.for.end67_crit_edge
  %compr_ops68 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %compr_ops68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %compr_ops68, align 4
  %pause = getelementptr inbounds %struct.sprd_compr_ops, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pause, align 4
  %call69 = tail call i32 %46(i32 noundef 0) #8
  br label %cleanup93

sw.bb70:                                          ; preds = %if.end.sw.bb70_crit_edge, %if.end.sw.bb70_crit_edge180
  %i.4165 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.4165)
  %cmp73166 = icmp sgt i32 %i.4165, -1
  br i1 %cmp73166, label %sw.bb70.for.body74_crit_edge, label %sw.bb70.for.end86_crit_edge

sw.bb70.for.end86_crit_edge:                      ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

sw.bb70.for.body74_crit_edge:                     ; preds = %sw.bb70
  br label %for.body74

for.body74:                                       ; preds = %if.end83.for.body74_crit_edge, %sw.bb70.for.body74_crit_edge
  %i.4167 = phi i32 [ %i.4, %if.end83.for.body74_crit_edge ], [ %i.4165, %sw.bb70.for.body74_crit_edge ]
  %arrayidx77 = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %i.4167
  %47 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx77, align 4
  %tobool79.not = icmp eq ptr %48, null
  br i1 %tobool79.not, label %for.body74.if.end83_crit_edge, label %if.then80

for.body74.if.end83_crit_edge:                    ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then80:                                        ; preds = %for.body74
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %device_resume.i = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %device_resume.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device_resume.i, align 4
  %tobool.not.i159 = icmp eq ptr %52, null
  br i1 %tobool.not.i159, label %if.then80.if.end83_crit_edge, label %if.then.i161

if.then80.if.end83_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then.i161:                                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %call.i160 = tail call i32 %52(ptr noundef nonnull %48) #8
  br label %if.end83

if.end83:                                         ; preds = %if.then.i161, %if.then80.if.end83_crit_edge, %for.body74.if.end83_crit_edge
  %i.4 = add i32 %i.4167, -1
  %cmp73 = icmp sgt i32 %i.4, -1
  br i1 %cmp73, label %if.end83.for.body74_crit_edge, label %if.end83.for.end86_crit_edge

if.end83.for.end86_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

if.end83.for.body74_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body74

for.end86:                                        ; preds = %if.end83.for.end86_crit_edge, %sw.bb70.for.end86_crit_edge
  %compr_ops87 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 1
  %53 = ptrtoint ptr %compr_ops87 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %compr_ops87, align 4
  %pause_release = getelementptr inbounds %struct.sprd_compr_ops, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %pause_release to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pause_release, align 4
  %call88 = tail call i32 %56(i32 noundef 0) #8
  br label %cleanup93

sw.bb89:                                          ; preds = %if.end.sw.bb89_crit_edge, %if.end.sw.bb89_crit_edge181
  %compr_ops90 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 1
  %57 = ptrtoint ptr %compr_ops90 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %compr_ops90, align 4
  %drain = getelementptr inbounds %struct.sprd_compr_ops, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %drain to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %drain, align 4
  %received_total91 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 10
  %61 = ptrtoint ptr %received_total91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %received_total91, align 4
  %call92 = tail call i32 %60(i32 noundef %62) #8
  br label %cleanup93

cleanup93:                                        ; preds = %sw.bb89, %for.end86, %for.end67, %for.end48, %for.end30, %cleanup, %if.end.cleanup93_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ %call.i, %cleanup ], [ %call92, %sw.bb89 ], [ %call88, %for.end86 ], [ %call69, %for.end67 ], [ %call50, %for.end48 ], [ %call31, %for.end30 ], [ -22, %if.end.cleanup93_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_platform_compr_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %cstream, ptr nocapture noundef writeonly %tstamp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %info_area = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %info_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info_area, align 4
  %copied_total = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %copied_total to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %copied_total, align 4
  %copied_total2 = getelementptr inbounds %struct.snd_compr_tstamp, ptr %tstamp, i32 0, i32 1
  %8 = ptrtoint ptr %copied_total2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %copied_total2, align 4
  %current_data_offset = getelementptr inbounds %struct.sprd_compr_playinfo, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %current_data_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_data_offset, align 4
  %pcm_io_frames = getelementptr inbounds %struct.snd_compr_tstamp, ptr %tstamp, i32 0, i32 3
  %11 = ptrtoint ptr %pcm_io_frames to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pcm_io_frames, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_platform_compr_copy(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %cstream, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %received_stage0 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %received_stage0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %received_stage0, align 4
  %fragment_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fragment_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp = icmp ugt i32 %7, %5
  br i1 %cmp, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  %sub = sub i32 %7, %5
  %area = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %area, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp5.not = icmp slt i32 %sub, %count
  br i1 %cmp5.not, label %if.end8.i.i118, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !76

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #12, !srcloc !77
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count) #8
  %11 = tail call i32 @llvm.read_register.i32(metadata !65) #8
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !78
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %count) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !76

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %received_stage0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %received_stage0, align 4
  %add = add i32 %16, %count
  store i32 %add, ptr %received_stage0, align 4
  %copied_total = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 9
  br label %copy_done

if.end8.i.i118:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9.i.i117 = icmp slt i32 %sub, 0
  br i1 %cmp9.i.i117, label %land.rhs16.i.i120, label %if.then.i.i.i123

land.rhs16.i.i120:                                ; preds = %if.end8.i.i118
  %.b1.i.i119 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i119, label %land.rhs16.i.i120.cleanup_crit_edge, label %if.then27.i.i121, !prof !76

land.rhs16.i.i120.cleanup_crit_edge:              ; preds = %land.rhs16.i.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.i.i121:                                 ; preds = %land.rhs16.i.i120
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i123:                                 ; preds = %if.end8.i.i118
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %sub, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #8
  %call.i.i124 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i124, label %if.then.i.i.i123.if.end.i.i138_crit_edge, label %land.lhs.true.i.i128

if.then.i.i.i123.if.end.i.i138_crit_edge:         ; preds = %if.then.i.i.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i138

land.lhs.true.i.i128:                             ; preds = %if.then.i.i.i123
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %sub, i32 -1226833920) #12, !srcloc !77
  %asmresult.i.i126 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i126)
  %cmp.i6.i127 = icmp eq i32 %asmresult.i.i126, 0
  br i1 %cmp.i6.i127, label %if.then.i7.i135, label %land.lhs.true.i.i128.if.end.i.i138_crit_edge, !prof !76

land.lhs.true.i.i128.if.end.i.i138_crit_edge:     ; preds = %land.lhs.true.i.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i138

if.then.i7.i135:                                  ; preds = %land.lhs.true.i.i128
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i129 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %sub) #8
  %18 = tail call i32 @llvm.read_register.i32(metadata !65) #8
  %and.i.i.i.i.i.i130 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i130 to ptr
  %cpu_domain.i.i.i.i.i131 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i131) #6, !srcloc !78
  %and.i.i.i.i132 = and i32 %20, -13
  %or.i.i.i.i133 = or i32 %and.i.i.i.i132, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i133) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %call1.i.i.i134 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %sub) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  br label %if.end.i.i138

if.end.i.i138:                                    ; preds = %if.then.i7.i135, %land.lhs.true.i.i128.if.end.i.i138_crit_edge, %if.then.i.i.i123.if.end.i.i138_crit_edge
  %res.0.i.i136 = phi i32 [ %sub, %if.then.i.i.i123.if.end.i.i138_crit_edge ], [ %call1.i.i.i134, %if.then.i7.i135 ], [ %sub, %land.lhs.true.i.i128.if.end.i.i138_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i136)
  %tobool4.not.i.i137 = icmp eq i32 %res.0.i.i136, 0
  br i1 %tobool4.not.i.i137, label %if.end13, label %if.then11.i.i141, !prof !76

if.then11.i.i141:                                 ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i139 = sub i32 %sub, %res.0.i.i136
  %add.ptr.i.i140 = getelementptr i8, ptr %add.ptr, i32 %sub.i.i139
  %21 = call ptr @memset(ptr %add.ptr.i.i140, i32 0, i32 %res.0.i.i136)
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #10
  %sub14 = sub i32 %count, %sub
  %22 = ptrtoint ptr %received_stage0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %received_stage0, align 4
  %add16 = add i32 %23, %sub
  store i32 %add16, ptr %received_stage0, align 4
  %copied_total17 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %copied_total17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %copied_total17, align 4
  %add18 = add i32 %25, %sub
  store i32 %add18, ptr %copied_total17, align 4
  %add.ptr19 = getelementptr i8, ptr %buf, i32 %sub
  br label %if.end21

if.end21:                                         ; preds = %if.end13, %entry.if.end21_crit_edge
  %buf.addr.0 = phi ptr [ %add.ptr19, %if.end13 ], [ %buf, %entry.if.end21_crit_edge ]
  %data_count.0 = phi i32 [ %sub14, %if.end13 ], [ %count, %entry.if.end21_crit_edge ]
  %area22 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %area22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %area22, align 4
  %stage1_pointer = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 13
  %28 = ptrtoint ptr %stage1_pointer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stage1_pointer, align 4
  %add.ptr23 = getelementptr i8, ptr %27, i32 %29
  %bytes = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytes, align 4
  %sub26 = sub i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %data_count.0, i32 %sub26)
  %cmp27 = icmp ult i32 %data_count.0, %sub26
  br i1 %cmp27, label %if.end8.i.i151, label %if.end8.i.i184

if.end8.i.i151:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_count.0)
  %cmp9.i.i150 = icmp slt i32 %data_count.0, 0
  br i1 %cmp9.i.i150, label %land.rhs16.i.i153, label %if.then.i.i.i156

land.rhs16.i.i153:                                ; preds = %if.end8.i.i151
  %.b1.i.i152 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i152, label %land.rhs16.i.i153.cleanup_crit_edge, label %if.then27.i.i154, !prof !76

land.rhs16.i.i153.cleanup_crit_edge:              ; preds = %land.rhs16.i.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.i.i154:                                 ; preds = %land.rhs16.i.i153
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i156:                                 ; preds = %if.end8.i.i151
  tail call void @__check_object_size(ptr noundef %add.ptr23, i32 noundef %data_count.0, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #8
  %call.i.i157 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i157, label %if.then.i.i.i156.if.end.i.i171_crit_edge, label %land.lhs.true.i.i161

if.then.i.i.i156.if.end.i.i171_crit_edge:         ; preds = %if.then.i.i.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i171

land.lhs.true.i.i161:                             ; preds = %if.then.i.i.i156
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %data_count.0, i32 -1226833920) #12, !srcloc !77
  %asmresult.i.i159 = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i159)
  %cmp.i6.i160 = icmp eq i32 %asmresult.i.i159, 0
  br i1 %cmp.i6.i160, label %if.then.i7.i168, label %land.lhs.true.i.i161.if.end.i.i171_crit_edge, !prof !76

land.lhs.true.i.i161.if.end.i.i171_crit_edge:     ; preds = %land.lhs.true.i.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i171

if.then.i7.i168:                                  ; preds = %land.lhs.true.i.i161
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i162 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr23, i32 noundef %data_count.0) #8
  %33 = tail call i32 @llvm.read_register.i32(metadata !65) #8
  %and.i.i.i.i.i.i163 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i163 to ptr
  %cpu_domain.i.i.i.i.i164 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i164) #6, !srcloc !78
  %and.i.i.i.i165 = and i32 %35, -13
  %or.i.i.i.i166 = or i32 %and.i.i.i.i165, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i166) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %call1.i.i.i167 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr23, ptr noundef %buf.addr.0, i32 noundef %data_count.0) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  br label %if.end.i.i171

if.end.i.i171:                                    ; preds = %if.then.i7.i168, %land.lhs.true.i.i161.if.end.i.i171_crit_edge, %if.then.i.i.i156.if.end.i.i171_crit_edge
  %res.0.i.i169 = phi i32 [ %data_count.0, %if.then.i.i.i156.if.end.i.i171_crit_edge ], [ %call1.i.i.i167, %if.then.i7.i168 ], [ %data_count.0, %land.lhs.true.i.i161.if.end.i.i171_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i169)
  %tobool4.not.i.i170 = icmp eq i32 %res.0.i.i169, 0
  br i1 %tobool4.not.i.i170, label %if.end32, label %if.then11.i.i174, !prof !76

if.then11.i.i174:                                 ; preds = %if.end.i.i171
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i172 = sub i32 %data_count.0, %res.0.i.i169
  %add.ptr.i.i173 = getelementptr i8, ptr %add.ptr23, i32 %sub.i.i172
  %36 = call ptr @memset(ptr %add.ptr.i.i173, i32 0, i32 %res.0.i.i169)
  br label %cleanup

if.end32:                                         ; preds = %if.end.i.i171
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %stage1_pointer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stage1_pointer, align 4
  %add34 = add i32 %38, %data_count.0
  br label %if.end54

if.end8.i.i184:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26)
  %cmp9.i.i183 = icmp slt i32 %sub26, 0
  br i1 %cmp9.i.i183, label %land.rhs16.i.i186, label %if.then.i.i.i189

land.rhs16.i.i186:                                ; preds = %if.end8.i.i184
  %.b1.i.i185 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i185, label %land.rhs16.i.i186.cleanup_crit_edge, label %if.then27.i.i187, !prof !76

land.rhs16.i.i186.cleanup_crit_edge:              ; preds = %land.rhs16.i.i186
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.i.i187:                                 ; preds = %land.rhs16.i.i186
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i189:                                 ; preds = %if.end8.i.i184
  tail call void @__check_object_size(ptr noundef %add.ptr23, i32 noundef %sub26, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #8
  %call.i.i190 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i190, label %if.then.i.i.i189.if.end.i.i204_crit_edge, label %land.lhs.true.i.i194

if.then.i.i.i189.if.end.i.i204_crit_edge:         ; preds = %if.then.i.i.i189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i204

land.lhs.true.i.i194:                             ; preds = %if.then.i.i.i189
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %sub26, i32 -1226833920) #12, !srcloc !77
  %asmresult.i.i192 = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i192)
  %cmp.i6.i193 = icmp eq i32 %asmresult.i.i192, 0
  br i1 %cmp.i6.i193, label %if.then.i7.i201, label %land.lhs.true.i.i194.if.end.i.i204_crit_edge, !prof !76

land.lhs.true.i.i194.if.end.i.i204_crit_edge:     ; preds = %land.lhs.true.i.i194
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i204

if.then.i7.i201:                                  ; preds = %land.lhs.true.i.i194
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i195 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr23, i32 noundef %sub26) #8
  %40 = tail call i32 @llvm.read_register.i32(metadata !65) #8
  %and.i.i.i.i.i.i196 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i196 to ptr
  %cpu_domain.i.i.i.i.i197 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i197) #6, !srcloc !78
  %and.i.i.i.i198 = and i32 %42, -13
  %or.i.i.i.i199 = or i32 %and.i.i.i.i198, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i199) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %call1.i.i.i200 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr23, ptr noundef %buf.addr.0, i32 noundef %sub26) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  br label %if.end.i.i204

if.end.i.i204:                                    ; preds = %if.then.i7.i201, %land.lhs.true.i.i194.if.end.i.i204_crit_edge, %if.then.i.i.i189.if.end.i.i204_crit_edge
  %res.0.i.i202 = phi i32 [ %sub26, %if.then.i.i.i189.if.end.i.i204_crit_edge ], [ %call1.i.i.i200, %if.then.i7.i201 ], [ %sub26, %land.lhs.true.i.i194.if.end.i.i204_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i202)
  %tobool4.not.i.i203 = icmp eq i32 %res.0.i.i202, 0
  br i1 %tobool4.not.i.i203, label %if.end43, label %if.then11.i.i207, !prof !76

if.then11.i.i207:                                 ; preds = %if.end.i.i204
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i205 = sub i32 %sub26, %res.0.i.i202
  %add.ptr.i.i206 = getelementptr i8, ptr %add.ptr23, i32 %sub.i.i205
  %43 = call ptr @memset(ptr %add.ptr.i.i206, i32 0, i32 %res.0.i.i202)
  br label %cleanup

if.end43:                                         ; preds = %if.end.i.i204
  %44 = ptrtoint ptr %area22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %area22, align 4
  %add.ptr46 = getelementptr i8, ptr %buf.addr.0, i32 %sub26
  %sub47 = sub i32 %data_count.0, %sub26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub47)
  %cmp9.i.i216 = icmp slt i32 %sub47, 0
  br i1 %cmp9.i.i216, label %land.rhs16.i.i219, label %if.then.i.i.i222

land.rhs16.i.i219:                                ; preds = %if.end43
  %.b1.i.i218 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i218, label %land.rhs16.i.i219.cleanup_crit_edge, label %if.then27.i.i220, !prof !76

land.rhs16.i.i219.cleanup_crit_edge:              ; preds = %land.rhs16.i.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.i.i220:                                 ; preds = %land.rhs16.i.i219
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i222:                                 ; preds = %if.end43
  tail call void @__check_object_size(ptr noundef %45, i32 noundef %sub47, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #8
  %call.i.i223 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i223, label %if.then.i.i.i222.if.end.i.i237_crit_edge, label %land.lhs.true.i.i227

if.then.i.i.i222.if.end.i.i237_crit_edge:         ; preds = %if.then.i.i.i222
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i237

land.lhs.true.i.i227:                             ; preds = %if.then.i.i.i222
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr46, i32 %sub47, i32 -1226833920) #12, !srcloc !77
  %asmresult.i.i225 = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i225)
  %cmp.i6.i226 = icmp eq i32 %asmresult.i.i225, 0
  br i1 %cmp.i6.i226, label %if.then.i7.i234, label %land.lhs.true.i.i227.if.end.i.i237_crit_edge, !prof !76

land.lhs.true.i.i227.if.end.i.i237_crit_edge:     ; preds = %land.lhs.true.i.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i237

if.then.i7.i234:                                  ; preds = %land.lhs.true.i.i227
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i228 = tail call zeroext i1 @__kasan_check_write(ptr noundef %45, i32 noundef %sub47) #8
  %47 = tail call i32 @llvm.read_register.i32(metadata !65) #8
  %and.i.i.i.i.i.i229 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i229 to ptr
  %cpu_domain.i.i.i.i.i230 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i230) #6, !srcloc !78
  %and.i.i.i.i231 = and i32 %49, -13
  %or.i.i.i.i232 = or i32 %and.i.i.i.i231, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i232) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %call1.i.i.i233 = tail call i32 @arm_copy_from_user(ptr noundef %45, ptr noundef %add.ptr46, i32 noundef %sub47) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  br label %if.end.i.i237

if.end.i.i237:                                    ; preds = %if.then.i7.i234, %land.lhs.true.i.i227.if.end.i.i237_crit_edge, %if.then.i.i.i222.if.end.i.i237_crit_edge
  %res.0.i.i235 = phi i32 [ %sub47, %if.then.i.i.i222.if.end.i.i237_crit_edge ], [ %call1.i.i.i233, %if.then.i7.i234 ], [ %sub47, %land.lhs.true.i.i227.if.end.i.i237_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i235)
  %tobool4.not.i.i236 = icmp eq i32 %res.0.i.i235, 0
  br i1 %tobool4.not.i.i236, label %if.end.i.i237.if.end54_crit_edge, label %if.then11.i.i240, !prof !76

if.end.i.i237.if.end54_crit_edge:                 ; preds = %if.end.i.i237
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then11.i.i240:                                 ; preds = %if.end.i.i237
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i238 = sub i32 %sub47, %res.0.i.i235
  %add.ptr.i.i239 = getelementptr i8, ptr %45, i32 %sub.i.i238
  %50 = call ptr @memset(ptr %add.ptr.i.i239, i32 0, i32 %res.0.i.i235)
  br label %cleanup

if.end54:                                         ; preds = %if.end.i.i237.if.end54_crit_edge, %if.end32
  %storemerge = phi i32 [ %add34, %if.end32 ], [ %sub47, %if.end.i.i237.if.end54_crit_edge ]
  %51 = ptrtoint ptr %stage1_pointer to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %storemerge, ptr %stage1_pointer, align 4
  %received_stage1 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 12
  br label %copy_done

copy_done:                                        ; preds = %if.end54, %if.end
  %received_stage1.sink256 = phi ptr [ %received_stage1, %if.end54 ], [ %copied_total, %if.end ]
  %data_count.0.sink = phi i32 [ %data_count.0, %if.end54 ], [ %count, %if.end ]
  %52 = ptrtoint ptr %received_stage1.sink256 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %received_stage1.sink256, align 4
  %add55 = add i32 %53, %data_count.0.sink
  store i32 %add55, ptr %received_stage1.sink256, align 4
  %received_total = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 10
  %54 = ptrtoint ptr %received_total to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %received_total, align 4
  %add56 = add i32 %55, %count
  store i32 %add56, ptr %received_total, align 4
  br label %cleanup

cleanup:                                          ; preds = %copy_done, %if.then11.i.i240, %if.then27.i.i220, %land.rhs16.i.i219.cleanup_crit_edge, %if.then11.i.i207, %if.then27.i.i187, %land.rhs16.i.i186.cleanup_crit_edge, %if.then11.i.i174, %if.then27.i.i154, %land.rhs16.i.i153.cleanup_crit_edge, %if.then11.i.i141, %if.then27.i.i121, %land.rhs16.i.i120.cleanup_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %copy_done ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i141 ], [ -14, %if.then27.i.i121 ], [ -14, %land.rhs16.i.i120.cleanup_crit_edge ], [ -14, %if.then11.i.i174 ], [ -14, %if.then27.i.i154 ], [ -14, %land.rhs16.i.i153.cleanup_crit_edge ], [ -14, %if.then11.i.i207 ], [ -14, %if.then27.i.i187 ], [ -14, %land.rhs16.i.i186.cleanup_crit_edge ], [ -14, %if.then11.i.i240 ], [ -14, %if.then27.i.i220 ], [ -14, %land.rhs16.i.i219.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_platform_compr_get_caps(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %cstream, ptr nocapture noundef writeonly %caps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %0 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direction, align 4
  %direction1 = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 1
  %2 = ptrtoint ptr %direction1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %direction1, align 4
  %min_fragment_size = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 2
  %3 = ptrtoint ptr %min_fragment_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8192, ptr %min_fragment_size, align 4
  %max_fragment_size = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 3
  %4 = ptrtoint ptr %max_fragment_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 131072, ptr %max_fragment_size, align 4
  %min_fragments = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 4
  %5 = ptrtoint ptr %min_fragments to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %min_fragments, align 4
  %max_fragments = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 5
  %6 = ptrtoint ptr %max_fragments to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 64, ptr %max_fragments, align 4
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %caps, align 4
  %codecs = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 6
  %8 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %codecs, align 4
  %arrayidx3 = getelementptr %struct.snd_compr_caps, ptr %caps, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %arrayidx3, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_platform_compr_get_codec_caps(ptr nocapture noundef readnone %component, ptr nocapture noundef readnone %cstream, ptr nocapture noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %codec, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 6, label %sw.bb17
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_descriptors = getelementptr inbounds %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 1
  %3 = ptrtoint ptr %num_descriptors to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %num_descriptors, align 4
  %descriptor = getelementptr inbounds %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2
  %4 = ptrtoint ptr %descriptor to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %descriptor, align 4
  %bit_rate = getelementptr inbounds %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 0, i32 3
  %5 = ptrtoint ptr %bit_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 320, ptr %bit_rate, align 4
  %arrayidx8 = getelementptr %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 128, ptr %arrayidx8, align 4
  %num_bitrates = getelementptr inbounds %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %num_bitrates to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %num_bitrates, align 4
  %profiles = getelementptr inbounds %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 0, i32 6
  %8 = ptrtoint ptr %profiles to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %profiles, align 4
  %modes = getelementptr inbounds %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 0, i32 7
  %9 = ptrtoint ptr %modes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %modes, align 4
  %formats = getelementptr inbounds %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 0, i32 8
  br label %return.sink.split

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_descriptors18 = getelementptr inbounds %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 1
  %10 = ptrtoint ptr %num_descriptors18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %num_descriptors18, align 4
  %arrayidx20 = getelementptr %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %arrayidx20, align 4
  %bit_rate24 = getelementptr %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 1, i32 3
  %12 = ptrtoint ptr %bit_rate24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 320, ptr %bit_rate24, align 4
  %arrayidx29 = getelementptr %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 1, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %arrayidx29, align 4
  %num_bitrates32 = getelementptr %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 1, i32 4
  %14 = ptrtoint ptr %num_bitrates32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %num_bitrates32, align 4
  %profiles35 = getelementptr %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 1, i32 6
  %15 = ptrtoint ptr %profiles35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %profiles35, align 4
  %modes38 = getelementptr %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 1, i32 7
  %16 = ptrtoint ptr %modes38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %modes38, align 4
  %formats41 = getelementptr %struct.snd_compr_codec_caps, ptr %codec, i32 0, i32 2, i32 1, i32 8
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb17, %sw.bb
  %formats.sink = phi ptr [ %formats, %sw.bb ], [ %formats41, %sw.bb17 ]
  %17 = ptrtoint ptr %formats.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %formats.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_platform_compr_drain_notify(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %info_area = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %info_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info_area, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  %tobool.not.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.critedge.i, !prof !81

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 198, i32 noundef 9, ptr noundef null) #8
  br label %snd_compr_drain_notify.exit

if.end23.critedge.i:                              ; preds = %entry
  %partial_drain.i = getelementptr inbounds %struct.snd_compr_stream, ptr %arg, i32 0, i32 8
  %7 = ptrtoint ptr %partial_drain.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %partial_drain.i, align 2, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool24.not.i = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime1, align 4
  br i1 %tobool24.not.i, label %if.else.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %10, align 8
  %12 = ptrtoint ptr %partial_drain.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %partial_drain.i, align 2
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %10, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then25.i
  %14 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime1, align 4
  %sleep.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %15, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %snd_compr_drain_notify.exit

snd_compr_drain_notify.exit:                      ; preds = %if.end29.i, %do.end.i
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_platform_compr_dma_config(ptr nocapture noundef readonly %component, ptr noundef %cstream, ptr nocapture noundef readonly %params, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.dma_slave_config, align 4
  %link = alloca %struct.sprd_dma_linklist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data2 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 4
  %dev3 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %dma_params4 = getelementptr inbounds %struct.sprd_compr_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dma_params4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_params4, align 4
  %arrayidx6 = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %channel
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #8
  %18 = call ptr @memset(ptr %config, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %link) #8
  %19 = call ptr @memset(ptr %link, i32 0, i32 12)
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx7 = getelementptr %struct.sprd_pcm_dma_params, ptr %17, i32 0, i32 3, i32 %channel
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7, align 4
  %call.i = tail call ptr @dma_request_chan(ptr noundef %7, ptr noundef %21) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spec.select.i, ptr %arrayidx6, align 4
  %tobool10.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool10.not, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 40, i32 noundef 3520) #8
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %if.end15.sg_err_crit_edge, label %if.end19

if.end15.sg_err_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sg_err

if.end19:                                         ; preds = %if.end15
  %23 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %channel, label %if.end19.config_err_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
  ]

if.end19.config_err_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %config_err

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %params, align 4
  %div134 = lshr i32 %25, 11
  %addr = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 4, i32 2
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %params, align 4
  %fragments = getelementptr inbounds %struct.snd_compressed_buffer, ptr %params, i32 0, i32 1
  %28 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fragments, align 4
  %addr25 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 5, i32 2
  %addr27 = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 4, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb
  %bus_width.0 = phi i32 [ 2, %sw.bb21 ], [ 4, %sw.bb ]
  %period.0 = phi i32 [ %27, %sw.bb21 ], [ 2048, %sw.bb ]
  %period_cnt.0 = phi i32 [ %29, %sw.bb21 ], [ %div134, %sw.bb ]
  %src_addr.0.in = phi ptr [ %addr25, %sw.bb21 ], [ %addr, %sw.bb ]
  %dst_addr.0.in = phi ptr [ %addr27, %sw.bb21 ], [ %17, %sw.bb ]
  %flags.0 = phi i32 [ 67305476, %sw.bb21 ], [ 33751044, %sw.bb ]
  %30 = ptrtoint ptr %dst_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %dst_addr.0 = load i32, ptr %dst_addr.0.in, align 4
  %31 = ptrtoint ptr %src_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %src_addr.0 = load i32, ptr %src_addr.0.in, align 4
  %mul = mul i32 %period_cnt.0, %period.0
  %trans_len = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %channel, i32 5
  %32 = ptrtoint ptr %trans_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %trans_len, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 5
  %33 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %period.0, ptr %src_maxburst, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %34 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bus_width.0, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %35 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %bus_width.0, ptr %dst_addr_width, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %36 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp = icmp eq i32 %37, 0
  %dst_addr.0.sink = select i1 %cmp, i32 %src_addr.0, i32 %dst_addr.0
  %src_addr.0.sink = select i1 %cmp, i32 %dst_addr.0, i32 %src_addr.0
  %dir.0 = select i1 %cmp, i32 1, i32 2
  %38 = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %dst_addr.0.sink, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %src_addr.0.sink, ptr %40, align 4
  tail call void @sg_init_table(ptr noundef nonnull %call5.i.i, i32 noundef 2) #8
  %42 = ptrtoint ptr %trans_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %trans_len, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %call5.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %call5.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %dst_addr.0, ptr %dma_address, align 4
  %46 = load i32, ptr %trans_len, align 4
  %dma_length.1 = getelementptr %struct.scatterlist, ptr %call5.i.i, i32 1, i32 4
  %47 = ptrtoint ptr %dma_length.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %dma_length.1, align 4
  %dma_address.1 = getelementptr %struct.scatterlist, ptr %call5.i.i, i32 1, i32 3
  %48 = ptrtoint ptr %dma_address.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %dst_addr.0, ptr %dma_address.1, align 4
  %virt = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %channel, i32 4
  %49 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %virt, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %link, align 4
  %phys = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %channel, i32 3
  %53 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phys, align 4
  %phy_addr = getelementptr inbounds %struct.sprd_dma_linklist, ptr %link, i32 0, i32 1
  %55 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %phy_addr, align 4
  %56 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx6, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 44
  %60 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %sw.epilog.do.end42_crit_edge, label %dmaengine_slave_config.exit

sw.epilog.do.end42_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

dmaengine_slave_config.exit:                      ; preds = %sw.epilog
  %call.i135 = call i32 %61(ptr noundef %57, ptr noundef nonnull %config) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool38.not = icmp eq i32 %call.i135, 0
  br i1 %tobool38.not, label %if.end43, label %dmaengine_slave_config.exit.do.end42_crit_edge

dmaengine_slave_config.exit.do.end42_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

do.end42:                                         ; preds = %dmaengine_slave_config.exit.do.end42_crit_edge, %sw.epilog.do.end42_crit_edge
  %retval.0.i138 = phi i32 [ %call.i135, %dmaengine_slave_config.exit.do.end42_crit_edge ], [ -38, %sw.epilog.do.end42_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i138) #11
  br label %config_err

if.end43:                                         ; preds = %dmaengine_slave_config.exit
  %62 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx6, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 39
  %66 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device_prep_slave_sg, align 4
  %call46 = call ptr %67(ptr noundef %63, ptr noundef nonnull %call5.i.i, i32 noundef 2, i32 noundef %dir.0, i32 noundef %flags.0, ptr noundef nonnull %link) #8
  %desc = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 %channel, i32 1
  %68 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call46, ptr %desc, align 4
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %do.end52, label %if.end53

do.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23) #11
  br label %config_err

if.end53:                                         ; preds = %if.end43
  %no_wake_mode = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 2
  %69 = ptrtoint ptr %no_wake_mode to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %no_wake_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool54.not = icmp eq i8 %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp55 = icmp eq i32 %channel, 1
  %or.cond = and i1 %cmp55, %tobool54.not
  br i1 %or.cond, label %if.then56, label %if.end53.if.end59_crit_edge

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call46, i32 0, i32 6
  %71 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @sprd_platform_compr_dma_complete, ptr %callback, align 4
  %72 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %cstream, ptr %callback_param, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53.if.end59_crit_edge
  call void @devm_kfree(ptr noundef %7, ptr noundef nonnull %call5.i.i) #8
  br label %cleanup

config_err:                                       ; preds = %do.end52, %do.end42, %if.end19.config_err_crit_edge
  %ret.0 = phi i32 [ %retval.0.i138, %do.end42 ], [ -12, %do.end52 ], [ -22, %if.end19.config_err_crit_edge ]
  call void @devm_kfree(ptr noundef %7, ptr noundef nonnull %call5.i.i) #8
  br label %sg_err

sg_err:                                           ; preds = %config_err, %if.end15.sg_err_crit_edge
  %ret.1 = phi i32 [ %ret.0, %config_err ], [ -12, %if.end15.sg_err_crit_edge ]
  %75 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx6, align 4
  call void @dma_release_channel(ptr noundef %76) #8
  br label %cleanup

cleanup:                                          ; preds = %sg_err, %if.end59, %do.end14, %do.end
  %retval.0 = phi i32 [ %ret.1, %sg_err ], [ 0, %if.end59 ], [ -19, %do.end14 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %link) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_platform_compr_dma_complete(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %trans_len = getelementptr %struct.sprd_compr_stream, ptr %3, i32 0, i32 2, i32 1, i32 5
  %4 = ptrtoint ptr %trans_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trans_len, align 4
  %copied_total = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %copied_total to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %copied_total, align 4
  %add = add i32 %7, %5
  %received_total = getelementptr inbounds %struct.sprd_compr_stream, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %received_total to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %received_total, align 4
  %10 = tail call i32 @llvm.smin.i32(i32 %add, i32 %9)
  %11 = ptrtoint ptr %copied_total to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %copied_total, align 4
  %12 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime1, align 4
  %sleep.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %13, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @sprd_platform_compress_ops, !1, !"sprd_platform_compress_ops", i1 false, i1 false}
!1 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 658, i32 31}
!2 = !{ptr @__UNIQUE_ID_description242, !3, !"__UNIQUE_ID_description242", i1 false, i1 false}
!3 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 669, i32 1}
!4 = !{ptr @__UNIQUE_ID_file243, !5, !"__UNIQUE_ID_file243", i1 false, i1 false}
!5 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 670, i32 1}
!6 = !{ptr @__UNIQUE_ID_license244, !5, !"__UNIQUE_ID_license244", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias245, !8, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!8 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 671, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 375, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sprd_platform_compr_open._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @sprd_platform_compr_open._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/sound/compress_driver.h", i32 198, i32 6}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 282, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sprd_platform_compr_set_params._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @sprd_platform_compr_set_params._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 288, i32 3}
!26 = !{ptr @sprd_platform_compr_set_params._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sprd_platform_compr_set_params._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 302, i32 3}
!30 = !{ptr @sprd_platform_compr_set_params._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sprd_platform_compr_set_params._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 152, i32 3}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sprd_platform_compr_dma_config._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @sprd_platform_compr_dma_config._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 159, i32 3}
!39 = !{ptr @sprd_platform_compr_dma_config._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sprd_platform_compr_dma_config._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 229, i32 3}
!43 = !{ptr @sprd_platform_compr_dma_config._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sprd_platform_compr_dma_config._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 242, i32 3}
!47 = !{ptr @sprd_platform_compr_dma_config._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sprd_platform_compr_dma_config._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 429, i32 3}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sprd_platform_compr_trigger._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sprd_platform_compr_trigger._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sprd/sprd-pcm-compress.c", i32 444, i32 5}
!56 = !{ptr @sprd_platform_compr_trigger._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sprd_platform_compr_trigger._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2153230043, i64 2153230068}
!78 = !{i64 5725598}
!79 = !{i64 5725795}
!80 = !{i64 2153211028}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i8 0, i8 2}
