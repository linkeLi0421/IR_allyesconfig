; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/byt.c_pt.bc'
source_filename = "../sound/soc/sof/intel/byt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.snd_sof_debugfs_map = type { ptr, i32, i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_snd_sof_acpi_intel_byt__253_470_snd_sof_acpi_intel_byt_driver_init6 = internal global ptr @snd_sof_acpi_intel_byt_driver_init, section ".initcall6.init", align 4
@snd_sof_acpi_intel_byt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sof_baytrail_probe, ptr @sof_acpi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @sof_baytrail_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_acpi_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snd_sof_acpi_intel_byt_driver_exit = internal global ptr @snd_sof_acpi_intel_byt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file254 = internal constant [71 x i8] c"snd_sof_acpi_intel_byt.file=sound/soc/sof/intel/snd-sof-acpi-intel-byt\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [44 x i8] c"snd_sof_acpi_intel_byt.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns256 = internal constant [63 x i8] c"snd_sof_acpi_intel_byt.import_ns=SND_SOC_SOF_INTEL_HIFI_EP_IPC\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns257 = internal constant [52 x i8] c"snd_sof_acpi_intel_byt.import_ns=SND_SOC_SOF_XTENSA\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns258 = internal constant [54 x i8] c"snd_sof_acpi_intel_byt.import_ns=SND_SOC_SOF_ACPI_DEV\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns259 = internal constant [64 x i8] c"snd_sof_acpi_intel_byt.import_ns=SND_SOC_SOF_INTEL_ATOM_HIFI_EP\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sof-audio-acpi-intel-byt\00", [39 x i8] zeroinitializer }, align 32
@sof_baytrail_match = internal constant { [3 x %struct.acpi_device_id], [56 x i8] } { [3 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"80860F28\00", i32 ptrtoint (ptr @sof_acpi_baytrail_desc to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"808622A8\00", i32 ptrtoint (ptr @sof_acpi_cherrytrail_desc to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sof_acpi_pm = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_sof_acpi_intel_byt\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/sof/intel/byt.c\00", [38 x i8] zeroinitializer }, align 32
@sof_acpi_baytrail_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @snd_soc_acpi_intel_baytrail_machines, ptr null, i8 0, i32 0, i32 1, i32 2, i32 5, i32 0, i32 0, ptr @byt_chip_info, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sof_byt_ops }, [36 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_baytrail_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@byt_chip_info = internal constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof-byt-nocodec.tplg\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intel/sof\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel/sof-tplg\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-byt.ri\00", [21 x i8] zeroinitializer }, align 32
@sof_byt_ops = internal constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @byt_acpi_probe, ptr @byt_remove, ptr null, ptr @atom_run, ptr null, ptr @atom_reset, ptr null, ptr null, ptr @sof_io_write, ptr @sof_io_read, ptr @sof_io_write64, ptr @sof_io_read64, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr @atom_irq_handler, ptr @atom_irq_thread, ptr @atom_send_msg, ptr @snd_sof_load_firmware_memcpy, ptr @snd_sof_parse_module_memcpy, ptr @sof_fw_ready, ptr @sof_stream_pcm_open, ptr @sof_stream_pcm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_ipc_msg_data, ptr @sof_ipc_pcm_params, ptr null, ptr null, ptr null, ptr @byt_suspend, ptr @byt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @byt_debugfs, i32 8, ptr @atom_dump, ptr null, ptr @snd_sof_debugfs_add_region_item_iomem, ptr null, ptr null, ptr null, ptr null, ptr @atom_get_mailbox_offset, ptr @atom_get_window_offset, ptr @sof_machine_register, ptr @sof_machine_unregister, ptr @atom_machine_select, ptr @atom_set_mach_params, ptr @atom_dai, i32 3, i32 524563, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@byt_debugfs = internal constant { [8 x %struct.snd_sof_debugfs_map], [32 x i8] } { [8 x %struct.snd_sof_debugfs_map] [%struct.snd_sof_debugfs_map { ptr @.str.41, i32 0, i32 622592, i32 1056, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.42, i32 0, i32 638976, i32 1056, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.43, i32 0, i32 655360, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.44, i32 0, i32 659456, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.45, i32 0, i32 663552, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.46, i32 0, i32 786432, i32 81920, i32 1 }, %struct.snd_sof_debugfs_map { ptr @.str.47, i32 0, i32 1048576, i32 163840, i32 1 }, %struct.snd_sof_debugfs_map { ptr @.str.48, i32 0, i32 1310720, i32 256, i32 0 }], [32 x i8] zeroinitializer }, align 32
@atom_dai = external dso_local global [0 x %struct.snd_soc_dai_driver], align 8
@sof_xtensa_arch_ops = external dso_local constant %struct.dsp_arch_ops, align 4
@byt_acpi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 123, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: no such device supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"byt_acpi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry_ptr = internal global ptr @byt_acpi_probe._entry, section ".printk_index", align 4
@byt_acpi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.3, i32 132, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: failed to set DMA mask %d\0A\00", [62 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry_ptr.15 = internal global ptr @byt_acpi_probe._entry.13, section ".printk_index", align 4
@byt_acpi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.3, i32 144, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: failed to get LPE base at idx %d\0A\00", [55 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry_ptr.18 = internal global ptr @byt_acpi_probe._entry.16, section ".printk_index", align 4
@byt_acpi_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.19, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LPE PHY base at 0x%x size 0x%x\00", [33 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.3, i32 152, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error: failed to ioremap LPE base 0x%x size 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry_ptr.22 = internal global ptr @byt_acpi_probe._entry.20, section ".printk_index", align 4
@byt_acpi_probe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.23, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LPE VADDR %p\0A\00", [18 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.3, i32 172, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: failed to get IMR base at idx %d\0A\00", [55 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry_ptr.26 = internal global ptr @byt_acpi_probe._entry.24, section ".printk_index", align 4
@byt_acpi_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.3, i32 178, ptr @.str.29, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IMR not set by BIOS. Ignoring\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry_ptr.30 = internal global ptr @byt_acpi_probe._entry.27, section ".printk_index", align 4
@byt_acpi_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.31, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IMR base at 0x%x size 0x%x\00", [37 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.10, ptr @.str.3, i32 186, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error: failed to ioremap IMR base 0x%x size 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry_ptr.34 = internal global ptr @byt_acpi_probe._entry.32, section ".printk_index", align 4
@byt_acpi_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.35, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IMR VADDR %p\0A\00", [18 x i8] zeroinitializer }, align 32
@byt_acpi_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.36, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"using IRQ %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AudioDSP\00", [23 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.10, ptr @.str.3, i32 203, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: failed to register IRQ %d\0A\00", [62 x i8] zeroinitializer }, align 32
@byt_acpi_probe._entry_ptr.40 = internal global ptr @byt_acpi_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmac0\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmac1\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp0\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp1\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp2\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iram\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dram\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"shim\00", [27 x i8] zeroinitializer }, align 32
@sof_acpi_cherrytrail_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @snd_soc_acpi_intel_cherrytrail_machines, ptr null, i8 0, i32 0, i32 1, i32 2, i32 5, i32 0, i32 0, ptr @cht_chip_info, ptr @.str.49, ptr @.str.6, ptr @.str.7, ptr @.str.50, ptr @sof_cht_ops }, [36 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_cherrytrail_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@cht_chip_info = internal constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof-cht-nocodec.tplg\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-cht.ri\00", [21 x i8] zeroinitializer }, align 32
@sof_cht_ops = internal constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @byt_acpi_probe, ptr @byt_remove, ptr null, ptr @atom_run, ptr null, ptr @atom_reset, ptr null, ptr null, ptr @sof_io_write, ptr @sof_io_read, ptr @sof_io_write64, ptr @sof_io_read64, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr @atom_irq_handler, ptr @atom_irq_thread, ptr @atom_send_msg, ptr @snd_sof_load_firmware_memcpy, ptr @snd_sof_parse_module_memcpy, ptr @sof_fw_ready, ptr @sof_stream_pcm_open, ptr @sof_stream_pcm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_ipc_msg_data, ptr @sof_ipc_pcm_params, ptr null, ptr null, ptr null, ptr @byt_suspend, ptr @byt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cht_debugfs, i32 12, ptr @atom_dump, ptr null, ptr @snd_sof_debugfs_add_region_item_iomem, ptr null, ptr null, ptr null, ptr null, ptr @atom_get_mailbox_offset, ptr @atom_get_window_offset, ptr @sof_machine_register, ptr @sof_machine_unregister, ptr @atom_machine_select, ptr @atom_set_mach_params, ptr @atom_dai, i32 6, i32 524563, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@cht_debugfs = internal constant { [12 x %struct.snd_sof_debugfs_map], [48 x i8] } { [12 x %struct.snd_sof_debugfs_map] [%struct.snd_sof_debugfs_map { ptr @.str.41, i32 0, i32 622592, i32 1056, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.42, i32 0, i32 638976, i32 1056, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.51, i32 0, i32 606208, i32 1056, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.43, i32 0, i32 655360, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.44, i32 0, i32 659456, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.45, i32 0, i32 663552, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.52, i32 0, i32 671744, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.53, i32 0, i32 675840, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.54, i32 0, i32 679936, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.46, i32 0, i32 786432, i32 81920, i32 1 }, %struct.snd_sof_debugfs_map { ptr @.str.47, i32 0, i32 1048576, i32 163840, i32 1 }, %struct.snd_sof_debugfs_map { ptr @.str.48, i32 0, i32 1310720, i32 280, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmac2\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp3\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp4\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp5\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1437226410]
@___asan_gen_.55 = private unnamed_addr constant [30 x i8] c"snd_sof_acpi_intel_byt_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 461, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 465, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"sof_baytrail_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 426, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 446, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"sof_acpi_baytrail_desc\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 398, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"byt_chip_info\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 295, i32 40 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 408, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 405, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 406, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 407, i32 25 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"sof_byt_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 219, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"byt_debugfs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 28, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 123, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 132, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 143, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 148, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 151, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 155, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 171, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 178, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 182, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 185, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 189, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 197, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 200, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 202, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 29, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 31, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 33, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 35, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 37, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 39, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 41, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 43, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [26 x i8] c"sof_acpi_cherrytrail_desc\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 412, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant [14 x i8] c"cht_chip_info\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 378, i32 40 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 422, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 421, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant [12 x i8] c"sof_cht_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 301, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"cht_debugfs\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 47, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 52, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 60, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 62, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [29 x i8] c"../sound/soc/sof/intel/byt.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 64, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_import_ns256, ptr @__UNIQUE_ID_import_ns257, ptr @__UNIQUE_ID_import_ns258, ptr @__UNIQUE_ID_import_ns259, ptr @__UNIQUE_ID_license255, ptr @__exitcall_snd_sof_acpi_intel_byt_driver_exit, ptr @__initcall__kmod_snd_sof_acpi_intel_byt__253_470_snd_sof_acpi_intel_byt_driver_init6, ptr @byt_acpi_probe._entry, ptr @byt_acpi_probe._entry.13, ptr @byt_acpi_probe._entry.16, ptr @byt_acpi_probe._entry.20, ptr @byt_acpi_probe._entry.24, ptr @byt_acpi_probe._entry.27, ptr @byt_acpi_probe._entry.32, ptr @byt_acpi_probe._entry.38, ptr @byt_acpi_probe._entry_ptr, ptr @byt_acpi_probe._entry_ptr.15, ptr @byt_acpi_probe._entry_ptr.18, ptr @byt_acpi_probe._entry_ptr.22, ptr @byt_acpi_probe._entry_ptr.26, ptr @byt_acpi_probe._entry_ptr.30, ptr @byt_acpi_probe._entry_ptr.34, ptr @byt_acpi_probe._entry_ptr.40, ptr @snd_sof_acpi_intel_byt_driver_exit, ptr @snd_sof_acpi_intel_byt_driver, ptr @.str, ptr @sof_baytrail_match, ptr @.str.1, ptr @.str.3, ptr @sof_acpi_baytrail_desc, ptr @byt_chip_info, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sof_byt_ops, ptr @byt_debugfs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @sof_acpi_cherrytrail_desc, ptr @cht_chip_info, ptr @.str.49, ptr @.str.50, ptr @sof_cht_ops, ptr @cht_debugfs, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_acpi_intel_byt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_baytrail_match to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_acpi_baytrail_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_byt_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_debugfs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_acpi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_acpi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_acpi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_acpi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_acpi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_acpi_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_acpi_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_acpi_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_acpi_cherrytrail_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cht_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_cht_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cht_debugfs to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sof_acpi_intel_byt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_sof_acpi_intel_byt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_sof_acpi_intel_byt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_sof_acpi_intel_byt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sof_baytrail_probe(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_acpi_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_acpi_probe(ptr noundef %sdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %desc2 = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -16
  %chip_info.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %num_cores = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 56
  %10 = ptrtoint ptr %num_cores to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %num_cores, align 4
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 18
  %11 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %5, i64 noundef 2147483647) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %dma_coerce_mask_and_coherent.exit

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %5, i64 noundef 2147483647) #5
  br label %if.end12

dma_coerce_mask_and_coherent.exit:                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end10, label %dma_coerce_mask_and_coherent.exit.if.end12_crit_edge

dma_coerce_mask_and_coherent.exit.if.end12_crit_edge: ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end10:                                         ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef %call.i.i) #8
  br label %cleanup

if.end12:                                         ; preds = %dma_coerce_mask_and_coherent.exit.if.end12_crit_edge, %dma_coerce_mask_and_coherent.exit.thread
  %resindex_lpe_base = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %resindex_lpe_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resindex_lpe_base, align 4
  %call13 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef %15) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end19, label %if.then15

if.then15:                                        ; preds = %if.end12
  %16 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call13, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 1
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %17
  %add.i = add i32 %sub.i, %19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @byt_acpi_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@byt_acpi_probe, %if.then29)) #5
          to label %do.end33 [label %if.then29], !srcloc !142

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  %22 = ptrtoint ptr %resindex_lpe_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resindex_lpe_base, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, i32 noundef %23) #8
  br label %cleanup

if.then29:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @byt_acpi_probe.__UNIQUE_ID_ddebug247, ptr noundef %25, ptr noundef nonnull @.str.19, i32 noundef %17, i32 noundef %add.i) #5
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %if.then15
  %26 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev, align 4
  %call35 = tail call ptr @devm_ioremap(ptr noundef %27, i32 noundef %17, i32 noundef %add.i) #5
  %bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %28 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call35, ptr %bar, align 4
  %tobool38.not = icmp eq ptr %call35, null
  br i1 %tobool38.not, label %do.end42, label %do.body45

do.end42:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.21, i32 noundef %17, i32 noundef %add.i) #8
  br label %cleanup

do.body45:                                        ; preds = %do.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @byt_acpi_probe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@byt_acpi_probe, %if.then57)) #5
          to label %do.end63 [label %if.then57], !srcloc !142

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdev, align 4
  %33 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bar, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @byt_acpi_probe.__UNIQUE_ID_ddebug248, ptr noundef %32, ptr noundef nonnull @.str.23, ptr noundef %34) #5
  br label %do.end63

do.end63:                                         ; preds = %if.then57, %do.body45
  %mmio_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 22
  %35 = ptrtoint ptr %mmio_bar to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mmio_bar, align 4
  %mailbox_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 23
  %36 = ptrtoint ptr %mailbox_bar to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %mailbox_bar, align 4
  %resindex_imr_base = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %resindex_imr_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %resindex_imr_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp64 = icmp eq i32 %38, -1
  br i1 %cmp64, label %do.end63.irq_crit_edge, label %if.end66

do.end63.irq_crit_edge:                           ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq

if.end66:                                         ; preds = %do.end63
  %call68 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef %38) #5
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %do.end76, label %if.then70

if.then70:                                        ; preds = %if.end66
  %39 = ptrtoint ptr %call68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call68, align 4
  %end.i260 = getelementptr inbounds %struct.resource, ptr %call68, i32 0, i32 1
  %41 = ptrtoint ptr %end.i260 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %end.i260, align 4
  %sub.i261 = sub i32 1, %40
  %add.i262 = add i32 %sub.i261, %42
  %43 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %do.body88 [
    i32 1437226410, label %if.then70.do.end85_crit_edge
    i32 0, label %if.then70.do.end85_crit_edge270
  ]

if.then70.do.end85_crit_edge270:                  ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end85

if.then70.do.end85_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end85

do.end76:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdev, align 4
  %46 = ptrtoint ptr %resindex_imr_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %resindex_imr_base, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.25, i32 noundef %47) #8
  br label %cleanup

do.end85:                                         ; preds = %if.then70.do.end85_crit_edge, %if.then70.do.end85_crit_edge270
  %48 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.28) #8
  br label %irq

do.body88:                                        ; preds = %if.then70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @byt_acpi_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@byt_acpi_probe, %if.then100)) #5
          to label %do.end104 [label %if.then100], !srcloc !142

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @byt_acpi_probe.__UNIQUE_ID_ddebug249, ptr noundef %51, ptr noundef nonnull @.str.31, i32 noundef %40, i32 noundef %add.i262) #5
  br label %do.end104

do.end104:                                        ; preds = %if.then100, %do.body88
  %52 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdev, align 4
  %call106 = tail call ptr @devm_ioremap(ptr noundef %53, i32 noundef %40, i32 noundef %add.i262) #5
  %arrayidx108 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 2
  %54 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call106, ptr %arrayidx108, align 4
  %tobool111.not = icmp eq ptr %call106, null
  br i1 %tobool111.not, label %do.end115, label %do.body118

do.end115:                                        ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.33, i32 noundef %40, i32 noundef %add.i262) #8
  br label %cleanup

do.body118:                                       ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @byt_acpi_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@byt_acpi_probe, %if.then130)) #5
          to label %irq [label %if.then130], !srcloc !142

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdev, align 4
  %59 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx108, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @byt_acpi_probe.__UNIQUE_ID_ddebug250, ptr noundef %58, ptr noundef nonnull @.str.35, ptr noundef %60) #5
  br label %irq

irq:                                              ; preds = %if.then130, %do.body118, %do.end85, %do.end63.irq_crit_edge
  %irqindex_host_ipc = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 6
  %61 = ptrtoint ptr %irqindex_host_ipc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irqindex_host_ipc, align 4
  %call137 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef %62) #5
  %ipc_irq = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 19
  %63 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call137, ptr %ipc_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp139 = icmp slt i32 %call137, 0
  br i1 %cmp139, label %irq.cleanup_crit_edge, label %do.body143

irq.cleanup_crit_edge:                            ; preds = %irq
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body143:                                       ; preds = %irq
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @byt_acpi_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@byt_acpi_probe, %if.then155)) #5
          to label %do.end160 [label %if.then155], !srcloc !142

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sdev, align 4
  %66 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ipc_irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @byt_acpi_probe.__UNIQUE_ID_ddebug251, ptr noundef %65, ptr noundef nonnull @.str.36, i32 noundef %67) #5
  br label %do.end160

do.end160:                                        ; preds = %if.then155, %do.body143
  %68 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sdev, align 4
  %70 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ipc_irq, align 4
  %call163 = tail call i32 @devm_request_threaded_irq(ptr noundef %69, i32 noundef %71, ptr noundef nonnull @atom_irq_handler, ptr noundef nonnull @atom_irq_thread, i32 noundef 128, ptr noundef nonnull @.str.37, ptr noundef %sdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %do.end168, label %if.end171

do.end168:                                        ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sdev, align 4
  %74 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ipc_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.39, i32 noundef %75) #8
  br label %cleanup

if.end171:                                        ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #7
  %call172 = tail call zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef %sdev, i32 noundef 0, i32 noundef 1310760, i64 noundef 3, i64 noundef 1) #5
  %dsp_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 14
  %76 = ptrtoint ptr %dsp_box to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1327104, ptr %dsp_box, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end171, %do.end168, %irq.cleanup_crit_edge, %do.end115, %do.end76, %do.end42, %do.end19, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end10 ], [ %call163, %do.end168 ], [ %call163, %if.end171 ], [ -19, %do.end115 ], [ -19, %do.end76 ], [ -19, %do.end42 ], [ -22, %do.end19 ], [ -5, %do.end ], [ %call137, %irq.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_remove(ptr noundef %sdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef %sdev, i32 noundef 0, i32 noundef 1310760, i64 noundef 3, i64 noundef 3) #5
  %call1.i = tail call zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef %sdev, i32 noundef 0, i32 noundef 1310768, i64 noundef 3, i64 noundef 3) #5
  %call2.i = tail call zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef %sdev, i32 noundef 0, i32 noundef 1310720, i64 noundef 3, i64 noundef 3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_reset(ptr noundef) #1

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
declare dso_local void @sof_mailbox_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_irq_handler(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_irq_thread(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_send_msg(ptr noundef, ptr noundef) #1

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
define internal i32 @byt_suspend(ptr noundef %sdev, i32 noundef %target_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef %sdev, i32 noundef 0, i32 noundef 1310760, i64 noundef 3, i64 noundef 3) #5
  %call1.i = tail call zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef %sdev, i32 noundef 0, i32 noundef 1310768, i64 noundef 3, i64 noundef 3) #5
  %call2.i = tail call zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef %sdev, i32 noundef 0, i32 noundef 1310720, i64 noundef 3, i64 noundef 3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_resume(ptr noundef %sdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef %sdev, i32 noundef 0, i32 noundef 1310760, i64 noundef 3, i64 noundef 1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atom_dump(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_debugfs_add_region_item_iomem(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_get_mailbox_offset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_get_window_offset(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_machine_register(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_machine_unregister(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atom_machine_select(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atom_set_mach_params(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__initcall__kmod_snd_sof_acpi_intel_byt__253_470_snd_sof_acpi_intel_byt_driver_init6, !1, !"__initcall__kmod_snd_sof_acpi_intel_byt__253_470_snd_sof_acpi_intel_byt_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/byt.c", i32 470, i32 1}
!2 = !{ptr @__exitcall_snd_sof_acpi_intel_byt_driver_exit, !1, !"__exitcall_snd_sof_acpi_intel_byt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file254, !4, !"__UNIQUE_ID_file254", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/intel/byt.c", i32 472, i32 1}
!5 = !{ptr @__UNIQUE_ID_license255, !4, !"__UNIQUE_ID_license255", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_import_ns256, !7, !"__UNIQUE_ID_import_ns256", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/intel/byt.c", i32 473, i32 1}
!8 = !{ptr @__UNIQUE_ID_import_ns257, !9, !"__UNIQUE_ID_import_ns257", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/byt.c", i32 474, i32 1}
!10 = !{ptr @__UNIQUE_ID_import_ns258, !11, !"__UNIQUE_ID_import_ns258", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/intel/byt.c", i32 475, i32 1}
!12 = !{ptr @__UNIQUE_ID_import_ns259, !13, !"__UNIQUE_ID_import_ns259", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/intel/byt.c", i32 476, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/intel/byt.c", i32 465, i32 11}
!16 = !{ptr @snd_sof_acpi_intel_byt_driver, !17, !"snd_sof_acpi_intel_byt_driver", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/intel/byt.c", i32 461, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/intel/byt.c", i32 446, i32 3}
!20 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !19, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/intel/byt.c", i32 408, i32 27}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/intel/byt.c", i32 405, i32 21}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sof/intel/byt.c", i32 406, i32 23}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/sof/intel/byt.c", i32 407, i32 25}
!32 = !{ptr @sof_acpi_baytrail_desc, !33, !"sof_acpi_baytrail_desc", i1 false, i1 false}
!33 = !{!"../sound/soc/sof/intel/byt.c", i32 398, i32 34}
!34 = !{ptr @byt_chip_info, !35, !"byt_chip_info", i1 false, i1 false}
!35 = !{!"../sound/soc/sof/intel/byt.c", i32 295, i32 40}
!36 = !{ptr @sof_byt_ops, !37, !"sof_byt_ops", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/intel/byt.c", i32 219, i32 37}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/intel/byt.c", i32 123, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @byt_acpi_probe._entry, !39, !"_entry", i1 false, i1 false}
!44 = !{ptr @byt_acpi_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sof/intel/byt.c", i32 132, i32 3}
!47 = !{ptr @byt_acpi_probe._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @byt_acpi_probe._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sof/intel/byt.c", i32 143, i32 3}
!51 = !{ptr @byt_acpi_probe._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @byt_acpi_probe._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/intel/byt.c", i32 148, i32 2}
!55 = !{ptr @byt_acpi_probe.__UNIQUE_ID_ddebug247, !54, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/sof/intel/byt.c", i32 151, i32 3}
!58 = !{ptr @byt_acpi_probe._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @byt_acpi_probe._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/sof/intel/byt.c", i32 155, i32 2}
!62 = !{ptr @byt_acpi_probe.__UNIQUE_ID_ddebug248, !61, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/sof/intel/byt.c", i32 171, i32 3}
!65 = !{ptr @byt_acpi_probe._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @byt_acpi_probe._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/sof/intel/byt.c", i32 178, i32 3}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @byt_acpi_probe._entry.27, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @byt_acpi_probe._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/intel/byt.c", i32 182, i32 2}
!74 = !{ptr @byt_acpi_probe.__UNIQUE_ID_ddebug249, !73, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/sof/intel/byt.c", i32 185, i32 3}
!77 = !{ptr @byt_acpi_probe._entry.32, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @byt_acpi_probe._entry_ptr.34, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/sof/intel/byt.c", i32 189, i32 2}
!81 = !{ptr @byt_acpi_probe.__UNIQUE_ID_ddebug250, !80, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/sof/intel/byt.c", i32 197, i32 2}
!84 = !{ptr @byt_acpi_probe.__UNIQUE_ID_ddebug251, !83, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/sof/intel/byt.c", i32 200, i32 19}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/sof/intel/byt.c", i32 202, i32 3}
!89 = !{ptr @byt_acpi_probe._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @byt_acpi_probe._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/sof/intel/byt.c", i32 29, i32 3}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/sof/intel/byt.c", i32 31, i32 3}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/sof/intel/byt.c", i32 33, i32 3}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/sof/intel/byt.c", i32 35, i32 3}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/sof/intel/byt.c", i32 37, i32 3}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/sof/intel/byt.c", i32 39, i32 3}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/sof/intel/byt.c", i32 41, i32 3}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/sof/intel/byt.c", i32 43, i32 3}
!107 = !{ptr @byt_debugfs, !108, !"byt_debugfs", i1 false, i1 false}
!108 = !{!"../sound/soc/sof/intel/byt.c", i32 28, i32 41}
!109 = distinct !{null, !110, !"sof_acpi_baytrailcr_desc", i1 false, i1 false}
!110 = !{!"../sound/soc/sof/intel/byt.c", i32 384, i32 34}
!111 = !{ptr @sof_baytrail_match, !112, !"sof_baytrail_match", i1 false, i1 false}
!112 = !{!"../sound/soc/sof/intel/byt.c", i32 426, i32 36}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/sof/intel/byt.c", i32 422, i32 27}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/sof/intel/byt.c", i32 421, i32 25}
!117 = !{ptr @sof_acpi_cherrytrail_desc, !118, !"sof_acpi_cherrytrail_desc", i1 false, i1 false}
!118 = !{!"../sound/soc/sof/intel/byt.c", i32 412, i32 34}
!119 = !{ptr @cht_chip_info, !120, !"cht_chip_info", i1 false, i1 false}
!120 = !{!"../sound/soc/sof/intel/byt.c", i32 378, i32 40}
!121 = !{ptr @sof_cht_ops, !122, !"sof_cht_ops", i1 false, i1 false}
!122 = !{!"../sound/soc/sof/intel/byt.c", i32 301, i32 37}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/sof/intel/byt.c", i32 52, i32 3}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/sof/intel/byt.c", i32 60, i32 3}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/sof/intel/byt.c", i32 62, i32 3}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/sof/intel/byt.c", i32 64, i32 3}
!131 = !{ptr @cht_debugfs, !132, !"cht_debugfs", i1 false, i1 false}
!132 = !{!"../sound/soc/sof/intel/byt.c", i32 47, i32 41}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2148964374, i64 2148964379, i64 2148964392, i64 2148964436, i64 2148964470, i64 2148964491}
