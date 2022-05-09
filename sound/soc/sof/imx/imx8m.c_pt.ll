; ModuleID = '/llk/IR_all_yes/sound/soc/sof/imx/imx8m.c_pt.bc'
source_filename = "../sound/soc/sof/imx/imx8m.c"
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
%struct.imx_dsp_ops = type { ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.imx8m_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.imx_dsp_ipc = type { [4 x %struct.imx_dsp_chan], ptr, ptr, ptr }
%struct.imx_dsp_chan = type { ptr, %struct.mbox_client, ptr, ptr, i32 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.imx_clocks = type { ptr, i32 }
%struct.snd_sof_ipc_msg = type { i32, ptr, ptr, i32, i32, i32, %struct.wait_queue_head, i8 }

@__initcall__kmod_snd_sof_imx8m__247_498_snd_sof_of_imx8m_driver_init6 = internal global ptr @snd_sof_of_imx8m_driver_init, section ".initcall6.init", align 4
@snd_sof_of_imx8m_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sof_of_probe, ptr @sof_of_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sof_of_imx8m_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_of_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snd_sof_of_imx8m_driver_exit = internal global ptr @snd_sof_of_imx8m_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns248 = internal constant [43 x i8] c"snd_sof_imx8m.import_ns=SND_SOC_SOF_XTENSA\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [51 x i8] c"snd_sof_imx8m.file=sound/soc/sof/imx/snd-sof-imx8m\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [35 x i8] c"snd_sof_imx8m.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof-audio-of-imx8m\00", [45 x i8] zeroinitializer }, align 32
@sof_of_imx8m_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sof_of_imx8mp_desc }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sof_of_pm = external dso_local constant %struct.dev_pm_ops, align 4
@sof_of_imx8mp_desc = internal global { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sof_imx8m_ops }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sof-imx8-nocodec.tplg\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx/sof\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx/sof-tplg\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof-imx8m.ri\00", [19 x i8] zeroinitializer }, align 32
@sof_imx8m_ops = internal constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @imx8m_probe, ptr @imx8m_remove, ptr null, ptr @imx8m_run, ptr null, ptr @imx8m_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr null, ptr null, ptr @imx8m_send_msg, ptr @snd_sof_load_firmware_memcpy, ptr @snd_sof_parse_module_memcpy, ptr @sof_fw_ready, ptr @sof_stream_pcm_open, ptr @sof_stream_pcm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_ipc_msg_data, ptr @sof_ipc_pcm_params, ptr null, ptr null, ptr null, ptr @imx8m_dsp_suspend, ptr @imx8m_dsp_resume, ptr @imx8m_dsp_runtime_suspend, ptr @imx8m_dsp_runtime_resume, ptr null, ptr null, ptr @imx8m_dsp_set_power_state, ptr null, ptr null, i32 0, ptr @imx8_dump, ptr null, ptr @snd_sof_debugfs_add_region_item_iomem, ptr null, ptr null, ptr null, ptr @imx8m_get_bar_index, ptr @imx8m_get_mailbox_offset, ptr @imx8m_get_window_offset, ptr null, ptr null, ptr null, ptr null, ptr @imx8m_dai, i32 2, i32 8913155, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@imx8m_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.37, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 32, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 32, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.38, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 32, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 32, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@sof_xtensa_arch_ops = external dso_local constant %struct.dsp_arch_ops, align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-dsp\00", [24 x i8] zeroinitializer }, align 32
@imx8m_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 185, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get drvdata\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"imx8m_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/sof/imx/imx8m.c\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx8m_probe._entry_ptr = internal global ptr @imx8m_probe._entry, section ".printk_index", align 4
@imx8m_dsp_ops = internal global { %struct.imx_dsp_ops, [24 x i8] } { %struct.imx_dsp_ops { ptr @imx8m_dsp_handle_reply, ptr @imx8m_dsp_handle_request }, [24 x i8] zeroinitializer }, align 32
@imx8m_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 198, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: failed to get DSP base at idx 0\0A\00", [56 x i8] zeroinitializer }, align 32
@imx8m_probe._entry_ptr.13 = internal global ptr @imx8m_probe._entry.11, section ".printk_index", align 4
@imx8m_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 205, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error: failed to map DAP debug memory area\00", [53 x i8] zeroinitializer }, align 32
@imx8m_probe._entry_ptr.16 = internal global ptr @imx8m_probe._entry.14, section ".printk_index", align 4
@imx8m_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 213, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to ioremap base 0x%x size 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@imx8m_probe._entry_ptr.19 = internal global ptr @imx8m_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@imx8m_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.8, i32 221, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get memory region node\0A\00", [62 x i8] zeroinitializer }, align 32
@imx8m_probe._entry_ptr.23 = internal global ptr @imx8m_probe._entry.21, section ".printk_index", align 4
@imx8m_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.8, i32 228, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get reserved region address\0A\00", [57 x i8] zeroinitializer }, align 32
@imx8m_probe._entry_ptr.26 = internal global ptr @imx8m_probe._entry.24, section ".printk_index", align 4
@imx8m_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.7, ptr @.str.8, i32 236, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to ioremap mem 0x%x size 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@imx8m_probe._entry_ptr.29 = internal global ptr @imx8m_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,dsp-ctrl\00", [19 x i8] zeroinitializer }, align 32
@imx8m_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.7, ptr @.str.8, i32 247, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot find dsp-ctrl registers\00", [33 x i8] zeroinitializer }, align 32
@imx8m_probe._entry_ptr.33 = internal global ptr @imx8m_probe._entry.31, section ".printk_index", align 4
@imx8m_dsp_clks = internal global { [3 x %struct.clk_bulk_data], [40 x i8] } { [3 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.34, ptr null }, %struct.clk_bulk_data { ptr @.str.35, ptr null }, %struct.clk_bulk_data { ptr @.str.36, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocram\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai1\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai3\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"snd_sof_of_imx8m_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 489, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 493, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"sof_of_imx8m_ids\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 482, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"sof_of_imx8mp_desc\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 474, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 478, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 475, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 476, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 477, i32 25 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"sof_imx8m_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 414, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"imx8m_dai\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 294, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 175, i32 59 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 185, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"imx8m_dsp_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 98, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 198, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 205, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 212, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 219, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 221, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 228, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 235, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 245, i32 52 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 247, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"imx8m_dsp_clks\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 29, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 30, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 31, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 32, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 296, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [29 x i8] c"../sound/soc/sof/imx/imx8m.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 307, i32 10 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_import_ns248, ptr @__UNIQUE_ID_license250, ptr @__exitcall_snd_sof_of_imx8m_driver_exit, ptr @__initcall__kmod_snd_sof_imx8m__247_498_snd_sof_of_imx8m_driver_init6, ptr @imx8m_probe._entry, ptr @imx8m_probe._entry.11, ptr @imx8m_probe._entry.14, ptr @imx8m_probe._entry.17, ptr @imx8m_probe._entry.21, ptr @imx8m_probe._entry.24, ptr @imx8m_probe._entry.27, ptr @imx8m_probe._entry.31, ptr @imx8m_probe._entry_ptr, ptr @imx8m_probe._entry_ptr.13, ptr @imx8m_probe._entry_ptr.16, ptr @imx8m_probe._entry_ptr.19, ptr @imx8m_probe._entry_ptr.23, ptr @imx8m_probe._entry_ptr.26, ptr @imx8m_probe._entry_ptr.29, ptr @imx8m_probe._entry_ptr.33, ptr @snd_sof_of_imx8m_driver_exit, ptr @snd_sof_of_imx8m_driver, ptr @.str, ptr @sof_of_imx8m_ids, ptr @sof_of_imx8mp_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sof_imx8m_ops, ptr @imx8m_dai, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @imx8m_dsp_ops, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @imx8m_dsp_clks, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_of_imx8m_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_of_imx8m_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_of_imx8mp_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_imx8m_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_dsp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_dsp_clks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sof_of_imx8m_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_sof_of_imx8m_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_sof_of_imx8m_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_sof_of_imx8m_driver) #7
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
define internal i32 @imx8m_probe(ptr noundef %sdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %4 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %5 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i185 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 8, i32 noundef 3520) #7
  %clks = getelementptr inbounds %struct.imx8m_priv, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i185, ptr %clks, align 4
  %tobool6.not = icmp eq ptr %call.i185, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %num_cores = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 56
  %7 = ptrtoint ptr %num_cores to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %num_cores, align 4
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %hw_pdata, align 4
  %11 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call.i, align 4
  %sdev11 = getelementptr inbounds %struct.imx8m_priv, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %sdev11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sdev, ptr %sdev11, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %15 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 255, i32 48)
  %17 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %fwnode.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %15, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.5, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 992, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %ipc_dev = getelementptr inbounds %struct.imx8m_priv, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %ipc_dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %ipc_dev, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i, align 4
  %dsp_ipc = getelementptr inbounds %struct.imx8m_priv, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %dsp_ipc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %dsp_ipc, align 4
  %tobool24.not = icmp eq ptr %30, null
  br i1 %tobool24.not, label %if.then25, label %imx_dsp_set_data.exit

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.6) #10
  br label %exit_pdev_unregister

imx_dsp_set_data.exit:                            ; preds = %if.end19
  %private_data.i = getelementptr inbounds %struct.imx_dsp_ipc, ptr %30, i32 0, i32 3
  %34 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %private_data.i, align 4
  %35 = ptrtoint ptr %dsp_ipc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dsp_ipc, align 4
  %ops = getelementptr inbounds %struct.imx_dsp_ipc, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @imx8m_dsp_ops, ptr %ops, align 4
  %call30 = call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #7
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %do.end36, label %if.then32

if.then32:                                        ; preds = %imx_dsp_set_data.exit
  %38 = ptrtoint ptr %call30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call30, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call30, i32 0, i32 1
  %40 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %39
  %add.i = add i32 %sub.i, %41
  %42 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdev, align 4
  %call40 = call ptr @devm_ioremap(ptr noundef %43, i32 noundef 679477248, i32 noundef 65536) #7
  %dap = getelementptr inbounds %struct.imx8m_priv, ptr %call.i, i32 0, i32 5
  %44 = ptrtoint ptr %dap to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call40, ptr %dap, align 4
  %tobool42.not = icmp eq ptr %call40, null
  %45 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev, align 4
  br i1 %tobool42.not, label %do.end46, label %if.end48

do.end36:                                         ; preds = %imx_dsp_set_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.12) #10
  br label %exit_pdev_unregister

do.end46:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.15) #10
  br label %exit_pdev_unregister

if.end48:                                         ; preds = %if.then32
  %call50 = call ptr @devm_ioremap(ptr noundef %46, i32 noundef %39, i32 noundef %add.i) #7
  %arrayidx = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 1
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call50, ptr %arrayidx, align 4
  %tobool53.not = icmp eq ptr %call50, null
  br i1 %tobool53.not, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.18, i32 noundef %39, i32 noundef %add.i) #10
  br label %exit_pdev_unregister

if.end59:                                         ; preds = %if.end48
  %mmio_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 22
  %52 = ptrtoint ptr %mmio_bar to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %mmio_bar, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %53 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i186 = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool.not.i187 = icmp eq i32 %call.i186, 0
  br i1 %tobool.not.i187, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %do.end65

of_parse_phandle.exit:                            ; preds = %if.end59
  %54 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool61.not = icmp eq ptr %55, null
  br i1 %tobool61.not, label %of_parse_phandle.exit.do.end65_crit_edge, label %if.end67

of_parse_phandle.exit.do.end65_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end65:                                         ; preds = %of_parse_phandle.exit.do.end65_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #10
  br label %exit_pdev_unregister

if.end67:                                         ; preds = %of_parse_phandle.exit
  %call68 = call i32 @of_address_to_resource(ptr noundef nonnull %55, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end75, label %do.end73

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #10
  br label %exit_pdev_unregister

if.end75:                                         ; preds = %if.end67
  %56 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sdev, align 4
  %58 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %res, align 4
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %4, align 4
  %sub.i190 = sub i32 1, %59
  %add.i191 = add i32 %sub.i190, %61
  %call79 = call ptr @devm_ioremap_wc(ptr noundef %57, i32 noundef %59, i32 noundef %add.i191) #7
  %arrayidx81 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 3
  %62 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call79, ptr %arrayidx81, align 4
  %tobool84.not = icmp eq ptr %call79, null
  br i1 %tobool84.not, label %do.end88, label %if.end90

do.end88:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.28, i32 noundef %39, i32 noundef %add.i) #10
  br label %exit_pdev_unregister

if.end90:                                         ; preds = %if.end75
  %mailbox_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 23
  %65 = ptrtoint ptr %mailbox_bar to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %mailbox_bar, align 4
  %dsp_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 14
  %66 = ptrtoint ptr %dsp_box to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8388608, ptr %dsp_box, align 4
  %call91 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.30) #7
  %regmap = getelementptr inbounds %struct.imx8m_priv, ptr %call.i, i32 0, i32 6
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call91, ptr %regmap, align 4
  %cmp.i192 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %do.end97, label %if.end101

do.end97:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.32) #10
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %72 = ptrtoint ptr %71 to i32
  br label %exit_pdev_unregister

if.end101:                                        ; preds = %if.end90
  %73 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clks, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @imx8m_dsp_clks, ptr %74, align 4
  %76 = load ptr, ptr %clks, align 4
  %num_dsp_clks = getelementptr inbounds %struct.imx_clocks, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %num_dsp_clks to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %num_dsp_clks, align 4
  %78 = load ptr, ptr %clks, align 4
  %call105 = call i32 @imx8_parse_clocks(ptr noundef %sdev, ptr noundef %78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp = icmp slt i32 %call105, 0
  br i1 %cmp, label %if.end101.exit_pdev_unregister_crit_edge, label %if.end107

if.end101.exit_pdev_unregister_crit_edge:         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_pdev_unregister

if.end107:                                        ; preds = %if.end101
  %79 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clks, align 4
  %call109 = call i32 @imx8_enable_clocks(ptr noundef %sdev, ptr noundef %80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.end107.exit_pdev_unregister_crit_edge, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end107.exit_pdev_unregister_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_pdev_unregister

exit_pdev_unregister:                             ; preds = %if.end107.exit_pdev_unregister_crit_edge, %if.end101.exit_pdev_unregister_crit_edge, %do.end97, %do.end88, %do.end73, %do.end65, %do.end57, %do.end46, %do.end36, %if.then25
  %ret.0 = phi i32 [ %call68, %do.end73 ], [ %72, %do.end97 ], [ %call105, %if.end101.exit_pdev_unregister_crit_edge ], [ %call109, %if.end107.exit_pdev_unregister_crit_edge ], [ -12, %do.end88 ], [ -19, %do.end65 ], [ -19, %do.end57 ], [ -19, %do.end46 ], [ -22, %do.end36 ], [ -517, %if.then25 ]
  %81 = ptrtoint ptr %ipc_dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ipc_dev, align 4
  call void @platform_device_unregister(ptr noundef %82) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_pdev_unregister, %if.end107.cleanup_crit_edge, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.then16 ], [ %ret.0, %exit_pdev_unregister ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end107.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_remove(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %clks = getelementptr inbounds %struct.imx8m_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @imx8_disable_clocks(ptr noundef %sdev, ptr noundef %5) #7
  %ipc_dev = getelementptr inbounds %struct.imx8m_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ipc_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipc_dev, align 4
  tail call void @platform_device_unregister(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_run(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %regmap = getelementptr inbounds %struct.imx8m_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 264, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_reset(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %dap = getelementptr inbounds %struct.imx8m_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dap, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 28704
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %7 = or i32 %6, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %dap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dap, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 28704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %7) #7, !srcloc !96
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #7
  %regmap = getelementptr inbounds %struct.imx8m_priv, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 264, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %dap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dap, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 28704
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %15 = and i32 %14, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %dap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dap, align 4
  %add.ptr16 = getelementptr i8, ptr %17, i32 28704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %15) #7, !srcloc !96
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_send_msg(ptr noundef %sdev, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %host_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 15
  %4 = ptrtoint ptr %host_box to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_box, align 4
  %msg_data = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %msg_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg_data, align 4
  %msg_size = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %msg_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_size, align 4
  tail call void @sof_mailbox_write(ptr noundef %sdev, i32 noundef %5, ptr noundef %7, i32 noundef %9) #7
  %dsp_ipc = getelementptr inbounds %struct.imx8m_priv, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %dsp_ipc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsp_ipc, align 4
  %call = tail call i32 @imx_dsp_ring_doorbell(ptr noundef %11, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_load_firmware_memcpy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_parse_module_memcpy(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_fw_ready(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_stream_pcm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_stream_pcm_close(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_msg_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_pcm_params(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_dsp_suspend(ptr noundef %sdev, i32 noundef %target_state) #2 align 64 {
entry:
  %target_dsp_state = alloca %struct.sof_dsp_power_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_dsp_state) #7
  %0 = getelementptr inbounds %struct.sof_dsp_power_state, ptr %target_dsp_state, i32 0, i32 1
  %1 = ptrtoint ptr %target_dsp_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %target_state, ptr %target_dsp_state, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  %3 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 15
  %7 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %8 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_pdata.i, align 4
  %dsp_ipc.i = getelementptr inbounds %struct.imx8m_priv, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %13, i32 noundef 0) #7
  %14 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %15, i32 noundef 1) #7
  %16 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %17, i32 noundef 2) #7
  %18 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %19, i32 noundef 3) #7
  %clks.i = getelementptr inbounds %struct.imx8m_priv, ptr %11, i32 0, i32 4
  %20 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clks.i, align 4
  tail call void @imx8_disable_clocks(ptr noundef %sdev, ptr noundef %21) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_suspended.exit.if.end_crit_edge
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #7
  %pdata.i4 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %22 = ptrtoint ptr %pdata.i4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata.i4, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %set_power_state.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %27, i32 0, i32 45
  %28 = ptrtoint ptr %set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_power_state.i, align 4
  %tobool.not.i5 = icmp eq ptr %29, null
  br i1 %tobool.not.i5, label %if.end.snd_sof_dsp_set_power_state.exit_crit_edge, label %if.then.i

if.end.snd_sof_dsp_set_power_state.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_dsp_set_power_state.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 %29(ptr noundef %sdev, ptr noundef nonnull %target_dsp_state) #7
  br label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then.i, %if.end.snd_sof_dsp_set_power_state.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %if.end.snd_sof_dsp_set_power_state.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_dsp_state) #7
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_dsp_resume(ptr noundef %sdev) #2 align 64 {
entry:
  %target_dsp_state = alloca %struct.sof_dsp_power_state, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_dsp_state) #7
  %0 = ptrtoint ptr %target_dsp_state to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %target_dsp_state, align 8
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %1 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_pdata.i, align 4
  %clks.i = getelementptr inbounds %struct.imx8m_priv, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clks.i, align 4
  %call.i = tail call i32 @imx8_enable_clocks(ptr noundef %sdev, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsp_ipc.i = getelementptr inbounds %struct.imx8m_priv, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.i = tail call ptr @imx_dsp_request_channel(ptr noundef %8, i32 noundef 0) #7
  %9 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.1.i = tail call ptr @imx_dsp_request_channel(ptr noundef %10, i32 noundef 1) #7
  %11 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.2.i = tail call ptr @imx_dsp_request_channel(ptr noundef %12, i32 noundef 2) #7
  %13 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.3.i = tail call ptr @imx_dsp_request_channel(ptr noundef %14, i32 noundef 3) #7
  %15 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 18
  %17 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i21 = icmp eq i32 %18, 2
  br i1 %cmp.i21, label %pm_runtime_suspended.exit, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 15
  %19 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then2, label %pm_runtime_suspended.exit.if.end10_crit_edge

pm_runtime_suspended.exit.if.end10_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then2:                                         ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #7
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  %call.i22 = tail call i32 @__pm_runtime_set_status(ptr noundef %21, i32 noundef 0) #7
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  %call.i23 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 22
  %24 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store volatile i64 %call.i23, ptr %last_busy.i, align 8
  %25 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev, align 4
  tail call void @pm_runtime_enable(ptr noundef %26) #7
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 4
  %call.i24 = tail call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 0) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %pm_runtime_suspended.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #7
  %29 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %set_power_state.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %34, i32 0, i32 45
  %35 = ptrtoint ptr %set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_power_state.i, align 4
  %tobool.not.i26 = icmp eq ptr %36, null
  br i1 %tobool.not.i26, label %if.end10.snd_sof_dsp_set_power_state.exit_crit_edge, label %if.then.i

if.end10.snd_sof_dsp_set_power_state.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_dsp_set_power_state.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call.i27 = call i32 %36(ptr noundef %sdev, ptr noundef nonnull %target_dsp_state) #7
  br label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then.i, %if.end10.snd_sof_dsp_set_power_state.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i27, %if.then.i ], [ 0, %if.end10.snd_sof_dsp_set_power_state.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i) #7
  br label %cleanup

cleanup:                                          ; preds = %snd_sof_dsp_set_power_state.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %snd_sof_dsp_set_power_state.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_dsp_state) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_dsp_runtime_suspend(ptr noundef %sdev) #2 align 64 {
entry:
  %target_dsp_state = alloca %struct.sof_dsp_power_state, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_dsp_state) #7
  %0 = ptrtoint ptr %target_dsp_state to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 17179869184, ptr %target_dsp_state, align 8
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %1 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_pdata.i, align 4
  %dsp_ipc.i = getelementptr inbounds %struct.imx8m_priv, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %6, i32 noundef 0) #7
  %7 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %8, i32 noundef 1) #7
  %9 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %10, i32 noundef 2) #7
  %11 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %12, i32 noundef 3) #7
  %clks.i = getelementptr inbounds %struct.imx8m_priv, ptr %4, i32 0, i32 4
  %13 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clks.i, align 4
  tail call void @imx8_disable_clocks(ptr noundef %sdev, ptr noundef %14) #7
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #7
  %15 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %set_power_state.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %20, i32 0, i32 45
  %21 = ptrtoint ptr %set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_power_state.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %entry.snd_sof_dsp_set_power_state.exit_crit_edge, label %if.then.i

entry.snd_sof_dsp_set_power_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_dsp_set_power_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 %22(ptr noundef %sdev, ptr noundef nonnull %target_dsp_state) #7
  br label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then.i, %entry.snd_sof_dsp_set_power_state.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %entry.snd_sof_dsp_set_power_state.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_dsp_state) #7
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_dsp_runtime_resume(ptr noundef %sdev) #2 align 64 {
entry:
  %target_dsp_state = alloca %struct.sof_dsp_power_state, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_dsp_state) #7
  %0 = ptrtoint ptr %target_dsp_state to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %target_dsp_state, align 8
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %1 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_pdata.i, align 4
  %clks.i = getelementptr inbounds %struct.imx8m_priv, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clks.i, align 4
  %call.i = tail call i32 @imx8_enable_clocks(ptr noundef %sdev, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsp_ipc.i = getelementptr inbounds %struct.imx8m_priv, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.i = tail call ptr @imx_dsp_request_channel(ptr noundef %8, i32 noundef 0) #7
  %9 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.1.i = tail call ptr @imx_dsp_request_channel(ptr noundef %10, i32 noundef 1) #7
  %11 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.2.i = tail call ptr @imx_dsp_request_channel(ptr noundef %12, i32 noundef 2) #7
  %13 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.3.i = tail call ptr @imx_dsp_request_channel(ptr noundef %14, i32 noundef 3) #7
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #7
  %15 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %set_power_state.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %20, i32 0, i32 45
  %21 = ptrtoint ptr %set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_power_state.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.snd_sof_dsp_set_power_state.exit_crit_edge, label %if.then.i

if.end.snd_sof_dsp_set_power_state.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_dsp_set_power_state.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i6 = call i32 %22(ptr noundef %sdev, ptr noundef nonnull %target_dsp_state) #7
  br label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then.i, %if.end.snd_sof_dsp_set_power_state.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i6, %if.then.i ], [ 0, %if.end.snd_sof_dsp_set_power_state.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i) #7
  br label %cleanup

cleanup:                                          ; preds = %snd_sof_dsp_set_power_state.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %snd_sof_dsp_set_power_state.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_dsp_state) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx8m_dsp_set_power_state(ptr nocapture noundef writeonly %sdev, ptr nocapture noundef readonly %target_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_power_state = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 4
  %0 = ptrtoint ptr %target_state to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %target_state, align 4
  %2 = ptrtoint ptr %dsp_power_state to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %dsp_power_state, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx8_dump(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_debugfs_add_region_item_iomem(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx8m_get_bar_index(ptr nocapture noundef readnone %sdev, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %switch.selectcmp = icmp eq i32 %type, 3
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %switch.selectcmp2 = icmp eq i32 %type, 1
  %switch.select3 = select i1 %switch.selectcmp2, i32 1, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx8m_get_mailbox_offset(ptr nocapture noundef readnone %sdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8388608
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx8m_get_window_offset(ptr nocapture noundef readnone %sdev, i32 noundef %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8388608
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx8_parse_clocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx8_enable_clocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx8m_dsp_handle_reply(ptr noundef readonly %ipc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ipc, null
  br i1 %tobool.not.i, label %entry.imx_dsp_get_data.exit_crit_edge, label %if.end.i

entry.imx_dsp_get_data.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_dsp_get_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private_data.i = getelementptr inbounds %struct.imx_dsp_ipc, ptr %ipc, i32 0, i32 3
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  br label %imx_dsp_get_data.exit

imx_dsp_get_data.exit:                            ; preds = %if.end.i, %entry.imx_dsp_get_data.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.imx_dsp_get_data.exit_crit_edge ]
  %sdev = getelementptr inbounds %struct.imx8m_priv, ptr %retval.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 4
  %ipc_lock = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ipc_lock) #7
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  tail call void @snd_sof_ipc_get_reply(ptr noundef %5) #7
  tail call void @snd_sof_ipc_reply(ptr noundef %5, i32 noundef 0) #7
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  %ipc_lock8 = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ipc_lock8, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx8m_dsp_handle_request(ptr noundef readonly %ipc) #2 align 64 {
entry:
  %p = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ipc, null
  br i1 %tobool.not.i, label %entry.imx_dsp_get_data.exit_crit_edge, label %if.end.i

entry.imx_dsp_get_data.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_dsp_get_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private_data.i = getelementptr inbounds %struct.imx_dsp_ipc, ptr %ipc, i32 0, i32 3
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  br label %imx_dsp_get_data.exit

imx_dsp_get_data.exit:                            ; preds = %if.end.i, %entry.imx_dsp_get_data.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.imx_dsp_get_data.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #7
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %p, align 4, !annotation !99
  %sdev = getelementptr inbounds %struct.imx8m_priv, ptr %retval.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev, align 4
  %debug_box = getelementptr inbounds %struct.snd_sof_dev, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %debug_box to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_box, align 4
  %add = add i32 %6, 4
  call void @sof_mailbox_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %p, i32 noundef 4) #7
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p, align 4
  %and = and i32 %8, 268431360
  call void @__sanitizer_cov_trace_const_cmp4(i32 233492480, i32 %and)
  %cmp = icmp eq i32 %and, 233492480
  %9 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %imx_dsp_get_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @snd_sof_dsp_panic(ptr noundef %10, i32 noundef %8, i1 noundef zeroext true) #7
  br label %if.end

if.else:                                          ; preds = %imx_dsp_get_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @snd_sof_ipc_msgs_rx(ptr noundef %10) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_get_reply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_reply(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_dsp_panic(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_msgs_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx8_disable_clocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_dsp_ring_doorbell(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_dsp_free_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_dsp_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_snd_sof_imx8m__247_498_snd_sof_of_imx8m_driver_init6, !1, !"__initcall__kmod_snd_sof_imx8m__247_498_snd_sof_of_imx8m_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/imx/imx8m.c", i32 498, i32 1}
!2 = !{ptr @__exitcall_snd_sof_of_imx8m_driver_exit, !1, !"__exitcall_snd_sof_of_imx8m_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_import_ns248, !4, !"__UNIQUE_ID_import_ns248", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/imx/imx8m.c", i32 500, i32 1}
!5 = !{ptr @__UNIQUE_ID_file249, !6, !"__UNIQUE_ID_file249", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/imx/imx8m.c", i32 501, i32 1}
!7 = !{ptr @__UNIQUE_ID_license250, !6, !"__UNIQUE_ID_license250", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/imx/imx8m.c", i32 493, i32 11}
!10 = !{ptr @snd_sof_of_imx8m_driver, !11, !"snd_sof_of_imx8m_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/imx/imx8m.c", i32 489, i32 31}
!12 = !{ptr @sof_of_imx8m_ids, !13, !"sof_of_imx8m_ids", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/imx/imx8m.c", i32 482, i32 34}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/imx/imx8m.c", i32 478, i32 27}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/imx/imx8m.c", i32 475, i32 21}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/imx/imx8m.c", i32 476, i32 23}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sof/imx/imx8m.c", i32 477, i32 25}
!22 = !{ptr @sof_of_imx8mp_desc, !23, !"sof_of_imx8mp_desc", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/imx/imx8m.c", i32 474, i32 28}
!24 = !{ptr @sof_imx8m_ops, !25, !"sof_imx8m_ops", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/imx/imx8m.c", i32 414, i32 37}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/imx/imx8m.c", i32 175, i32 59}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sof/imx/imx8m.c", i32 185, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @imx8m_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @imx8m_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/imx/imx8m.c", i32 198, i32 3}
!38 = !{ptr @imx8m_probe._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @imx8m_probe._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/imx/imx8m.c", i32 205, i32 3}
!42 = !{ptr @imx8m_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @imx8m_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/sof/imx/imx8m.c", i32 212, i32 3}
!46 = !{ptr @imx8m_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx8m_probe._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/sof/imx/imx8m.c", i32 219, i32 34}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/sof/imx/imx8m.c", i32 221, i32 3}
!52 = !{ptr @imx8m_probe._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx8m_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sof/imx/imx8m.c", i32 228, i32 3}
!56 = !{ptr @imx8m_probe._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @imx8m_probe._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/sof/imx/imx8m.c", i32 235, i32 3}
!60 = !{ptr @imx8m_probe._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @imx8m_probe._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/sof/imx/imx8m.c", i32 245, i32 52}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/sof/imx/imx8m.c", i32 247, i32 3}
!66 = !{ptr @imx8m_probe._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @imx8m_probe._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @imx8m_dsp_ops, !69, !"imx8m_dsp_ops", i1 false, i1 false}
!69 = !{!"../sound/soc/sof/imx/imx8m.c", i32 98, i32 27}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/sof/imx/imx8m.c", i32 30, i32 10}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/imx/imx8m.c", i32 31, i32 10}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/sof/imx/imx8m.c", i32 32, i32 10}
!76 = !{ptr @imx8m_dsp_clks, !77, !"imx8m_dsp_clks", i1 false, i1 false}
!77 = !{!"../sound/soc/sof/imx/imx8m.c", i32 29, i32 29}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sof/imx/imx8m.c", i32 296, i32 10}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/sof/imx/imx8m.c", i32 307, i32 10}
!82 = !{ptr @imx8m_dai, !83, !"imx8m_dai", i1 false, i1 false}
!83 = !{!"../sound/soc/sof/imx/imx8m.c", i32 294, i32 34}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 4965400}
!94 = !{i64 2155918096}
!95 = !{i64 2155918427}
!96 = !{i64 4964982}
!97 = !{i64 2155919345}
!98 = !{i64 2155919676}
!99 = !{!"auto-init"}
