; ModuleID = '/llk/IR_all_yes/sound/soc/sof/mediatek/mt8195/mt8195.c_pt.bc'
source_filename = "../sound/soc/sof/mediatek/mt8195/mt8195.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.dsp_arch_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adsp_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_adsp_chip_info = type { i32, i32, i32, i32, [3 x i32], i32, i32, i32, ptr, ptr, ptr, [3 x ptr], ptr, ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_snd_sof_mt8195__254_460_snd_sof_of_mt8195_driver_init6 = internal global ptr @snd_sof_of_mt8195_driver_init, section ".initcall6.init", align 4
@snd_sof_of_mt8195_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sof_of_probe, ptr @sof_of_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sof_of_mt8195_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_of_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snd_sof_of_mt8195_driver_exit = internal global ptr @snd_sof_of_mt8195_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns255 = internal constant [44 x i8] c"snd_sof_mt8195.import_ns=SND_SOC_SOF_XTENSA\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [65 x i8] c"snd_sof_mt8195.file=sound/soc/sof/mediatek/mt8195/snd-sof-mt8195\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [36 x i8] c"snd_sof_mt8195.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-audio-of-mt8195\00", [44 x i8] zeroinitializer }, align 32
@sof_of_mt8195_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sof_of_mt8195_desc }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sof_of_pm = external dso_local constant %struct.dev_pm_ops, align 4
@sof_of_mt8195_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sof_mt8195_ops }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sof-mt8195-nocodec.tplg\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek/sof\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek/sof-tplg\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sof-mt8195.ri\00", [18 x i8] zeroinitializer }, align 32
@sof_mt8195_ops = internal constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @mt8195_dsp_probe, ptr @mt8195_dsp_remove, ptr null, ptr @mt8195_run, ptr null, ptr null, ptr null, ptr null, ptr @sof_io_write, ptr @sof_io_read, ptr @sof_io_write64, ptr @sof_io_read64, ptr @sof_block_read, ptr @sof_block_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_sof_load_firmware_memcpy, ptr @snd_sof_parse_module_memcpy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_dsp_suspend, ptr @mt8195_dsp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_get_bar_index, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_dai, i32 4, i32 8913155, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@mt8195_dai = internal global { [4 x %struct.snd_soc_dai_driver], [160 x i8] } { [4 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.82, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.83, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.84, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.85, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [160 x i8] zeroinitializer }, align 32
@sof_xtensa_arch_ops = external dso_local constant %struct.dsp_arch_ops, align 4
@mt8195_dsp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 238, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mt8195_adsp_init_clock failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt8195_dsp_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sound/soc/sof/mediatek/mt8195/mt8195.c\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8195_dsp_probe._entry_ptr = internal global ptr @mt8195_dsp_probe._entry, section ".printk_index", align 4
@mt8195_dsp_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 244, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adsp_clock_on fail!\0A\00", [43 x i8] zeroinitializer }, align 32
@mt8195_dsp_probe._entry_ptr.12 = internal global ptr @mt8195_dsp_probe._entry.10, section ".printk_index", align 4
@mt8195_dsp_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 250, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adsp_sram_power_on fail!\0A\00", [38 x i8] zeroinitializer }, align 32
@mt8195_dsp_probe._entry_ptr.15 = internal global ptr @mt8195_dsp_probe._entry.13, section ".printk_index", align 4
@mt8195_dsp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 256, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"adsp_memory_remap_init fail!\0A\00", [34 x i8] zeroinitializer }, align 32
@mt8195_dsp_probe._entry_ptr.18 = internal global ptr @mt8195_dsp_probe._entry.16, section ".printk_index", align 4
@mt8195_dsp_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 265, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to ioremap base %pa size %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@mt8195_dsp_probe._entry_ptr.21 = internal global ptr @mt8195_dsp_probe._entry.19, section ".printk_index", align 4
@mt8195_dsp_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 275, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@mt8195_dsp_probe._entry_ptr.23 = internal global ptr @mt8195_dsp_probe._entry.22, section ".printk_index", align 4
@mt8195_dsp_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.7, i32 283, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"adsp_shared_base_ioremap fail!\0A\00", [32 x i8] zeroinitializer }, align 32
@mt8195_dsp_probe._entry_ptr.26 = internal global ptr @mt8195_dsp_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 41, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no dma memory-region phandle\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"platform_parse_resource\00", [40 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry_ptr = internal global ptr @platform_parse_resource._entry, section ".printk_index", align 4
@platform_parse_resource._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.7, i32 48, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"of_address_to_resource dma failed\0A\00", [61 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry_ptr.32 = internal global ptr @platform_parse_resource._entry.30, section ".printk_index", align 4
@platform_parse_resource.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.29, ptr @.str.7, ptr @.str.34, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_sof_mt8195\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMA %pR\0A\00", [23 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.7, i32 56, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"of_reserved_mem_device_init failed\0A\00", [60 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry_ptr.37 = internal global ptr @platform_parse_resource._entry.35, section ".printk_index", align 4
@platform_parse_resource._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.29, ptr @.str.7, i32 62, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no memory-region sysmem phandle\0A\00", [63 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry_ptr.40 = internal global ptr @platform_parse_resource._entry.38, section ".printk_index", align 4
@platform_parse_resource._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.29, ptr @.str.7, i32 69, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"of_address_to_resource sysmem failed\0A\00", [58 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry_ptr.43 = internal global ptr @platform_parse_resource._entry.41, section ".printk_index", align 4
@platform_parse_resource._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.29, ptr @.str.7, i32 77, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adsp memory(%#x) is not 4K-aligned\0A\00", [60 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry_ptr.46 = internal global ptr @platform_parse_resource._entry.44, section ".printk_index", align 4
@platform_parse_resource._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.29, ptr @.str.7, i32 83, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"adsp memory(%#x) is not enough for share\0A\00", [54 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry_ptr.49 = internal global ptr @platform_parse_resource._entry.47, section ".printk_index", align 4
@platform_parse_resource.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.29, ptr @.str.7, ptr @.str.50, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dram pbase=%pa, dramsize=%#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.29, ptr @.str.7, i32 93, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no ADSP-CFG register resource\0A\00", [33 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry_ptr.54 = internal global ptr @platform_parse_resource._entry.52, section ".printk_index", align 4
@platform_parse_resource.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.29, ptr @.str.7, ptr @.str.55, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cfgreg-vbase=%p, cfgregsize=%#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.29, ptr @.str.7, i32 110, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no SRAM resource\0A\00", [46 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry_ptr.59 = internal global ptr @platform_parse_resource._entry.57, section ".printk_index", align 4
@platform_parse_resource._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.29, ptr @.str.7, i32 118, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"adsp SRAM(%#x) is not enough for share\0A\00", [56 x i8] zeroinitializer }, align 32
@platform_parse_resource._entry_ptr.62 = internal global ptr @platform_parse_resource._entry.60, section ".printk_index", align 4
@platform_parse_resource.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.29, ptr @.str.7, ptr @.str.63, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sram pbase=%pa,%#x\0A\00", [44 x i8] zeroinitializer }, align 32
@adsp_sram_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.7, i32 135, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to ioremap sram pool base %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adsp_sram_power_on\00", [45 x i8] zeroinitializer }, align 32
@adsp_sram_power_on._entry_ptr = internal global ptr @adsp_sram_power_on._entry, section ".printk_index", align 4
@adsp_memory_remap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.7, i32 161, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to ioremap emi map base %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adsp_memory_remap_init\00", [41 x i8] zeroinitializer }, align 32
@adsp_memory_remap_init._entry_ptr = internal global ptr @adsp_memory_remap_init._entry, section ".printk_index", align 4
@adsp_memory_remap_init.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.67, ptr @.str.7, ptr @.str.68, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adsp->pa_dram %pa, offset %#x\0A\00", [33 x i8] zeroinitializer }, align 32
@adsp_memory_remap_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.67, ptr @.str.7, i32 171, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"write emi map fail : %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@adsp_memory_remap_init._entry_ptr.71 = internal global ptr @adsp_memory_remap_init._entry.69, section ".printk_index", align 4
@adsp_shared_base_ioremap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.7, i32 193, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ioremap failed for shared DRAM\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adsp_shared_base_ioremap\00", [39 x i8] zeroinitializer }, align 32
@adsp_shared_base_ioremap._entry_ptr = internal global ptr @adsp_shared_base_ioremap._entry, section ".printk_index", align 4
@adsp_shared_base_ioremap.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.73, ptr @.str.7, ptr @.str.74, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"shared-dram vbase=%p, phy addr :%pa,  size=%#x\0A\00", [48 x i8] zeroinitializer }, align 32
@mt8195_run.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.75, ptr @.str.7, ptr @.str.76, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt8195_run\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HIFIxDSP boot from base : 0x%08X\0A\00", [62 x i8] zeroinitializer }, align 32
@mt8195_dsp_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.7, i32 326, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"adsp_sram_power_off fail!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt8195_dsp_suspend\00", [45 x i8] zeroinitializer }, align 32
@mt8195_dsp_suspend._entry_ptr = internal global ptr @mt8195_dsp_suspend._entry, section ".printk_index", align 4
@mt8195_dsp_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.79, ptr @.str.7, i32 341, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt8195_dsp_resume\00", [46 x i8] zeroinitializer }, align 32
@mt8195_dsp_resume._entry_ptr = internal global ptr @mt8195_dsp_resume._entry, section ".printk_index", align 4
@mt8195_dsp_resume._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.79, ptr @.str.7, i32 348, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@mt8195_dsp_resume._entry_ptr.81 = internal global ptr @mt8195_dsp_resume._entry.80, section ".printk_index", align 4
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOF_DL2\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOF_DL3\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOF_UL4\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOF_UL5\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.86 = private unnamed_addr constant [25 x i8] c"snd_sof_of_mt8195_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 451, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 455, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"sof_of_mt8195_ids\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 444, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"sof_of_mt8195_desc\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 436, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 440, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 437, i32 21 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 438, i32 23 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 439, i32 25 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"sof_mt8195_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 391, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant [11 x i8] c"mt8195_dai\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 359, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 238, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 244, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 250, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 256, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 264, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 274, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 283, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 39, i32 46 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 41, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 48, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 52, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 56, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 62, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 69, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 76, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 82, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 87, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 91, i32 60 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 93, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 104, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 108, i32 60 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 110, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 117, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 122, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 134, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 160, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 168, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 171, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 193, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 197, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 208, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 326, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 341, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 348, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 361, i32 10 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 368, i32 10 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 375, i32 10 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [42 x i8] c"../sound/soc/sof/mediatek/mt8195/mt8195.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 382, i32 10 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_import_ns255, ptr @__UNIQUE_ID_license257, ptr @__exitcall_snd_sof_of_mt8195_driver_exit, ptr @__initcall__kmod_snd_sof_mt8195__254_460_snd_sof_of_mt8195_driver_init6, ptr @adsp_memory_remap_init._entry, ptr @adsp_memory_remap_init._entry.69, ptr @adsp_memory_remap_init._entry_ptr, ptr @adsp_memory_remap_init._entry_ptr.71, ptr @adsp_shared_base_ioremap._entry, ptr @adsp_shared_base_ioremap._entry_ptr, ptr @adsp_sram_power_on._entry, ptr @adsp_sram_power_on._entry_ptr, ptr @mt8195_dsp_probe._entry, ptr @mt8195_dsp_probe._entry.10, ptr @mt8195_dsp_probe._entry.13, ptr @mt8195_dsp_probe._entry.16, ptr @mt8195_dsp_probe._entry.19, ptr @mt8195_dsp_probe._entry.22, ptr @mt8195_dsp_probe._entry.24, ptr @mt8195_dsp_probe._entry_ptr, ptr @mt8195_dsp_probe._entry_ptr.12, ptr @mt8195_dsp_probe._entry_ptr.15, ptr @mt8195_dsp_probe._entry_ptr.18, ptr @mt8195_dsp_probe._entry_ptr.21, ptr @mt8195_dsp_probe._entry_ptr.23, ptr @mt8195_dsp_probe._entry_ptr.26, ptr @mt8195_dsp_resume._entry, ptr @mt8195_dsp_resume._entry.80, ptr @mt8195_dsp_resume._entry_ptr, ptr @mt8195_dsp_resume._entry_ptr.81, ptr @mt8195_dsp_suspend._entry, ptr @mt8195_dsp_suspend._entry_ptr, ptr @platform_parse_resource._entry, ptr @platform_parse_resource._entry.30, ptr @platform_parse_resource._entry.35, ptr @platform_parse_resource._entry.38, ptr @platform_parse_resource._entry.41, ptr @platform_parse_resource._entry.44, ptr @platform_parse_resource._entry.47, ptr @platform_parse_resource._entry.52, ptr @platform_parse_resource._entry.57, ptr @platform_parse_resource._entry.60, ptr @platform_parse_resource._entry_ptr, ptr @platform_parse_resource._entry_ptr.32, ptr @platform_parse_resource._entry_ptr.37, ptr @platform_parse_resource._entry_ptr.40, ptr @platform_parse_resource._entry_ptr.43, ptr @platform_parse_resource._entry_ptr.46, ptr @platform_parse_resource._entry_ptr.49, ptr @platform_parse_resource._entry_ptr.54, ptr @platform_parse_resource._entry_ptr.59, ptr @platform_parse_resource._entry_ptr.62, ptr @snd_sof_of_mt8195_driver_exit, ptr @snd_sof_of_mt8195_driver, ptr @.str, ptr @sof_of_mt8195_ids, ptr @sof_of_mt8195_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sof_mt8195_ops, ptr @mt8195_dai, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_of_mt8195_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_of_mt8195_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_of_mt8195_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_mt8195_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dai to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dsp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dsp_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dsp_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dsp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dsp_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dsp_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dsp_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_parse_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_parse_resource._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_parse_resource._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_parse_resource._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_parse_resource._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_parse_resource._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_parse_resource._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_parse_resource._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_parse_resource._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_parse_resource._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_sram_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_memory_remap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_memory_remap_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_shared_base_ioremap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dsp_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dsp_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dsp_resume._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sof_of_mt8195_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_sof_of_mt8195_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_sof_of_mt8195_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_sof_of_mt8195_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_of_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_of_remove(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_dsp_probe(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 32, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %hw_pdata, align 4
  %5 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call.i, align 4
  %sdev4 = getelementptr inbounds %struct.adsp_priv, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %sdev4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sdev, ptr %sdev4, align 4
  %call.i178 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 80, i32 noundef 3520) #7
  %adsp = getelementptr inbounds %struct.adsp_priv, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %adsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i178, ptr %adsp, align 4
  %tobool8.not = icmp eq ptr %call.i178, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call fastcc i32 @platform_parse_resource(ptr noundef %add.ptr, ptr noundef nonnull %call.i178)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @mt8195_adsp_init_clock(ptr noundef %sdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = tail call i32 @adsp_clock_on(ptr noundef %sdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %call.i179 = tail call ptr @ioremap(i32 noundef 276873264, i32 noundef 4) #7
  %tobool.not.i = icmp eq ptr %call.i179, null
  br i1 %tobool.not.i, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.64, i32 noundef 276873264) #10
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14) #10
  br label %exit_clk_disable

if.end37:                                         ; preds = %if.end28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call.i179) #7, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %17 = and i32 %16, -251658241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i179, i32 %17) #7, !srcloc !179
  tail call void @iounmap(ptr noundef nonnull %call.i179) #7
  %18 = ptrtoint ptr %adsp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adsp, align 4
  %call40 = tail call fastcc i32 @adsp_memory_remap_init(ptr noundef %1, ptr noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17) #10
  br label %err_adsp_sram_power_off

if.end47:                                         ; preds = %if.end37
  %22 = ptrtoint ptr %adsp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adsp, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %sramsize = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %sramsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sramsize, align 4
  %call51 = tail call ptr @devm_ioremap(ptr noundef %21, i32 noundef %25, i32 noundef %27) #7
  %arrayidx = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 1
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call51, ptr %arrayidx, align 4
  %tobool54.not = icmp eq ptr %call51, null
  %29 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdev, align 4
  %31 = ptrtoint ptr %adsp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adsp, align 4
  br i1 %tobool54.not, label %do.end58, label %if.end64

do.end58:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %sramsize63 = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %sramsize63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sramsize63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.20, ptr noundef %32, i32 noundef %34) #10
  br label %err_adsp_sram_power_off

if.end64:                                         ; preds = %if.end47
  %pa_dram = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %pa_dram to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pa_dram, align 4
  %dramsize = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %32, i32 0, i32 6
  %37 = ptrtoint ptr %dramsize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dramsize, align 4
  %call68 = tail call ptr @devm_ioremap_wc(ptr noundef %30, i32 noundef %36, i32 noundef %38) #7
  %arrayidx70 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 3
  %39 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call68, ptr %arrayidx70, align 4
  %tobool73.not = icmp eq ptr %call68, null
  br i1 %tobool73.not, label %do.end77, label %if.end83

do.end77:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev, align 4
  %42 = ptrtoint ptr %adsp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adsp, align 4
  %pa_dram80 = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %43, i32 0, i32 1
  %dramsize82 = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %dramsize82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dramsize82, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.20, ptr noundef %pa_dram80, i32 noundef %45) #10
  br label %err_adsp_sram_power_off

if.end83:                                         ; preds = %if.end64
  %46 = ptrtoint ptr %adsp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adsp, align 4
  %va_dram = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %va_dram to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call68, ptr %va_dram, align 4
  %49 = load ptr, ptr %adsp, align 4
  %pa_dram.i = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pa_dram.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pa_dram.i, align 4
  %dramsize.i = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %49, i32 0, i32 6
  %52 = ptrtoint ptr %dramsize.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dramsize.i, align 4
  %add.i = add i32 %51, -524288
  %sub.i = add i32 %add.i, %53
  %pa_shared_dram.i = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %49, i32 0, i32 2
  %54 = ptrtoint ptr %pa_shared_dram.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.i, ptr %pa_shared_dram.i, align 4
  %va_dram.i = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %49, i32 0, i32 9
  %55 = ptrtoint ptr %va_dram.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %va_dram.i, align 4
  %tobool.not.i180 = icmp eq ptr %56, null
  br i1 %tobool.not.i180, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr3.i = getelementptr i8, ptr %56, i32 16252928
  %shared_dram.i = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %49, i32 0, i32 13
  %57 = ptrtoint ptr %shared_dram.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr3.i, ptr %shared_dram.i, align 4
  br label %do.body10.i

if.else.i:                                        ; preds = %if.end83
  %call.i181 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %sub.i, i32 noundef 524288) #7
  %shared_dram5.i = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %49, i32 0, i32 13
  %58 = ptrtoint ptr %shared_dram5.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i181, ptr %shared_dram5.i, align 4
  %tobool7.not.i = icmp eq ptr %call.i181, null
  br i1 %tobool7.not.i, label %do.end93, label %if.else.i.do.body10.i_crit_edge

if.else.i.do.body10.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.else.i.do.body10.i_crit_edge, %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adsp_shared_base_ioremap.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_dsp_probe, %adsp_shared_base_ioremap.exit.thread)) #7
          to label %if.end95 [label %adsp_shared_base_ioremap.exit.thread], !srcloc !180

adsp_shared_base_ioremap.exit.thread:             ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %shared_dram16.i = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %49, i32 0, i32 13
  %59 = ptrtoint ptr %shared_dram16.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %shared_dram16.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adsp_shared_base_ioremap.__UNIQUE_ID_ddebug252, ptr noundef %1, ptr noundef nonnull @.str.74, ptr noundef %60, ptr noundef %pa_shared_dram.i, i32 noundef 524288) #7
  br label %if.end95

do.end93:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.72) #10
  %61 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.25) #10
  br label %err_adsp_sram_power_off

if.end95:                                         ; preds = %adsp_shared_base_ioremap.exit.thread, %do.body10.i
  %63 = ptrtoint ptr %adsp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adsp, align 4
  %va_cfgreg = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %va_cfgreg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %va_cfgreg, align 4
  %arrayidx98 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %67 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %arrayidx98, align 4
  %va_mboxreg = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %64, i32 0, i32 11
  %68 = ptrtoint ptr %va_mboxreg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %va_mboxreg, align 4
  %arrayidx102 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 5
  %70 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %arrayidx102, align 4
  %arrayidx105 = getelementptr %struct.mtk_adsp_chip_info, ptr %64, i32 0, i32 11, i32 1
  %71 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx105, align 4
  %arrayidx107 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 6
  %73 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %arrayidx107, align 4
  %arrayidx110 = getelementptr %struct.mtk_adsp_chip_info, ptr %64, i32 0, i32 11, i32 2
  %74 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx110, align 4
  %arrayidx112 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 7
  %76 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %arrayidx112, align 4
  %mmio_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 22
  %77 = ptrtoint ptr %mmio_bar to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %mmio_bar, align 4
  %mailbox_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 23
  %78 = ptrtoint ptr %mailbox_bar to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %mailbox_bar, align 4
  br label %cleanup

err_adsp_sram_power_off:                          ; preds = %do.end93, %do.end77, %do.end58, %do.end45
  %ret.0 = phi i32 [ %call40, %do.end45 ], [ -12, %do.end93 ], [ -22, %do.end77 ], [ -22, %do.end58 ]
  %call.i184 = tail call ptr @ioremap(i32 noundef 276873264, i32 noundef 4) #7
  %tobool.not.i185 = icmp eq ptr %call.i184, null
  br i1 %tobool.not.i185, label %do.end.i186, label %if.end.i187

do.end.i186:                                      ; preds = %err_adsp_sram_power_off
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 276873264) #10
  br label %exit_clk_disable

if.end.i187:                                      ; preds = %err_adsp_sram_power_off
  call void @__sanitizer_cov_trace_pc() #9
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call.i184) #7, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %80 = or i32 %79, 251658240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i184, i32 %80) #7, !srcloc !179
  tail call void @iounmap(ptr noundef nonnull %call.i184) #7
  br label %exit_clk_disable

exit_clk_disable:                                 ; preds = %if.end.i187, %do.end.i186, %do.end35
  %ret.1 = phi i32 [ -12, %do.end35 ], [ %ret.0, %do.end.i186 ], [ %ret.0, %if.end.i187 ]
  %call115 = tail call i32 @adsp_clock_off(ptr noundef %sdev) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_clk_disable, %if.end95, %do.end26, %do.end, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end26 ], [ %ret.1, %exit_clk_disable ], [ 0, %if.end95 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_dsp_remove(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %call.i = tail call ptr @ioremap(i32 noundef 276873264, i32 noundef 4) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 276873264) #10
  br label %adsp_sram_power_on.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call.i) #7, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %3 = or i32 %2, 251658240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i, i32 %3) #7, !srcloc !179
  tail call void @iounmap(ptr noundef nonnull %call.i) #7
  br label %adsp_sram_power_on.exit

adsp_sram_power_on.exit:                          ; preds = %if.end.i, %do.end.i
  %call2 = tail call i32 @adsp_clock_off(ptr noundef %sdev) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_run(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_run.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_run, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_run.__UNIQUE_ID_ddebug253, ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef 1073741824) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @sof_hifixdsp_boot_sequence(ptr noundef %sdev, i32 noundef 1073741824) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_io_write(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_io_read(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_io_write64(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sof_io_read64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_load_firmware_memcpy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_parse_module_memcpy(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_dsp_suspend(ptr noundef %sdev, i32 noundef %target_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  tail call void @sof_hifixdsp_shutdown(ptr noundef %sdev) #7
  %call.i = tail call ptr @ioremap(i32 noundef 276873264, i32 noundef 4) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 276873264) #10
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.77) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call.i) #7, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %5 = or i32 %4, 251658240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i, i32 %5) #7, !srcloc !179
  tail call void @iounmap(ptr noundef nonnull %call.i) #7
  %call3 = tail call i32 @adsp_clock_off(ptr noundef %sdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_dsp_resume(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @adsp_clock_on(ptr noundef %sdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @ioremap(i32 noundef 276873264, i32 noundef 4) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end7, label %adsp_sram_power_on.exit.thread

adsp_sram_power_on.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call.i) #7, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %3 = and i32 %2, -251658241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i, i32 %3) #7, !srcloc !179
  tail call void @iounmap(ptr noundef nonnull %call.i) #7
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 276873264) #10
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %adsp_sram_power_on.exit.thread, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -12, %do.end7 ], [ 0, %adsp_sram_power_on.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt8195_get_bar_index(ptr nocapture noundef readnone %sdev, i32 noundef returned %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %type
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @platform_parse_resource(ptr noundef %pdev, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %args.i215 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call2 = call i32 @of_address_to_resource(ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @of_node_put(ptr noundef nonnull %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #10
  br label %cleanup

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @platform_parse_resource.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@platform_parse_resource, %if.then14)) #7
          to label %do.end17 [label %if.then14], !srcloc !180

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @platform_parse_resource.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef nonnull %res) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body9
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i214 = call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev1, ptr noundef %8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool19.not = icmp eq i32 %call.i214, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end24:                                         ; preds = %do.end17
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i215) #7
  %11 = call ptr @memset(ptr %args.i215, i32 255, i32 72)
  %call.i216 = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i215) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %tobool.not.i217 = icmp eq i32 %call.i216, 0
  br i1 %tobool.not.i217, label %of_parse_phandle.exit220, label %of_parse_phandle.exit220.thread

of_parse_phandle.exit220.thread:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i215) #7
  br label %do.end31

of_parse_phandle.exit220:                         ; preds = %if.end24
  %12 = ptrtoint ptr %args.i215 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i215, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i215) #7
  %tobool27.not = icmp eq ptr %13, null
  br i1 %tobool27.not, label %of_parse_phandle.exit220.do.end31_crit_edge, label %if.end32

of_parse_phandle.exit220.do.end31_crit_edge:      ; preds = %of_parse_phandle.exit220
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end31:                                         ; preds = %of_parse_phandle.exit220.do.end31_crit_edge, %of_parse_phandle.exit220.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end32:                                         ; preds = %of_parse_phandle.exit220
  %call33 = call i32 @of_address_to_resource(ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @of_node_put(ptr noundef nonnull %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end39, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %14 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %res, align 4
  %pa_dram = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %pa_dram to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pa_dram, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %15
  %add.i = add i32 %sub.i, %18
  %dramsize = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %data, i32 0, i32 6
  %19 = ptrtoint ptr %dramsize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i, ptr %dramsize, align 4
  %and = and i32 %15, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %15) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %add.i)
  %cmp = icmp ult i32 %add.i, 524288
  br i1 %cmp, label %do.end53, label %do.body56

do.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48, i32 noundef %add.i) #10
  br label %cleanup

do.body56:                                        ; preds = %if.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @platform_parse_resource.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@platform_parse_resource, %if.then68)) #7
          to label %do.end73 [label %if.then68], !srcloc !180

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dramsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dramsize, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @platform_parse_resource.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.50, ptr noundef %pa_dram, i32 noundef %21) #7
  br label %do.end73

do.end73:                                         ; preds = %if.then68, %do.body56
  %call74 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.51) #7
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %do.end79, label %if.end80

do.end79:                                         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.53) #10
  br label %cleanup

if.end80:                                         ; preds = %do.end73
  %call81 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call74) #7
  %va_cfgreg = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %data, i32 0, i32 10
  %22 = ptrtoint ptr %va_cfgreg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call81, ptr %va_cfgreg, align 4
  %cmp.i = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call81 to i32
  br label %cleanup

if.end87:                                         ; preds = %if.end80
  %24 = ptrtoint ptr %call74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call74, align 4
  %pa_cfgreg = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %pa_cfgreg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %pa_cfgreg, align 4
  %end.i221 = getelementptr inbounds %struct.resource, ptr %call74, i32 0, i32 1
  %27 = ptrtoint ptr %end.i221 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end.i221, align 4
  %29 = load i32, ptr %call74, align 4
  %sub.i222 = add i32 %28, 1
  %add.i223 = sub i32 %sub.i222, %29
  %cfgregsize = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %data, i32 0, i32 7
  %30 = ptrtoint ptr %cfgregsize to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i223, ptr %cfgregsize, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @platform_parse_resource.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@platform_parse_resource, %if.then102)) #7
          to label %do.end107 [label %if.then102], !srcloc !180

if.then102:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %va_cfgreg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %va_cfgreg, align 4
  %33 = ptrtoint ptr %cfgregsize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cfgregsize, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @platform_parse_resource.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.55, ptr noundef %32, i32 noundef %34) #7
  br label %do.end107

do.end107:                                        ; preds = %if.then102, %if.end87
  %call108 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.56) #7
  %tobool109.not = icmp eq ptr %call108, null
  br i1 %tobool109.not, label %do.end113, label %if.end114

do.end113:                                        ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58) #10
  br label %cleanup

if.end114:                                        ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call108 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call108, align 4
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %data, align 4
  %end.i224 = getelementptr inbounds %struct.resource, ptr %call108, i32 0, i32 1
  %38 = ptrtoint ptr %end.i224 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %end.i224, align 4
  %40 = load i32, ptr %call108, align 4
  %sub.i225 = add i32 %39, 1
  %add.i226 = sub i32 %sub.i225, %40
  %sramsize = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %data, i32 0, i32 5
  %41 = ptrtoint ptr %sramsize to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i226, ptr %sramsize, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @platform_parse_resource.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@platform_parse_resource, %if.then137)) #7
          to label %cleanup [label %if.then137], !srcloc !180

if.then137:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %sramsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sramsize, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @platform_parse_resource.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.63, ptr noundef %data, i32 noundef %43) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %if.end114, %do.end113, %if.then84, %do.end79, %do.end53, %do.end46, %do.end38, %do.end31, %do.end23, %do.end7, %do.end
  %retval.0 = phi i32 [ %call2, %do.end7 ], [ %call.i214, %do.end23 ], [ %call33, %do.end38 ], [ -22, %do.end46 ], [ -22, %do.end53 ], [ %23, %if.then84 ], [ -6, %do.end113 ], [ -6, %do.end79 ], [ -19, %do.end31 ], [ -19, %do.end ], [ 0, %if.then137 ], [ 0, %if.end114 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_adsp_init_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adsp_clock_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adsp_memory_remap_init(ptr noundef %dev, ptr noundef %adsp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %adsp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef 276875292, i32 noundef 4) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef 276875292) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pa_dram = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %adsp, i32 0, i32 1
  %0 = ptrtoint ptr %pa_dram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pa_dram, align 4
  %sub = add i32 %1, -1610612736
  %dram_offset = getelementptr inbounds %struct.mtk_adsp_chip_info, ptr %adsp, i32 0, i32 15
  %2 = ptrtoint ptr %dram_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %dram_offset, align 4
  %shr = ashr i32 %sub, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adsp_memory_remap_init.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adsp_memory_remap_init, %if.then9)) #7
          to label %do.body14 [label %if.then9], !srcloc !180

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adsp_memory_remap_init.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef %pa_dram, i32 noundef %shr) #7
  br label %do.body14

do.body14:                                        ; preds = %if.then9, %if.end3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %shr)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call, i32 %3) #7, !srcloc !179
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #7, !srcloc !177
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %5)
  %cmp.not = icmp eq i32 %shr, %5
  br i1 %cmp.not, label %do.body14.cleanup_crit_edge, label %do.end23

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end23:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #7, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.body14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end23 ], [ -12, %do.end ], [ -6, %entry.cleanup_crit_edge ], [ 0, %do.body14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adsp_clock_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_hifixdsp_boot_sequence(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_hifixdsp_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !99, !100, !101, !103, !104, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !160, !162, !164, !166}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @__initcall__kmod_snd_sof_mt8195__254_460_snd_sof_of_mt8195_driver_init6, !1, !"__initcall__kmod_snd_sof_mt8195__254_460_snd_sof_of_mt8195_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 460, i32 1}
!2 = !{ptr @__exitcall_snd_sof_of_mt8195_driver_exit, !1, !"__exitcall_snd_sof_of_mt8195_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_import_ns255, !4, !"__UNIQUE_ID_import_ns255", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 462, i32 1}
!5 = !{ptr @__UNIQUE_ID_file256, !6, !"__UNIQUE_ID_file256", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 463, i32 1}
!7 = !{ptr @__UNIQUE_ID_license257, !6, !"__UNIQUE_ID_license257", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 455, i32 10}
!10 = !{ptr @snd_sof_of_mt8195_driver, !11, !"snd_sof_of_mt8195_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 451, i32 31}
!12 = !{ptr @sof_of_mt8195_ids, !13, !"sof_of_mt8195_ids", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 444, i32 34}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 440, i32 27}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 437, i32 21}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 438, i32 23}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 439, i32 25}
!22 = !{ptr @sof_of_mt8195_desc, !23, !"sof_of_mt8195_desc", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 436, i32 34}
!24 = !{ptr @sof_mt8195_ops, !25, !"sof_mt8195_ops", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 391, i32 37}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 238, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mt8195_dsp_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @mt8195_dsp_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 244, i32 3}
!36 = !{ptr @mt8195_dsp_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mt8195_dsp_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 250, i32 3}
!40 = !{ptr @mt8195_dsp_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mt8195_dsp_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 256, i32 3}
!44 = !{ptr @mt8195_dsp_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt8195_dsp_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 264, i32 3}
!48 = !{ptr @mt8195_dsp_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mt8195_dsp_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @mt8195_dsp_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 274, i32 3}
!52 = !{ptr @mt8195_dsp_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 283, i32 3}
!55 = !{ptr @mt8195_dsp_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mt8195_dsp_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 39, i32 46}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 41, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @platform_parse_resource._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @platform_parse_resource._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 48, i32 3}
!66 = !{ptr @platform_parse_resource._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @platform_parse_resource._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 52, i32 2}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @platform_parse_resource.__UNIQUE_ID_ddebug247, !69, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 56, i32 3}
!74 = !{ptr @platform_parse_resource._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @platform_parse_resource._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 62, i32 3}
!78 = !{ptr @platform_parse_resource._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @platform_parse_resource._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 69, i32 3}
!82 = !{ptr @platform_parse_resource._entry.41, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @platform_parse_resource._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 76, i32 3}
!86 = !{ptr @platform_parse_resource._entry.44, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @platform_parse_resource._entry_ptr.46, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 82, i32 3}
!90 = !{ptr @platform_parse_resource._entry.47, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @platform_parse_resource._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 87, i32 2}
!94 = !{ptr @platform_parse_resource.__UNIQUE_ID_ddebug248, !93, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 91, i32 60}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 93, i32 3}
!99 = !{ptr @platform_parse_resource._entry.52, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @platform_parse_resource._entry_ptr.54, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 104, i32 2}
!103 = !{ptr @platform_parse_resource.__UNIQUE_ID_ddebug249, !102, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 108, i32 60}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 110, i32 3}
!108 = !{ptr @platform_parse_resource._entry.57, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @platform_parse_resource._entry_ptr.59, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 117, i32 3}
!112 = !{ptr @platform_parse_resource._entry.60, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @platform_parse_resource._entry_ptr.62, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 122, i32 2}
!116 = !{ptr @platform_parse_resource.__UNIQUE_ID_ddebug250, !115, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!117 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 134, i32 3}
!119 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @adsp_sram_power_on._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @adsp_sram_power_on._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 160, i32 3}
!124 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @adsp_memory_remap_init._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @adsp_memory_remap_init._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 168, i32 2}
!129 = !{ptr @adsp_memory_remap_init.__UNIQUE_ID_ddebug251, !128, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!130 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 171, i32 3}
!132 = !{ptr @adsp_memory_remap_init._entry.69, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @adsp_memory_remap_init._entry_ptr.71, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 193, i32 4}
!136 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @adsp_shared_base_ioremap._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @adsp_shared_base_ioremap._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 197, i32 2}
!141 = !{ptr @adsp_shared_base_ioremap.__UNIQUE_ID_ddebug252, !140, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 208, i32 2}
!144 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @mt8195_run.__UNIQUE_ID_ddebug253, !143, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!146 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 326, i32 3}
!148 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mt8195_dsp_suspend._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @mt8195_dsp_suspend._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 341, i32 3}
!153 = !{ptr @mt8195_dsp_resume._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @mt8195_dsp_resume._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @mt8195_dsp_resume._entry.80, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 348, i32 3}
!157 = !{ptr @mt8195_dsp_resume._entry_ptr.81, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 361, i32 10}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 368, i32 10}
!162 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 375, i32 10}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 382, i32 10}
!166 = !{ptr @mt8195_dai, !167, !"mt8195_dai", i1 false, i1 false}
!167 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195.c", i32 359, i32 34}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{i64 4178548}
!178 = !{i64 2155963121}
!179 = !{i64 4178130}
!180 = !{i64 2148765965, i64 2148765970, i64 2148765983, i64 2148766027, i64 2148766061, i64 2148766082}
!181 = !{i64 2155968464}
!182 = !{i64 2155969114}
!183 = !{i64 2155971236}
