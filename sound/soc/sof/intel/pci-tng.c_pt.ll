; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/pci-tng.c_pt.bc'
source_filename = "../sound/soc/sof/intel/pci-tng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_sof_debugfs_map = type { ptr, i32, i32, i32, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.dsp_arch_ops = type { ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
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

@tng_debugfs = internal constant { [8 x %struct.snd_sof_debugfs_map], [32 x i8] } { [8 x %struct.snd_sof_debugfs_map] [%struct.snd_sof_debugfs_map { ptr @.str.28, i32 0, i32 622592, i32 1056, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.29, i32 0, i32 638976, i32 1056, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.30, i32 0, i32 655360, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.31, i32 0, i32 659456, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.32, i32 0, i32 663552, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.33, i32 0, i32 786432, i32 81920, i32 1 }, %struct.snd_sof_debugfs_map { ptr @.str.34, i32 0, i32 1048576, i32 163840, i32 1 }, %struct.snd_sof_debugfs_map { ptr @.str.35, i32 0, i32 1310720, i32 256, i32 0 }], [32 x i8] zeroinitializer }, align 32
@atom_dai = external dso_local global [0 x %struct.snd_soc_dai_driver], align 8
@sof_xtensa_arch_ops = external dso_local constant %struct.dsp_arch_ops, align 4
@sof_tng_ops = dso_local constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @tangier_pci_probe, ptr null, ptr null, ptr @atom_run, ptr null, ptr @atom_reset, ptr null, ptr null, ptr @sof_io_write, ptr @sof_io_read, ptr @sof_io_write64, ptr @sof_io_read64, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr @atom_irq_handler, ptr @atom_irq_thread, ptr @atom_send_msg, ptr @snd_sof_load_firmware_memcpy, ptr @snd_sof_parse_module_memcpy, ptr @sof_fw_ready, ptr @sof_stream_pcm_open, ptr @sof_stream_pcm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_ipc_msg_data, ptr @sof_ipc_pcm_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tng_debugfs, i32 8, ptr @atom_dump, ptr null, ptr @snd_sof_debugfs_add_region_item_iomem, ptr null, ptr null, ptr null, ptr null, ptr @atom_get_mailbox_offset, ptr @atom_get_window_offset, ptr @sof_machine_register, ptr @sof_machine_unregister, ptr @atom_machine_select, ptr @atom_set_mach_params, ptr @atom_dai, i32 3, i32 524563, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@tng_chip_info = dso_local constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_sof_pci_intel_tng__252_245_snd_sof_pci_intel_tng_driver_init6 = internal global ptr @snd_sof_pci_intel_tng_driver_init, section ".initcall6.init", align 4
@snd_sof_pci_intel_tng_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.36, ptr @sof_pci_ids, ptr @sof_pci_probe, ptr @sof_pci_remove, ptr null, ptr null, ptr @sof_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_pci_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_snd_sof_pci_intel_tng_driver_exit = internal global ptr @snd_sof_pci_intel_tng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file253 = internal constant [69 x i8] c"snd_sof_pci_intel_tng.file=sound/soc/sof/intel/snd-sof-pci-intel-tng\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [43 x i8] c"snd_sof_pci_intel_tng.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns255 = internal constant [62 x i8] c"snd_sof_pci_intel_tng.import_ns=SND_SOC_SOF_INTEL_HIFI_EP_IPC\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns256 = internal constant [51 x i8] c"snd_sof_pci_intel_tng.import_ns=SND_SOC_SOF_XTENSA\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns257 = internal constant [52 x i8] c"snd_sof_pci_intel_tng.import_ns=SND_SOC_SOF_PCI_DEV\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns258 = internal constant [63 x i8] c"snd_sof_pci_intel_tng.import_ns=SND_SOC_SOF_INTEL_ATOM_HIFI_EP\00", section ".modinfo", align 1
@tangier_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 64, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: no such device supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tangier_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/sof/intel/pci-tng.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tangier_pci_probe._entry_ptr = internal global ptr @tangier_pci_probe._entry, section ".printk_index", align 4
@tangier_pci_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: failed to set DMA mask %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tangier_pci_probe._entry_ptr.7 = internal global ptr @tangier_pci_probe._entry.5, section ".printk_index", align 4
@tangier_pci_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_sof_pci_intel_tng\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LPE PHY base at 0x%x size 0x%x\00", [33 x i8] zeroinitializer }, align 32
@tangier_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error: failed to ioremap LPE base 0x%x size 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@tangier_pci_probe._entry_ptr.12 = internal global ptr @tangier_pci_probe._entry.10, section ".printk_index", align 4
@tangier_pci_probe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LPE VADDR %p\0A\00", [18 x i8] zeroinitializer }, align 32
@tangier_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 99, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IMR not set by BIOS. Ignoring\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tangier_pci_probe._entry_ptr.17 = internal global ptr @tangier_pci_probe._entry.14, section ".printk_index", align 4
@tangier_pci_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.18, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IMR base at 0x%x size 0x%x\00", [37 x i8] zeroinitializer }, align 32
@tangier_pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error: failed to ioremap IMR base 0x%x size 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@tangier_pci_probe._entry_ptr.21 = internal global ptr @tangier_pci_probe._entry.19, section ".printk_index", align 4
@tangier_pci_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.22, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IMR VADDR %p\0A\00", [18 x i8] zeroinitializer }, align 32
@tangier_pci_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.23, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"using IRQ %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AudioDSP\00", [23 x i8] zeroinitializer }, align 32
@tangier_pci_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: failed to register IRQ %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tangier_pci_probe._entry_ptr.27 = internal global ptr @tangier_pci_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmac0\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmac1\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp0\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp1\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp2\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iram\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dram\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"shim\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sof-audio-pci-intel-tng\00", [40 x i8] zeroinitializer }, align 32
@sof_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 4506, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @tng_desc to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sof_pci_pm = external dso_local constant %struct.dev_pm_ops, align 4
@tng_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @sof_tng_machines, ptr null, i8 0, i32 3, i32 -1, i32 0, i32 -1, i32 0, i32 0, ptr @tng_chip_info, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @sof_tng_ops }, [36 x i8] zeroinitializer }, align 32
@sof_tng_machines = internal global { [2 x %struct.snd_soc_acpi_mach], [40 x i8] } { [2 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] c"INT343A\00\00", ptr null, i32 0, ptr null, ptr @.str.41, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.40, ptr @.str.37 }, %struct.snd_soc_acpi_mach zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof-byt.tplg\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intel/sof\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel/sof-tplg\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-byt.ri\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"edison\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1437226410]
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"tng_debugfs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 34, i32 41 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"sof_tng_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 136, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"tng_chip_info\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 207, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant [29 x i8] c"snd_sof_pci_intel_tng_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 235, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 64, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 73, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 81, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 84, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 88, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 99, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 103, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 106, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 110, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 115, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 118, i32 9 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 120, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 35, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 37, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 39, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 41, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 43, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 45, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 47, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 49, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 236, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"sof_pci_ids\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 227, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant [9 x i8] c"tng_desc\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 212, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"sof_tng_machines\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 24, i32 33 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 222, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 219, i32 21 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 220, i32 23 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 221, i32 25 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [33 x i8] c"../sound/soc/sof/intel/pci-tng.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 27, i32 15 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_import_ns255, ptr @__UNIQUE_ID_import_ns256, ptr @__UNIQUE_ID_import_ns257, ptr @__UNIQUE_ID_import_ns258, ptr @__UNIQUE_ID_license254, ptr @__exitcall_snd_sof_pci_intel_tng_driver_exit, ptr @__initcall__kmod_snd_sof_pci_intel_tng__252_245_snd_sof_pci_intel_tng_driver_init6, ptr @snd_sof_pci_intel_tng_driver_exit, ptr @tangier_pci_probe._entry, ptr @tangier_pci_probe._entry.10, ptr @tangier_pci_probe._entry.14, ptr @tangier_pci_probe._entry.19, ptr @tangier_pci_probe._entry.25, ptr @tangier_pci_probe._entry.5, ptr @tangier_pci_probe._entry_ptr, ptr @tangier_pci_probe._entry_ptr.12, ptr @tangier_pci_probe._entry_ptr.17, ptr @tangier_pci_probe._entry_ptr.21, ptr @tangier_pci_probe._entry_ptr.27, ptr @tangier_pci_probe._entry_ptr.7, ptr @tng_debugfs, ptr @sof_tng_ops, ptr @tng_chip_info, ptr @snd_sof_pci_intel_tng_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @sof_pci_ids, ptr @tng_desc, ptr @sof_tng_machines, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tng_debugfs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_tng_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tng_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_pci_intel_tng_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tangier_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tangier_pci_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tangier_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tangier_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tangier_pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tangier_pci_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tng_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_tng_machines to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tangier_pci_probe(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %chip_info.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #7
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
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %5, i64 noundef 2147483647) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %dma_coerce_mask_and_coherent.exit

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %5, i64 noundef 2147483647) #4
  br label %if.end12

dma_coerce_mask_and_coherent.exit:                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end10, label %dma_coerce_mask_and_coherent.exit.if.end12_crit_edge

dma_coerce_mask_and_coherent.exit.if.end12_crit_edge: ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

do.end10:                                         ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #7
  br label %cleanup

if.end12:                                         ; preds = %dma_coerce_mask_and_coherent.exit.if.end12_crit_edge, %dma_coerce_mask_and_coherent.exit.thread
  %resource = getelementptr i8, ptr %5, i32 936
  %resindex_lpe_base = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %resindex_lpe_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resindex_lpe_base, align 4
  %arrayidx = getelementptr [17 x %struct.resource], ptr %resource, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %17, -786432
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tangier_pci_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tangier_pci_probe, %if.then19)) #4
          to label %do.end23 [label %if.then19], !srcloc !112

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tangier_pci_probe.__UNIQUE_ID_ddebug247, ptr noundef %19, ptr noundef nonnull @.str.9, i32 noundef %sub, i32 noundef 2097152) #4
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %if.end12
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  %call25 = tail call ptr @devm_ioremap(ptr noundef %21, i32 noundef %sub, i32 noundef 2097152) #4
  %bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %22 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call25, ptr %bar, align 4
  %tobool29.not = icmp eq ptr %call25, null
  br i1 %tobool29.not, label %do.end33, label %do.body36

do.end33:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef %sub, i32 noundef 2097152) #7
  br label %cleanup

do.body36:                                        ; preds = %do.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tangier_pci_probe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tangier_pci_probe, %if.then48)) #4
          to label %do.end54 [label %if.then48], !srcloc !112

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev, align 4
  %27 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bar, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tangier_pci_probe.__UNIQUE_ID_ddebug248, ptr noundef %26, ptr noundef nonnull @.str.13, ptr noundef %28) #4
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %do.body36
  %resindex_imr_base = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %resindex_imr_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resindex_imr_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp55 = icmp eq i32 %30, -1
  br i1 %cmp55, label %do.end54.irq_crit_edge, label %if.end57

do.end54.irq_crit_edge:                           ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %irq

if.end57:                                         ; preds = %do.end54
  %arrayidx60 = getelementptr [17 x %struct.resource], ptr %resource, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx60, align 8
  %end = getelementptr inbounds %struct.resource, ptr %arrayidx60, i32 0, i32 1
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp65 = icmp eq i32 %34, 0
  %sub74 = sub i32 1, %32
  %add = add i32 %sub74, %34
  %cond = select i1 %cmp65, i32 0, i32 %add
  %35 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %do.body83 [
    i32 1437226410, label %if.end57.do.end80_crit_edge
    i32 0, label %if.end57.do.end80_crit_edge248
  ]

if.end57.do.end80_crit_edge248:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end80

if.end57.do.end80_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end80

do.end80:                                         ; preds = %if.end57.do.end80_crit_edge, %if.end57.do.end80_crit_edge248
  %36 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.15) #7
  br label %irq

do.body83:                                        ; preds = %if.end57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tangier_pci_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tangier_pci_probe, %if.then95)) #4
          to label %do.end99 [label %if.then95], !srcloc !112

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tangier_pci_probe.__UNIQUE_ID_ddebug249, ptr noundef %39, ptr noundef nonnull @.str.18, i32 noundef %32, i32 noundef %cond) #4
  br label %do.end99

do.end99:                                         ; preds = %if.then95, %do.body83
  %40 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev, align 4
  %call101 = tail call ptr @devm_ioremap(ptr noundef %41, i32 noundef %32, i32 noundef %cond) #4
  %arrayidx103 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 2
  %42 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call101, ptr %arrayidx103, align 4
  %tobool106.not = icmp eq ptr %call101, null
  br i1 %tobool106.not, label %do.end110, label %do.body113

do.end110:                                        ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.20, i32 noundef %32, i32 noundef %cond) #7
  br label %cleanup

do.body113:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tangier_pci_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tangier_pci_probe, %if.then125)) #4
          to label %irq [label %if.then125], !srcloc !112

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev, align 4
  %47 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx103, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tangier_pci_probe.__UNIQUE_ID_ddebug250, ptr noundef %46, ptr noundef nonnull @.str.22, ptr noundef %48) #4
  br label %irq

irq:                                              ; preds = %if.then125, %do.body113, %do.end80, %do.end54.irq_crit_edge
  %irq132 = getelementptr i8, ptr %5, i32 932
  %49 = ptrtoint ptr %irq132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq132, align 4
  %ipc_irq = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 19
  %51 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ipc_irq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tangier_pci_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tangier_pci_probe, %if.then145)) #4
          to label %do.end150 [label %if.then145], !srcloc !112

if.then145:                                       ; preds = %irq
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdev, align 4
  %54 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ipc_irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tangier_pci_probe.__UNIQUE_ID_ddebug251, ptr noundef %53, ptr noundef nonnull @.str.23, i32 noundef %55) #4
  br label %do.end150

do.end150:                                        ; preds = %if.then145, %irq
  %56 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sdev, align 4
  %58 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ipc_irq, align 4
  %call153 = tail call i32 @devm_request_threaded_irq(ptr noundef %57, i32 noundef %59, ptr noundef nonnull @atom_irq_handler, ptr noundef nonnull @atom_irq_thread, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %sdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %do.end158, label %if.end161

do.end158:                                        ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sdev, align 4
  %62 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ipc_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.26, i32 noundef %63) #7
  br label %cleanup

if.end161:                                        ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #6
  %call162 = tail call zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef %sdev, i32 noundef 0, i32 noundef 1310760, i64 noundef 3, i64 noundef 1) #4
  %dsp_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 14
  %64 = ptrtoint ptr %dsp_box to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1327104, ptr %dsp_box, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %do.end158, %do.end110, %do.end33, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end10 ], [ %call153, %do.end158 ], [ %call153, %if.end161 ], [ -19, %do.end110 ], [ -19, %do.end33 ], [ -5, %do.end ]
  ret i32 %retval.0
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sof_pci_intel_tng_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @snd_sof_pci_intel_tng_driver, ptr noundef null, ptr noundef nonnull @.str.8) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_sof_pci_intel_tng_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @snd_sof_pci_intel_tng_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits64(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_pci_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_pci_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_pci_shutdown(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @sof_tng_ops, !1, !"sof_tng_ops", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 136, i32 30}
!2 = !{ptr @tng_chip_info, !3, !"tng_chip_info", i1 false, i1 false}
!3 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 207, i32 33}
!4 = !{ptr @__initcall__kmod_snd_sof_pci_intel_tng__252_245_snd_sof_pci_intel_tng_driver_init6, !5, !"__initcall__kmod_snd_sof_pci_intel_tng__252_245_snd_sof_pci_intel_tng_driver_init6", i1 false, i1 false}
!5 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 245, i32 1}
!6 = !{ptr @__exitcall_snd_sof_pci_intel_tng_driver_exit, !5, !"__exitcall_snd_sof_pci_intel_tng_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file253, !8, !"__UNIQUE_ID_file253", i1 false, i1 false}
!8 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 247, i32 1}
!9 = !{ptr @__UNIQUE_ID_license254, !8, !"__UNIQUE_ID_license254", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns255, !11, !"__UNIQUE_ID_import_ns255", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 248, i32 1}
!12 = !{ptr @__UNIQUE_ID_import_ns256, !13, !"__UNIQUE_ID_import_ns256", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 249, i32 1}
!14 = !{ptr @__UNIQUE_ID_import_ns257, !15, !"__UNIQUE_ID_import_ns257", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 250, i32 1}
!16 = !{ptr @__UNIQUE_ID_import_ns258, !17, !"__UNIQUE_ID_import_ns258", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 251, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 64, i32 3}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tangier_pci_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @tangier_pci_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 73, i32 3}
!28 = !{ptr @tangier_pci_probe._entry.5, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tangier_pci_probe._entry_ptr.7, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 81, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tangier_pci_probe.__UNIQUE_ID_ddebug247, !31, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 84, i32 3}
!36 = !{ptr @tangier_pci_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tangier_pci_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 88, i32 2}
!40 = !{ptr @tangier_pci_probe.__UNIQUE_ID_ddebug248, !39, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 99, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tangier_pci_probe._entry.14, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @tangier_pci_probe._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 103, i32 2}
!48 = !{ptr @tangier_pci_probe.__UNIQUE_ID_ddebug249, !47, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 106, i32 3}
!51 = !{ptr @tangier_pci_probe._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tangier_pci_probe._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 110, i32 2}
!55 = !{ptr @tangier_pci_probe.__UNIQUE_ID_ddebug250, !54, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 115, i32 2}
!58 = !{ptr @tangier_pci_probe.__UNIQUE_ID_ddebug251, !57, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 118, i32 9}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 120, i32 3}
!63 = !{ptr @tangier_pci_probe._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tangier_pci_probe._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 35, i32 3}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 37, i32 3}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 39, i32 3}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 41, i32 3}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 43, i32 3}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 45, i32 3}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 47, i32 3}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 49, i32 3}
!81 = !{ptr @tng_debugfs, !82, !"tng_debugfs", i1 false, i1 false}
!82 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 34, i32 41}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 236, i32 10}
!85 = !{ptr @snd_sof_pci_intel_tng_driver, !86, !"snd_sof_pci_intel_tng_driver", i1 false, i1 false}
!86 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 235, i32 26}
!87 = !{ptr @sof_pci_ids, !88, !"sof_pci_ids", i1 false, i1 false}
!88 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 227, i32 35}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 222, i32 27}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 219, i32 21}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 220, i32 23}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 221, i32 25}
!97 = !{ptr @tng_desc, !98, !"tng_desc", i1 false, i1 false}
!98 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 212, i32 34}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 27, i32 15}
!101 = !{ptr @sof_tng_machines, !102, !"sof_tng_machines", i1 false, i1 false}
!102 = !{!"../sound/soc/sof/intel/pci-tng.c", i32 24, i32 33}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148958288, i64 2148958293, i64 2148958306, i64 2148958350, i64 2148958384, i64 2148958405}
