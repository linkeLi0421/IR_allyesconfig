; ModuleID = '/llk/IR_all_yes/sound/soc/sof/imx/imx8.c_pt.bc'
source_filename = "../sound/soc/sof/imx/imx8.c"
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
%struct.imx8_priv = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_snd_sof_imx8__247_648_snd_sof_of_imx8_driver_init6 = internal global ptr @snd_sof_of_imx8_driver_init, section ".initcall6.init", align 4
@snd_sof_of_imx8_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sof_of_probe, ptr @sof_of_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sof_of_imx8_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_of_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snd_sof_of_imx8_driver_exit = internal global ptr @snd_sof_of_imx8_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns248 = internal constant [42 x i8] c"snd_sof_imx8.import_ns=SND_SOC_SOF_XTENSA\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [49 x i8] c"snd_sof_imx8.file=sound/soc/sof/imx/snd-sof-imx8\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [34 x i8] c"snd_sof_imx8.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sof-audio-of-imx8\00", [46 x i8] zeroinitializer }, align 32
@sof_of_imx8_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sof_of_imx8qxp_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-dsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sof_of_imx8qm_desc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sof_of_pm = external dso_local constant %struct.dev_pm_ops, align 4
@sof_of_imx8qxp_desc = internal global { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sof_imx8x_ops }, [36 x i8] zeroinitializer }, align 32
@sof_of_imx8qm_desc = internal global { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.51, ptr @sof_imx8_ops }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sof-imx8-nocodec.tplg\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx/sof\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx/sof-tplg\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof-imx8x.ri\00", [19 x i8] zeroinitializer }, align 32
@sof_imx8x_ops = internal constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @imx8_probe, ptr @imx8_remove, ptr null, ptr @imx8x_run, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr null, ptr null, ptr @imx8_send_msg, ptr @snd_sof_load_firmware_memcpy, ptr @snd_sof_parse_module_memcpy, ptr @sof_fw_ready, ptr @sof_stream_pcm_open, ptr @sof_stream_pcm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_ipc_msg_data, ptr @sof_ipc_pcm_params, ptr null, ptr null, ptr null, ptr @imx8_dsp_suspend, ptr @imx8_dsp_resume, ptr @imx8_dsp_runtime_suspend, ptr @imx8_dsp_runtime_resume, ptr null, ptr null, ptr @imx8_dsp_set_power_state, ptr null, ptr null, i32 0, ptr @imx8_dump, ptr null, ptr @snd_sof_debugfs_add_region_item_iomem, ptr null, ptr null, ptr null, ptr @imx8_get_bar_index, ptr @imx8_get_mailbox_offset, ptr @imx8_get_window_offset, ptr null, ptr null, ptr null, ptr null, ptr @imx8_dai, i32 2, i32 8913155, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@imx8_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.49, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.50, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 32, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 32, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@sof_xtensa_arch_ops = external dso_local constant %struct.dsp_arch_ops, align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#power-domain-cells\00", [44 x i8] zeroinitializer }, align 32
@imx8_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 212, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no power-domains property in %pOF\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx8_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/sof/imx/imx8.c\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx8_probe._entry_ptr = internal global ptr @imx8_probe._entry, section ".printk_index", align 4
@imx8_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 246, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot obtain SCU handle (err = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@imx8_probe._entry_ptr.14 = internal global ptr @imx8_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-dsp\00", [24 x i8] zeroinitializer }, align 32
@imx8_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 262, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get drvdata\0A\00", [41 x i8] zeroinitializer }, align 32
@imx8_probe._entry_ptr.18 = internal global ptr @imx8_probe._entry.16, section ".printk_index", align 4
@dsp_ops = internal global { %struct.imx_dsp_ops, [24 x i8] } { %struct.imx_dsp_ops { ptr @imx8_dsp_handle_reply, ptr @imx8_dsp_handle_request }, [24 x i8] zeroinitializer }, align 32
@imx8_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.9, i32 275, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: failed to get DSP base at idx 0\0A\00", [56 x i8] zeroinitializer }, align 32
@imx8_probe._entry_ptr.21 = internal global ptr @imx8_probe._entry.19, section ".printk_index", align 4
@imx8_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.9, i32 283, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to ioremap base 0x%x size 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@imx8_probe._entry_ptr.24 = internal global ptr @imx8_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@imx8_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.8, ptr @.str.9, i32 291, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get memory region node\0A\00", [62 x i8] zeroinitializer }, align 32
@imx8_probe._entry_ptr.28 = internal global ptr @imx8_probe._entry.26, section ".printk_index", align 4
@imx8_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.8, ptr @.str.9, i32 299, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get reserved region address\0A\00", [57 x i8] zeroinitializer }, align 32
@imx8_probe._entry_ptr.31 = internal global ptr @imx8_probe._entry.29, section ".printk_index", align 4
@imx8_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.8, ptr @.str.9, i32 307, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to ioremap mem 0x%x size 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@imx8_probe._entry_ptr.34 = internal global ptr @imx8_probe._entry.32, section ".printk_index", align 4
@imx8_dsp_clks = internal global { [3 x %struct.clk_bulk_data], [40 x i8] } { [3 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.35, ptr null }, %struct.clk_bulk_data { ptr @.str.36, ptr null }, %struct.clk_bulk_data { ptr @.str.37, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocram\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@imx8x_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.9, i32 132, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error system address offset source select\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx8x_run\00", [22 x i8] zeroinitializer }, align 32
@imx8x_run._entry_ptr = internal global ptr @imx8x_run._entry, section ".printk_index", align 4
@imx8x_run._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.9, i32 139, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error system address offset of AUDIO\0A\00", [58 x i8] zeroinitializer }, align 32
@imx8x_run._entry_ptr.42 = internal global ptr @imx8x_run._entry.40, section ".printk_index", align 4
@imx8x_run._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.9, i32 147, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error system address offset of PERIPH %d\0A\00", [54 x i8] zeroinitializer }, align 32
@imx8x_run._entry_ptr.45 = internal global ptr @imx8x_run._entry.43, section ".printk_index", align 4
@imx8x_run._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.9, i32 154, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error system address offset of IRQ\0A\00", [60 x i8] zeroinitializer }, align 32
@imx8x_run._entry_ptr.48 = internal global ptr @imx8x_run._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"esai0\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai1\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sof-imx8.ri\00", [20 x i8] zeroinitializer }, align 32
@sof_imx8_ops = internal constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @imx8_probe, ptr @imx8_remove, ptr null, ptr @imx8_run, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr null, ptr null, ptr @imx8_send_msg, ptr @snd_sof_load_firmware_memcpy, ptr @snd_sof_parse_module_memcpy, ptr @sof_fw_ready, ptr @sof_stream_pcm_open, ptr @sof_stream_pcm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_ipc_msg_data, ptr @sof_ipc_pcm_params, ptr null, ptr null, ptr null, ptr @imx8_dsp_suspend, ptr @imx8_dsp_resume, ptr @imx8_dsp_runtime_suspend, ptr @imx8_dsp_runtime_resume, ptr null, ptr null, ptr @imx8_dsp_set_power_state, ptr null, ptr null, i32 0, ptr @imx8_dump, ptr null, ptr @snd_sof_debugfs_add_region_item_iomem, ptr null, ptr null, ptr null, ptr @imx8_get_bar_index, ptr @imx8_get_mailbox_offset, ptr @imx8_get_window_offset, ptr null, ptr null, ptr null, ptr null, ptr @imx8_dai, i32 2, i32 8913155, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@imx8_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.52, ptr @.str.9, i32 172, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx8_run\00", [23 x i8] zeroinitializer }, align 32
@imx8_run._entry_ptr = internal global ptr @imx8_run._entry, section ".printk_index", align 4
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"snd_sof_of_imx8_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 639, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 643, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"sof_of_imx8_ids\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 631, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"sof_of_imx8qxp_desc\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 615, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"sof_of_imx8qm_desc\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 623, i32 28 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 619, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 616, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 617, i32 23 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 618, i32 25 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"sof_imx8x_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 553, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"imx8_dai\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 456, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 209, i32 53 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 210, i32 14 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 212, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 245, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 250, i32 59 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 262, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [8 x i8] c"dsp_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 105, i32 27 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 275, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 282, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 289, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 291, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 299, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 306, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"imx8_dsp_clks\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 45, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 46, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 47, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 48, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 132, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 139, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 146, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 154, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 458, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 469, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 626, i32 25 }
@___asan_gen_.209 = private unnamed_addr constant [13 x i8] c"sof_imx8_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 490, i32 37 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [28 x i8] c"../sound/soc/sof/imx/imx8.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 172, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_import_ns248, ptr @__UNIQUE_ID_license250, ptr @__exitcall_snd_sof_of_imx8_driver_exit, ptr @__initcall__kmod_snd_sof_imx8__247_648_snd_sof_of_imx8_driver_init6, ptr @imx8_probe._entry, ptr @imx8_probe._entry.12, ptr @imx8_probe._entry.16, ptr @imx8_probe._entry.19, ptr @imx8_probe._entry.22, ptr @imx8_probe._entry.26, ptr @imx8_probe._entry.29, ptr @imx8_probe._entry.32, ptr @imx8_probe._entry_ptr, ptr @imx8_probe._entry_ptr.14, ptr @imx8_probe._entry_ptr.18, ptr @imx8_probe._entry_ptr.21, ptr @imx8_probe._entry_ptr.24, ptr @imx8_probe._entry_ptr.28, ptr @imx8_probe._entry_ptr.31, ptr @imx8_probe._entry_ptr.34, ptr @imx8_run._entry, ptr @imx8_run._entry_ptr, ptr @imx8x_run._entry, ptr @imx8x_run._entry.40, ptr @imx8x_run._entry.43, ptr @imx8x_run._entry.46, ptr @imx8x_run._entry_ptr, ptr @imx8x_run._entry_ptr.42, ptr @imx8x_run._entry_ptr.45, ptr @imx8x_run._entry_ptr.48, ptr @snd_sof_of_imx8_driver_exit, ptr @snd_sof_of_imx8_driver, ptr @.str, ptr @sof_of_imx8_ids, ptr @sof_of_imx8qxp_desc, ptr @sof_of_imx8qm_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sof_imx8x_ops, ptr @imx8_dai, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @dsp_ops, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @imx8_dsp_clks, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @sof_imx8_ops, ptr @.str.52], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_of_imx8_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_of_imx8_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_of_imx8qxp_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_of_imx8qm_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_imx8x_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_dsp_clks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8x_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8x_run._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8x_run._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8x_run._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_imx8_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sof_of_imx8_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_sof_of_imx8_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_sof_of_imx8_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_sof_of_imx8_driver) #9
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
define internal i32 @imx8_probe(ptr noundef %sdev) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %4 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %5 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 36, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i264 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 8, i32 noundef 3520) #9
  %clks = getelementptr inbounds %struct.imx8_priv, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i264, ptr %clks, align 4
  %tobool6.not = icmp eq ptr %call.i264, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  %sdev11 = getelementptr inbounds %struct.imx8_priv, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %sdev11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sdev, ptr %sdev11, align 4
  %call12 = tail call i32 @of_count_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #9
  %num_domains = getelementptr inbounds %struct.imx8_priv, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call12, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.7, ptr noundef %3) #12
  %18 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_domains, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call12, i32 4) #9
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !122

devm_kmalloc_array.exit.thread:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %pd_dev275 = getelementptr inbounds %struct.imx8_priv, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %pd_dev275 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pd_dev275, align 4
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.end17
  %23 = extractvalue { i32, i1 } %20, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %23, i32 noundef 3264) #9
  %pd_dev = getelementptr inbounds %struct.imx8_priv, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %pd_dev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i, ptr %pd_dev, align 4
  %tobool22.not = icmp eq ptr %call5.i, null
  br i1 %tobool22.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %if.end24

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %devm_kmalloc_array.exit
  %25 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_domains, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 4) #9
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %devm_kmalloc_array.exit268.thread, label %devm_kmalloc_array.exit268, !prof !122

devm_kmalloc_array.exit268.thread:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %link279 = getelementptr inbounds %struct.imx8_priv, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %link279 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %link279, align 4
  br label %cleanup

devm_kmalloc_array.exit268:                       ; preds = %if.end24
  %30 = extractvalue { i32, i1 } %27, 0
  %call5.i265 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %30, i32 noundef 3264) #9
  %link = getelementptr inbounds %struct.imx8_priv, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i265, ptr %link, align 4
  %tobool29.not = icmp eq ptr %call5.i265, null
  br i1 %tobool29.not, label %devm_kmalloc_array.exit268.cleanup_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit268.cleanup_crit_edge:     ; preds = %devm_kmalloc_array.exit268
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit268
  %32 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp33287 = icmp sgt i32 %33, 0
  br i1 %cmp33287, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0288 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call35 = tail call ptr @dev_pm_domain_attach_by_id(ptr noundef %1, i32 noundef %i.0288) #9
  %34 = ptrtoint ptr %pd_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pd_dev, align 4
  %arrayidx = getelementptr ptr, ptr %35, i32 %i.0288
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call35, ptr %arrayidx, align 4
  %37 = load ptr, ptr %pd_dev, align 4
  %arrayidx38 = getelementptr ptr, ptr %37, i32 %i.0288
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx38, align 4
  %cmp.i = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end44

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %39 to i32
  br label %exit_unroll_pm

if.end44:                                         ; preds = %for.body
  %call48 = tail call ptr @device_link_add(ptr noundef %1, ptr noundef %39, i32 noundef 13) #9
  %41 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %link, align 4
  %arrayidx50 = getelementptr ptr, ptr %42, i32 %i.0288
  %43 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call48, ptr %arrayidx50, align 4
  %44 = load ptr, ptr %link, align 4
  %arrayidx52 = getelementptr ptr, ptr %44, i32 %i.0288
  %45 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %46, null
  br i1 %tobool53.not, label %if.then54, label %for.inc

if.then54:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %pd_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pd_dev, align 4
  %arrayidx56 = getelementptr ptr, ptr %48, i32 %i.0288
  %49 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx56, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %50, i1 noundef zeroext false) #9
  br label %exit_unroll_pm

for.inc:                                          ; preds = %if.end44
  %inc = add nuw nsw i32 %i.0288, 1
  %51 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_domains, align 4
  %cmp33 = icmp slt i32 %inc, %52
  br i1 %cmp33, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %sc_ipc = getelementptr inbounds %struct.imx8_priv, ptr %call.i, i32 0, i32 4
  %call58 = tail call i32 @imx_scu_get_handle(ptr noundef %sc_ipc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  %53 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdev, align 4
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.13, i32 noundef %call58) #12
  br label %exit_unroll_pm

if.end65:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %55 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %56 = call ptr @memset(ptr %55, i32 255, i32 48)
  %57 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %fwnode.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %55, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.15, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %62 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %63 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %64 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 992, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %65 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %66 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %ipc_dev = getelementptr inbounds %struct.imx8_priv, ptr %call.i, i32 0, i32 3
  %67 = ptrtoint ptr %ipc_dev to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i.i, ptr %ipc_dev, align 4
  %cmp.i269 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %call.i.i to i32
  br label %exit_unroll_pm

if.end73:                                         ; preds = %if.end65
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 8
  %69 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_data.i, align 4
  %dsp_ipc = getelementptr inbounds %struct.imx8_priv, ptr %call.i, i32 0, i32 2
  %71 = ptrtoint ptr %dsp_ipc to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %dsp_ipc, align 4
  %tobool78.not = icmp eq ptr %70, null
  br i1 %tobool78.not, label %if.then79, label %imx_dsp_set_data.exit

if.then79:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.17) #12
  br label %exit_pdev_unregister

imx_dsp_set_data.exit:                            ; preds = %if.end73
  %private_data.i = getelementptr inbounds %struct.imx_dsp_ipc, ptr %70, i32 0, i32 3
  %74 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i, ptr %private_data.i, align 4
  %75 = ptrtoint ptr %dsp_ipc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dsp_ipc, align 4
  %ops = getelementptr inbounds %struct.imx_dsp_ipc, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @dsp_ops, ptr %ops, align 4
  %call87 = call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #9
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %do.end93, label %if.then89

if.then89:                                        ; preds = %imx_dsp_set_data.exit
  %78 = ptrtoint ptr %call87 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %call87, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call87, i32 0, i32 1
  %80 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %79
  %add.i = add i32 %sub.i, %81
  %82 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sdev, align 4
  %call97 = call ptr @devm_ioremap(ptr noundef %83, i32 noundef %79, i32 noundef %add.i) #9
  %arrayidx98 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 1
  %84 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call97, ptr %arrayidx98, align 4
  %tobool101.not = icmp eq ptr %call97, null
  br i1 %tobool101.not, label %do.end105, label %if.end107

do.end93:                                         ; preds = %imx_dsp_set_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.20) #12
  br label %exit_pdev_unregister

do.end105:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.23, i32 noundef %79, i32 noundef %add.i) #12
  br label %exit_pdev_unregister

if.end107:                                        ; preds = %if.then89
  %mmio_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 22
  %89 = ptrtoint ptr %mmio_bar to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %mmio_bar, align 4
  %call108 = call fastcc ptr @of_parse_phandle(ptr noundef %3)
  %tobool109.not = icmp eq ptr %call108, null
  br i1 %tobool109.not, label %do.end113, label %if.end115

do.end113:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27) #12
  br label %exit_pdev_unregister

if.end115:                                        ; preds = %if.end107
  %call116 = call i32 @of_address_to_resource(ptr noundef nonnull %call108, i32 noundef 0, ptr noundef nonnull %res) #9
  call void @of_node_put(ptr noundef nonnull %call108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end123, label %do.end121

do.end121:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #12
  br label %exit_pdev_unregister

if.end123:                                        ; preds = %if.end115
  %90 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sdev, align 4
  %92 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %res, align 4
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %4, align 4
  %sub.i272 = sub i32 1, %93
  %add.i273 = add i32 %sub.i272, %95
  %call127 = call ptr @devm_ioremap_wc(ptr noundef %91, i32 noundef %93, i32 noundef %add.i273) #9
  %arrayidx129 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 3
  %96 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call127, ptr %arrayidx129, align 4
  %tobool132.not = icmp eq ptr %call127, null
  br i1 %tobool132.not, label %do.end136, label %if.end138

do.end136:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.33, i32 noundef %79, i32 noundef %add.i) #12
  br label %exit_pdev_unregister

if.end138:                                        ; preds = %if.end123
  %mailbox_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 23
  %99 = ptrtoint ptr %mailbox_bar to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 3, ptr %mailbox_bar, align 4
  %dsp_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 14
  %100 = ptrtoint ptr %dsp_box to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 8388608, ptr %dsp_box, align 4
  %101 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clks, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @imx8_dsp_clks, ptr %102, align 4
  %104 = load ptr, ptr %clks, align 4
  %num_dsp_clks = getelementptr inbounds %struct.imx_clocks, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %num_dsp_clks to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3, ptr %num_dsp_clks, align 4
  %106 = load ptr, ptr %clks, align 4
  %call142 = call i32 @imx8_parse_clocks(ptr noundef %sdev, ptr noundef %106) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.end138.exit_pdev_unregister_crit_edge, label %if.end145

if.end138.exit_pdev_unregister_crit_edge:         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_pdev_unregister

if.end145:                                        ; preds = %if.end138
  %107 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %clks, align 4
  %call147 = call i32 @imx8_enable_clocks(ptr noundef %sdev, ptr noundef %108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.end145.exit_pdev_unregister_crit_edge, label %if.end145.cleanup_crit_edge

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end145.exit_pdev_unregister_crit_edge:         ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_pdev_unregister

exit_pdev_unregister:                             ; preds = %if.end145.exit_pdev_unregister_crit_edge, %if.end138.exit_pdev_unregister_crit_edge, %do.end136, %do.end121, %do.end113, %do.end105, %do.end93, %if.then79
  %ret.0 = phi i32 [ %call116, %do.end121 ], [ %call142, %if.end138.exit_pdev_unregister_crit_edge ], [ %call147, %if.end145.exit_pdev_unregister_crit_edge ], [ -12, %do.end136 ], [ -19, %do.end113 ], [ -19, %do.end105 ], [ -22, %do.end93 ], [ -517, %if.then79 ]
  %109 = ptrtoint ptr %ipc_dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ipc_dev, align 4
  call void @platform_device_unregister(ptr noundef %110) #9
  br label %exit_unroll_pm

exit_unroll_pm:                                   ; preds = %exit_pdev_unregister, %if.then70, %do.end63, %if.then54, %if.then40
  %i.0285 = phi i32 [ %i.0288, %if.then40 ], [ %i.0288, %if.then54 ], [ %i.0.lcssa, %do.end63 ], [ %i.0.lcssa, %if.then70 ], [ %i.0.lcssa, %exit_pdev_unregister ]
  %ret.1 = phi i32 [ %40, %if.then40 ], [ -12, %if.then54 ], [ %call58, %do.end63 ], [ %68, %if.then70 ], [ %ret.0, %exit_pdev_unregister ]
  %dec289 = add i32 %i.0285, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec289)
  %cmp152290 = icmp sgt i32 %dec289, -1
  br i1 %cmp152290, label %exit_unroll_pm.while.body_crit_edge, label %exit_unroll_pm.cleanup_crit_edge

exit_unroll_pm.cleanup_crit_edge:                 ; preds = %exit_unroll_pm
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit_unroll_pm.while.body_crit_edge:              ; preds = %exit_unroll_pm
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %exit_unroll_pm.while.body_crit_edge
  %dec291 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec289, %exit_unroll_pm.while.body_crit_edge ]
  %111 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %link, align 4
  %arrayidx154 = getelementptr ptr, ptr %112, i32 %dec291
  %113 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx154, align 4
  call void @device_link_del(ptr noundef %114) #9
  %115 = ptrtoint ptr %pd_dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pd_dev, align 4
  %arrayidx156 = getelementptr ptr, ptr %116, i32 %dec291
  %117 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx156, align 4
  call void @dev_pm_domain_detach(ptr noundef %118, i1 noundef zeroext false) #9
  %dec = add nsw i32 %dec291, -1
  %cmp152.not = icmp eq i32 %dec291, 0
  br i1 %cmp152.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %exit_unroll_pm.cleanup_crit_edge, %if.end145.cleanup_crit_edge, %devm_kmalloc_array.exit268.cleanup_crit_edge, %devm_kmalloc_array.exit268.thread, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kmalloc_array.exit.thread, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit268.cleanup_crit_edge ], [ 0, %if.end145.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ], [ -12, %devm_kmalloc_array.exit268.thread ], [ %ret.1, %exit_unroll_pm.cleanup_crit_edge ], [ %ret.1, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8_remove(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %clks = getelementptr inbounds %struct.imx8_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @imx8_disable_clocks(ptr noundef %sdev, ptr noundef %5) #9
  %ipc_dev = getelementptr inbounds %struct.imx8_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ipc_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipc_dev, align 4
  tail call void @platform_device_unregister(ptr noundef %7) #9
  %num_domains = getelementptr inbounds %struct.imx8_priv, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10 = icmp sgt i32 %9, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %link = getelementptr inbounds %struct.imx8_priv, ptr %3, i32 0, i32 7
  %pd_dev = getelementptr inbounds %struct.imx8_priv, ptr %3, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.011
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @device_link_del(ptr noundef %13) #9
  %14 = ptrtoint ptr %pd_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pd_dev, align 4
  %arrayidx1 = getelementptr ptr, ptr %15, i32 %i.011
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %17, i1 noundef zeroext false) #9
  %inc = add nuw nsw i32 %i.011, 1
  %18 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_domains, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8x_run(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %sc_ipc = getelementptr inbounds %struct.imx8_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sc_ipc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ipc, align 4
  %call = tail call i32 @imx_sc_misc_set_control(ptr noundef %5, i32 noundef 512, i8 noundef zeroext 39, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %sc_ipc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_ipc, align 4
  %call2 = tail call i32 @imx_sc_misc_set_control(ptr noundef %9, i32 noundef 512, i8 noundef zeroext 40, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %sc_ipc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_ipc, align 4
  %call11 = tail call i32 @imx_sc_misc_set_control(ptr noundef %13, i32 noundef 512, i8 noundef zeroext 41, i32 noundef 90) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.44, i32 noundef %call11) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %sc_ipc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc_ipc, align 4
  %call20 = tail call i32 @imx_sc_misc_set_control(ptr noundef %17, i32 noundef 512, i8 noundef zeroext 42, i32 noundef 81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.47) #12
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %sc_ipc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_ipc, align 4
  %call29 = tail call i32 @imx_sc_pm_cpu_start(ptr noundef %21, i32 noundef 512, i1 noundef zeroext true, i64 noundef 1500479488) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end25, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ %call11, %do.end16 ], [ %call20, %do.end25 ], [ 0, %if.end27 ]
  ret i32 %retval.0
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
define internal i32 @imx8_send_msg(ptr noundef %sdev, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @sof_mailbox_write(ptr noundef %sdev, i32 noundef %5, ptr noundef %7, i32 noundef %9) #9
  %dsp_ipc = getelementptr inbounds %struct.imx8_priv, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %dsp_ipc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsp_ipc, align 4
  %call = tail call i32 @imx_dsp_ring_doorbell(ptr noundef %11, i32 noundef 0) #9
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
define internal i32 @imx8_dsp_suspend(ptr noundef %sdev, i32 noundef %target_state) #2 align 64 {
entry:
  %target_dsp_state = alloca %struct.sof_dsp_power_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_dsp_state) #9
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
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
  %dsp_ipc.i = getelementptr inbounds %struct.imx8_priv, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %13, i32 noundef 0) #9
  %14 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %15, i32 noundef 1) #9
  %16 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %17, i32 noundef 2) #9
  %18 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %19, i32 noundef 3) #9
  %clks.i = getelementptr inbounds %struct.imx8_priv, ptr %11, i32 0, i32 8
  %20 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clks.i, align 4
  tail call void @imx8_disable_clocks(ptr noundef %sdev, ptr noundef %21) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_suspended.exit.if.end_crit_edge
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_sof_dsp_set_power_state.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 %29(ptr noundef %sdev, ptr noundef nonnull %target_dsp_state) #9
  br label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then.i, %if.end.snd_sof_dsp_set_power_state.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %if.end.snd_sof_dsp_set_power_state.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_dsp_state) #9
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8_dsp_resume(ptr noundef %sdev) #2 align 64 {
entry:
  %target_dsp_state = alloca %struct.sof_dsp_power_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_dsp_state) #9
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
  %clks.i = getelementptr inbounds %struct.imx8_priv, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clks.i, align 4
  %call.i = tail call i32 @imx8_enable_clocks(ptr noundef %sdev, ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsp_ipc.i = getelementptr inbounds %struct.imx8_priv, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.i = tail call ptr @imx_dsp_request_channel(ptr noundef %8, i32 noundef 0) #9
  %9 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.1.i = tail call ptr @imx_dsp_request_channel(ptr noundef %10, i32 noundef 1) #9
  %11 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.2.i = tail call ptr @imx_dsp_request_channel(ptr noundef %12, i32 noundef 2) #9
  %13 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.3.i = tail call ptr @imx_dsp_request_channel(ptr noundef %14, i32 noundef 3) #9
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #9
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  %call.i22 = tail call i32 @__pm_runtime_set_status(ptr noundef %21, i32 noundef 0) #9
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  %call.i23 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 22
  %24 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store volatile i64 %call.i23, ptr %last_busy.i, align 8
  %25 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev, align 4
  tail call void @pm_runtime_enable(ptr noundef %26) #9
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 4
  %call.i24 = tail call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 0) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %pm_runtime_suspended.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_sof_dsp_set_power_state.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call.i27 = call i32 %36(ptr noundef %sdev, ptr noundef nonnull %target_dsp_state) #9
  br label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then.i, %if.end10.snd_sof_dsp_set_power_state.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i27, %if.then.i ], [ 0, %if.end10.snd_sof_dsp_set_power_state.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i) #9
  br label %cleanup

cleanup:                                          ; preds = %snd_sof_dsp_set_power_state.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %snd_sof_dsp_set_power_state.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_dsp_state) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8_dsp_runtime_suspend(ptr noundef %sdev) #2 align 64 {
entry:
  %target_dsp_state = alloca %struct.sof_dsp_power_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_dsp_state) #9
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
  %dsp_ipc.i = getelementptr inbounds %struct.imx8_priv, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %6, i32 noundef 0) #9
  %7 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %8, i32 noundef 1) #9
  %9 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %10, i32 noundef 2) #9
  %11 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsp_ipc.i, align 4
  tail call void @imx_dsp_free_channel(ptr noundef %12, i32 noundef 3) #9
  %clks.i = getelementptr inbounds %struct.imx8_priv, ptr %4, i32 0, i32 8
  %13 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clks.i, align 4
  tail call void @imx8_disable_clocks(ptr noundef %sdev, ptr noundef %14) #9
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_sof_dsp_set_power_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 %22(ptr noundef %sdev, ptr noundef nonnull %target_dsp_state) #9
  br label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then.i, %entry.snd_sof_dsp_set_power_state.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %entry.snd_sof_dsp_set_power_state.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_dsp_state) #9
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8_dsp_runtime_resume(ptr noundef %sdev) #2 align 64 {
entry:
  %target_dsp_state = alloca %struct.sof_dsp_power_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_dsp_state) #9
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
  %clks.i = getelementptr inbounds %struct.imx8_priv, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clks.i, align 4
  %call.i = tail call i32 @imx8_enable_clocks(ptr noundef %sdev, ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsp_ipc.i = getelementptr inbounds %struct.imx8_priv, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.i = tail call ptr @imx_dsp_request_channel(ptr noundef %8, i32 noundef 0) #9
  %9 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.1.i = tail call ptr @imx_dsp_request_channel(ptr noundef %10, i32 noundef 1) #9
  %11 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.2.i = tail call ptr @imx_dsp_request_channel(ptr noundef %12, i32 noundef 2) #9
  %13 = ptrtoint ptr %dsp_ipc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsp_ipc.i, align 4
  %call2.3.i = tail call ptr @imx_dsp_request_channel(ptr noundef %14, i32 noundef 3) #9
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_sof_dsp_set_power_state.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i6 = call i32 %22(ptr noundef %sdev, ptr noundef nonnull %target_dsp_state) #9
  br label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then.i, %if.end.snd_sof_dsp_set_power_state.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i6, %if.then.i ], [ 0, %if.end.snd_sof_dsp_set_power_state.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i) #9
  br label %cleanup

cleanup:                                          ; preds = %snd_sof_dsp_set_power_state.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %snd_sof_dsp_set_power_state.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_dsp_state) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx8_dsp_set_power_state(ptr nocapture noundef writeonly %sdev, ptr nocapture noundef readonly %target_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @imx8_get_bar_index(ptr nocapture noundef readnone %sdev, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @imx8_get_mailbox_offset(ptr nocapture noundef readnone %sdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8388608
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx8_get_window_offset(ptr nocapture noundef readnone %sdev, i32 noundef %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8388608
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_get_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np) unnamed_addr #7 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #9
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.25, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx8_parse_clocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx8_enable_clocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx8_dsp_handle_reply(ptr noundef readonly %ipc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ipc, null
  br i1 %tobool.not.i, label %entry.imx_dsp_get_data.exit_crit_edge, label %if.end.i

entry.imx_dsp_get_data.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_dsp_get_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data.i = getelementptr inbounds %struct.imx_dsp_ipc, ptr %ipc, i32 0, i32 3
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  br label %imx_dsp_get_data.exit

imx_dsp_get_data.exit:                            ; preds = %if.end.i, %entry.imx_dsp_get_data.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.imx_dsp_get_data.exit_crit_edge ]
  %sdev = getelementptr inbounds %struct.imx8_priv, ptr %retval.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 4
  %ipc_lock = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ipc_lock) #9
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  tail call void @snd_sof_ipc_get_reply(ptr noundef %5) #9
  tail call void @snd_sof_ipc_reply(ptr noundef %5, i32 noundef 0) #9
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  %ipc_lock8 = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ipc_lock8, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx8_dsp_handle_request(ptr noundef readonly %ipc) #2 align 64 {
entry:
  %p = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ipc, null
  br i1 %tobool.not.i, label %entry.imx_dsp_get_data.exit_crit_edge, label %if.end.i

entry.imx_dsp_get_data.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_dsp_get_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data.i = getelementptr inbounds %struct.imx_dsp_ipc, ptr %ipc, i32 0, i32 3
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  br label %imx_dsp_get_data.exit

imx_dsp_get_data.exit:                            ; preds = %if.end.i, %entry.imx_dsp_get_data.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.imx_dsp_get_data.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #9
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %p, align 4, !annotation !123
  %sdev = getelementptr inbounds %struct.imx8_priv, ptr %retval.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev, align 4
  %debug_box = getelementptr inbounds %struct.snd_sof_dev, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %debug_box to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_box, align 4
  %add = add i32 %6, 4
  call void @sof_mailbox_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %p, i32 noundef 4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  call void @snd_sof_dsp_panic(ptr noundef %10, i32 noundef %8, i1 noundef zeroext true) #9
  br label %if.end

if.else:                                          ; preds = %imx_dsp_get_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @snd_sof_ipc_msgs_rx(ptr noundef %10) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #9
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
declare dso_local i32 @imx_sc_misc_set_control(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_sc_pm_cpu_start(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8_run(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %sc_ipc = getelementptr inbounds %struct.imx8_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sc_ipc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ipc, align 4
  %call = tail call i32 @imx_sc_misc_set_control(ptr noundef %5, i32 noundef 512, i8 noundef zeroext 39, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %sc_ipc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_ipc, align 4
  %call2 = tail call i32 @imx_sc_pm_cpu_start(ptr noundef %9, i32 noundef 512, i1 noundef zeroext true, i64 noundef 1500479488) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_snd_sof_imx8__247_648_snd_sof_of_imx8_driver_init6, !1, !"__initcall__kmod_snd_sof_imx8__247_648_snd_sof_of_imx8_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/imx/imx8.c", i32 648, i32 1}
!2 = !{ptr @__exitcall_snd_sof_of_imx8_driver_exit, !1, !"__exitcall_snd_sof_of_imx8_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_import_ns248, !4, !"__UNIQUE_ID_import_ns248", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/imx/imx8.c", i32 650, i32 1}
!5 = !{ptr @__UNIQUE_ID_file249, !6, !"__UNIQUE_ID_file249", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/imx/imx8.c", i32 651, i32 1}
!7 = !{ptr @__UNIQUE_ID_license250, !6, !"__UNIQUE_ID_license250", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/imx/imx8.c", i32 643, i32 11}
!10 = !{ptr @snd_sof_of_imx8_driver, !11, !"snd_sof_of_imx8_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/imx/imx8.c", i32 639, i32 31}
!12 = !{ptr @sof_of_imx8_ids, !13, !"sof_of_imx8_ids", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/imx/imx8.c", i32 631, i32 34}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/imx/imx8.c", i32 619, i32 27}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/imx/imx8.c", i32 616, i32 21}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/imx/imx8.c", i32 617, i32 23}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sof/imx/imx8.c", i32 618, i32 25}
!22 = !{ptr @sof_of_imx8qxp_desc, !23, !"sof_of_imx8qxp_desc", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/imx/imx8.c", i32 615, i32 28}
!24 = !{ptr @sof_imx8x_ops, !25, !"sof_imx8x_ops", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/imx/imx8.c", i32 553, i32 37}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/imx/imx8.c", i32 209, i32 53}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sof/imx/imx8.c", i32 210, i32 14}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/sof/imx/imx8.c", i32 212, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @imx8_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @imx8_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/imx/imx8.c", i32 245, i32 3}
!40 = !{ptr @imx8_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @imx8_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/imx/imx8.c", i32 250, i32 59}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/sof/imx/imx8.c", i32 262, i32 3}
!46 = !{ptr @imx8_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx8_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/sof/imx/imx8.c", i32 275, i32 3}
!50 = !{ptr @imx8_probe._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @imx8_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/sof/imx/imx8.c", i32 282, i32 3}
!54 = !{ptr @imx8_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @imx8_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/sof/imx/imx8.c", i32 289, i32 34}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/sof/imx/imx8.c", i32 291, i32 3}
!60 = !{ptr @imx8_probe._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @imx8_probe._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/sof/imx/imx8.c", i32 299, i32 3}
!64 = !{ptr @imx8_probe._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @imx8_probe._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/sof/imx/imx8.c", i32 306, i32 3}
!68 = !{ptr @imx8_probe._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @imx8_probe._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @dsp_ops, !71, !"dsp_ops", i1 false, i1 false}
!71 = !{!"../sound/soc/sof/imx/imx8.c", i32 105, i32 27}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/imx/imx8.c", i32 46, i32 10}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/sof/imx/imx8.c", i32 47, i32 10}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/sof/imx/imx8.c", i32 48, i32 10}
!78 = !{ptr @imx8_dsp_clks, !79, !"imx8_dsp_clks", i1 false, i1 false}
!79 = !{!"../sound/soc/sof/imx/imx8.c", i32 45, i32 29}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/sof/imx/imx8.c", i32 132, i32 3}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @imx8x_run._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @imx8x_run._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/sof/imx/imx8.c", i32 139, i32 3}
!87 = !{ptr @imx8x_run._entry.40, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @imx8x_run._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/sof/imx/imx8.c", i32 146, i32 3}
!91 = !{ptr @imx8x_run._entry.43, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @imx8x_run._entry_ptr.45, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/sof/imx/imx8.c", i32 154, i32 3}
!95 = !{ptr @imx8x_run._entry.46, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @imx8x_run._entry_ptr.48, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/sof/imx/imx8.c", i32 458, i32 10}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/sof/imx/imx8.c", i32 469, i32 10}
!101 = !{ptr @imx8_dai, !102, !"imx8_dai", i1 false, i1 false}
!102 = !{!"../sound/soc/sof/imx/imx8.c", i32 456, i32 34}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/sof/imx/imx8.c", i32 626, i32 25}
!105 = !{ptr @sof_of_imx8qm_desc, !106, !"sof_of_imx8qm_desc", i1 false, i1 false}
!106 = !{!"../sound/soc/sof/imx/imx8.c", i32 623, i32 28}
!107 = !{ptr @sof_imx8_ops, !108, !"sof_imx8_ops", i1 false, i1 false}
!108 = !{!"../sound/soc/sof/imx/imx8.c", i32 490, i32 37}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/sof/imx/imx8.c", i32 172, i32 3}
!111 = !{ptr @imx8_run._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @imx8_run._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{!"auto-init"}
