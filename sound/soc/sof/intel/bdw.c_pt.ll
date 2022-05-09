; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/bdw.c_pt.bc'
source_filename = "../sound/soc/sof/intel/bdw.c"
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.snd_sof_ipc_msg = type { i32, ptr, ptr, i32, i32, i32, %struct.wait_queue_head, i8 }
%struct.sof_ipc_dsp_oops_xtensa = type { %struct.sof_ipc_dsp_oops_arch_hdr, %struct.sof_ipc_dsp_oops_plat_hdr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.sof_ipc_dsp_oops_arch_hdr = type { i32, i32 }
%struct.sof_ipc_dsp_oops_plat_hdr = type { i32, i32, i32, i32, i32 }
%struct.sof_ipc_panic_info = type { %struct.sof_ipc_hdr, i32, [32 x i8], i32 }

@__initcall__kmod_snd_sof_acpi_intel_bdw__253_696_snd_sof_acpi_intel_bdw_driver_init6 = internal global ptr @snd_sof_acpi_intel_bdw_driver_init, section ".initcall6.init", align 4
@snd_sof_acpi_intel_bdw_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sof_broadwell_probe, ptr @sof_acpi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @sof_broadwell_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_acpi_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snd_sof_acpi_intel_bdw_driver_exit = internal global ptr @snd_sof_acpi_intel_bdw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file254 = internal constant [71 x i8] c"snd_sof_acpi_intel_bdw.file=sound/soc/sof/intel/snd-sof-acpi-intel-bdw\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [44 x i8] c"snd_sof_acpi_intel_bdw.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns256 = internal constant [63 x i8] c"snd_sof_acpi_intel_bdw.import_ns=SND_SOC_SOF_INTEL_HIFI_EP_IPC\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns257 = internal constant [52 x i8] c"snd_sof_acpi_intel_bdw.import_ns=SND_SOC_SOF_XTENSA\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns258 = internal constant [54 x i8] c"snd_sof_acpi_intel_bdw.import_ns=SND_SOC_SOF_ACPI_DEV\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sof-audio-acpi-intel-bdw\00", [39 x i8] zeroinitializer }, align 32
@sof_broadwell_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT3438\00\00", i32 ptrtoint (ptr @sof_acpi_broadwell_desc to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sof_acpi_pm = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_sof_acpi_intel_bdw\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/sof/intel/bdw.c\00", [38 x i8] zeroinitializer }, align 32
@sof_acpi_broadwell_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @snd_soc_acpi_intel_broadwell_machines, ptr null, i8 0, i32 0, i32 1, i32 -1, i32 0, i32 0, i32 0, ptr @bdw_chip_info, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sof_bdw_ops }, [36 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_broadwell_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@bdw_chip_info = internal constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof-bdw-nocodec.tplg\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intel/sof\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel/sof-tplg\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-bdw.ri\00", [21 x i8] zeroinitializer }, align 32
@sof_bdw_ops = internal constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @bdw_probe, ptr null, ptr null, ptr @bdw_run, ptr null, ptr @bdw_reset, ptr null, ptr null, ptr @sof_io_write, ptr @sof_io_read, ptr @sof_io_write64, ptr @sof_io_read64, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr null, ptr null, ptr @bdw_send_msg, ptr @snd_sof_load_firmware_memcpy, ptr @snd_sof_parse_module_memcpy, ptr @sof_fw_ready, ptr @sof_stream_pcm_open, ptr @sof_stream_pcm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_ipc_msg_data, ptr @sof_ipc_pcm_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdw_debugfs, i32 7, ptr @bdw_dump, ptr null, ptr @snd_sof_debugfs_add_region_item_iomem, ptr null, ptr null, ptr null, ptr null, ptr @bdw_get_mailbox_offset, ptr @bdw_get_window_offset, ptr @sof_machine_register, ptr @sof_machine_unregister, ptr @bdw_machine_select, ptr @bdw_set_mach_params, ptr @bdw_dai, i32 2, i32 524563, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@bdw_debugfs = internal constant { [7 x %struct.snd_sof_debugfs_map], [52 x i8] } { [7 x %struct.snd_sof_debugfs_map] [%struct.snd_sof_debugfs_map { ptr @.str.45, i32 0, i32 1040384, i32 1056, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.46, i32 0, i32 1044480, i32 1056, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.47, i32 0, i32 1032192, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.48, i32 0, i32 1036288, i32 256, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.49, i32 0, i32 655360, i32 327680, i32 1 }, %struct.snd_sof_debugfs_map { ptr @.str.50, i32 0, i32 0, i32 655360, i32 1 }, %struct.snd_sof_debugfs_map { ptr @.str.51, i32 0, i32 1028096, i32 256, i32 0 }], [52 x i8] zeroinitializer }, align 32
@bdw_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.70, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.71, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@sof_xtensa_arch_ops = external dso_local constant %struct.dsp_arch_ops, align 4
@bdw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 422, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: no such device supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bdw_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bdw_probe._entry_ptr = internal global ptr @bdw_probe._entry, section ".printk_index", align 4
@bdw_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.3, i32 436, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: failed to get LPE base at idx %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bdw_probe._entry_ptr.15 = internal global ptr @bdw_probe._entry.13, section ".printk_index", align 4
@bdw_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.16, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LPE PHY base at 0x%x size 0x%x\00", [33 x i8] zeroinitializer }, align 32
@bdw_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.3, i32 445, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error: failed to ioremap LPE base 0x%x size 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@bdw_probe._entry_ptr.19 = internal global ptr @bdw_probe._entry.17, section ".printk_index", align 4
@bdw_probe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.20, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LPE VADDR %p\0A\00", [18 x i8] zeroinitializer }, align 32
@bdw_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.3, i32 463, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: failed to get PCI base at idx %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bdw_probe._entry_ptr.23 = internal global ptr @bdw_probe._entry.21, section ".printk_index", align 4
@bdw_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.24, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI base at 0x%x size 0x%x\00", [37 x i8] zeroinitializer }, align 32
@bdw_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.10, ptr @.str.3, i32 472, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error: failed to ioremap PCI base 0x%x size 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@bdw_probe._entry_ptr.27 = internal global ptr @bdw_probe._entry.25, section ".printk_index", align 4
@bdw_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.28, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCI VADDR %p\0A\00", [18 x i8] zeroinitializer }, align 32
@bdw_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.29, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"using IRQ %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AudioDSP\00", [23 x i8] zeroinitializer }, align 32
@bdw_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.10, ptr @.str.3, i32 488, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: failed to register IRQ %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bdw_probe._entry_ptr.33 = internal global ptr @bdw_probe._entry.31, section ".printk_index", align 4
@bdw_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.10, ptr @.str.3, i32 495, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error: failed to set DSP D0\0A\00", [35 x i8] zeroinitializer }, align 32
@bdw_probe._entry_ptr.36 = internal global ptr @bdw_probe._entry.34, section ".printk_index", align 4
@bdw_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.10, ptr @.str.3, i32 502, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: failed to set DMA mask %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bdw_probe._entry_ptr.39 = internal global ptr @bdw_probe._entry.37, section ".printk_index", align 4
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.42, i32 319, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sof/intel/../ops.h\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@snd_sof_dsp_read64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.43, ptr @.str.42, i32 329, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_sof_dsp_read64\00", [45 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read64._entry_ptr = internal global ptr @snd_sof_dsp_read64._entry, section ".printk_index", align 4
@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.snd_sof_dsp_write, ptr @.str.42, i32 299, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmac0\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmac1\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp0\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp1\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iram\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dram\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"shim\00", [27 x i8] zeroinitializer }, align 32
@bdw_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 270, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"error: ipc host -> DSP: pending %s complete %s raw 0x%8.8x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bdw_dump\00", [23 x i8] zeroinitializer }, align 32
@bdw_dump._entry_ptr = internal global ptr @bdw_dump._entry, section ".printk_index", align 4
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@bdw_dump._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.53, ptr @.str.3, i32 274, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"error: mask host: pending %s complete %s raw 0x%8.8x\0A\00", [42 x i8] zeroinitializer }, align 32
@bdw_dump._entry_ptr.58 = internal global ptr @bdw_dump._entry.56, section ".printk_index", align 4
@bdw_dump._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.53, ptr @.str.3, i32 278, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"error: ipc DSP -> host: pending %s complete %s raw 0x%8.8x\0A\00", [36 x i8] zeroinitializer }, align 32
@bdw_dump._entry_ptr.61 = internal global ptr @bdw_dump._entry.59, section ".printk_index", align 4
@bdw_dump._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.53, ptr @.str.3, i32 282, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error: mask DSP: pending %s complete %s raw 0x%8.8x\0A\00", [43 x i8] zeroinitializer }, align 32
@bdw_dump._entry_ptr.64 = internal global ptr @bdw_dump._entry.62, section ".printk_index", align 4
@bdw_get_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 238, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid header size 0x%x. FW oops is bogus\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bdw_get_registers\00", [46 x i8] zeroinitializer }, align 32
@bdw_get_registers._entry_ptr = internal global ptr @bdw_get_registers._entry, section ".printk_index", align 4
@bdw_machine_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 520, ptr @.str.69, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"warning: No matching ASoC machine driver found\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bdw_machine_select\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bdw_machine_select._entry_ptr = internal global ptr @bdw_machine_select._entry, section ".printk_index", align 4
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp0-port\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp1-port\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.72 = private unnamed_addr constant [30 x i8] c"snd_sof_acpi_intel_bdw_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 687, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 691, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"sof_broadwell_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 656, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 675, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [24 x i8] c"sof_acpi_broadwell_desc\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 642, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"bdw_chip_info\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 637, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 652, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 649, i32 21 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 650, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 651, i32 25 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"sof_bdw_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 570, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"bdw_debugfs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 59, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant [8 x i8] c"bdw_dai\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 544, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 422, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 435, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 440, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 443, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 448, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 462, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 467, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 470, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 475, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 482, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 485, i32 19 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 487, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 495, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 502, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 319, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 329, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [32 x i8] c"../sound/soc/sof/intel/../ops.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 299, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 60, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 62, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 64, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 66, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 68, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 70, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 72, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 267, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 271, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 275, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 279, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 237, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 520, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 546, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [29 x i8] c"../sound/soc/sof/intel/bdw.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 557, i32 10 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_import_ns256, ptr @__UNIQUE_ID_import_ns257, ptr @__UNIQUE_ID_import_ns258, ptr @__UNIQUE_ID_license255, ptr @__exitcall_snd_sof_acpi_intel_bdw_driver_exit, ptr @__initcall__kmod_snd_sof_acpi_intel_bdw__253_696_snd_sof_acpi_intel_bdw_driver_init6, ptr @bdw_dump._entry, ptr @bdw_dump._entry.56, ptr @bdw_dump._entry.59, ptr @bdw_dump._entry.62, ptr @bdw_dump._entry_ptr, ptr @bdw_dump._entry_ptr.58, ptr @bdw_dump._entry_ptr.61, ptr @bdw_dump._entry_ptr.64, ptr @bdw_get_registers._entry, ptr @bdw_get_registers._entry_ptr, ptr @bdw_machine_select._entry, ptr @bdw_machine_select._entry_ptr, ptr @bdw_probe._entry, ptr @bdw_probe._entry.13, ptr @bdw_probe._entry.17, ptr @bdw_probe._entry.21, ptr @bdw_probe._entry.25, ptr @bdw_probe._entry.31, ptr @bdw_probe._entry.34, ptr @bdw_probe._entry.37, ptr @bdw_probe._entry_ptr, ptr @bdw_probe._entry_ptr.15, ptr @bdw_probe._entry_ptr.19, ptr @bdw_probe._entry_ptr.23, ptr @bdw_probe._entry_ptr.27, ptr @bdw_probe._entry_ptr.33, ptr @bdw_probe._entry_ptr.36, ptr @bdw_probe._entry_ptr.39, ptr @snd_sof_acpi_intel_bdw_driver_exit, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @snd_sof_dsp_read64._entry, ptr @snd_sof_dsp_read64._entry_ptr, ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @snd_sof_acpi_intel_bdw_driver, ptr @.str, ptr @sof_broadwell_match, ptr @.str.1, ptr @.str.3, ptr @sof_acpi_broadwell_desc, ptr @bdw_chip_info, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sof_bdw_ops, ptr @bdw_debugfs, ptr @bdw_dai, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @snd_sof_dsp_write._rs, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_acpi_intel_bdw_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_broadwell_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_acpi_broadwell_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_bdw_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_debugfs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_dump._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_dump._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_dump._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_get_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdw_machine_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sof_acpi_intel_bdw_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_sof_acpi_intel_bdw_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_sof_acpi_intel_bdw_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_sof_acpi_intel_bdw_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sof_broadwell_probe(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_acpi_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdw_probe(ptr noundef %sdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %num_cores = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 56
  %10 = ptrtoint ptr %num_cores to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %num_cores, align 4
  %resindex_lpe_base = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %resindex_lpe_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resindex_lpe_base, align 4
  %call5 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef %12) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end11, label %if.then7

if.then7:                                         ; preds = %if.end
  %13 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %14
  %add.i = add i32 %sub.i, %16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdw_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdw_probe, %if.then21)) #7
          to label %do.end25 [label %if.then21], !srcloc !167

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 4
  %19 = ptrtoint ptr %resindex_lpe_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resindex_lpe_base, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.14, i32 noundef %20) #10
  br label %cleanup

if.then21:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdw_probe.__UNIQUE_ID_ddebug247, ptr noundef %22, ptr noundef nonnull @.str.16, i32 noundef %14, i32 noundef %add.i) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %if.then7
  %23 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdev, align 4
  %call27 = tail call ptr @devm_ioremap(ptr noundef %24, i32 noundef %14, i32 noundef %add.i) #7
  %bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %25 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call27, ptr %bar, align 4
  %tobool30.not = icmp eq ptr %call27, null
  br i1 %tobool30.not, label %do.end34, label %do.body37

do.end34:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.18, i32 noundef %14, i32 noundef %add.i) #10
  br label %cleanup

do.body37:                                        ; preds = %do.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdw_probe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdw_probe, %if.then49)) #7
          to label %do.end55 [label %if.then49], !srcloc !167

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev, align 4
  %30 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bar, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdw_probe.__UNIQUE_ID_ddebug248, ptr noundef %29, ptr noundef nonnull @.str.20, ptr noundef %31) #7
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %do.body37
  %mmio_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 22
  %32 = ptrtoint ptr %mmio_bar to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %mmio_bar, align 4
  %mailbox_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 23
  %33 = ptrtoint ptr %mailbox_bar to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %mailbox_bar, align 4
  %dsp_oops_offset = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 24
  %34 = ptrtoint ptr %dsp_oops_offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 647168, ptr %dsp_oops_offset, align 4
  %resindex_pcicfg_base = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %resindex_pcicfg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resindex_pcicfg_base, align 4
  %call56 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef %36) #7
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %do.end64, label %if.then58

if.then58:                                        ; preds = %do.end55
  %37 = ptrtoint ptr %call56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call56, align 4
  %end.i254 = getelementptr inbounds %struct.resource, ptr %call56, i32 0, i32 1
  %39 = ptrtoint ptr %end.i254 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end.i254, align 4
  %sub.i255 = sub i32 1, %38
  %add.i256 = add i32 %sub.i255, %40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdw_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdw_probe, %if.then80)) #7
          to label %do.end84 [label %if.then80], !srcloc !167

do.end64:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sdev, align 4
  %43 = ptrtoint ptr %resindex_pcicfg_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %resindex_pcicfg_base, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.22, i32 noundef %44) #10
  br label %cleanup

if.then80:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdw_probe.__UNIQUE_ID_ddebug249, ptr noundef %46, ptr noundef nonnull @.str.24, i32 noundef %38, i32 noundef %add.i256) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then80, %if.then58
  %47 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sdev, align 4
  %call86 = tail call ptr @devm_ioremap(ptr noundef %48, i32 noundef %38, i32 noundef %add.i256) #7
  %arrayidx88 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 1
  %49 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call86, ptr %arrayidx88, align 4
  %tobool91.not = icmp eq ptr %call86, null
  br i1 %tobool91.not, label %do.end95, label %do.body98

do.end95:                                         ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.26, i32 noundef %38, i32 noundef %add.i256) #10
  br label %cleanup

do.body98:                                        ; preds = %do.end84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdw_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdw_probe, %if.then110)) #7
          to label %do.end116 [label %if.then110], !srcloc !167

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdev, align 4
  %54 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx88, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdw_probe.__UNIQUE_ID_ddebug250, ptr noundef %53, ptr noundef nonnull @.str.28, ptr noundef %55) #7
  br label %do.end116

do.end116:                                        ; preds = %if.then110, %do.body98
  %irqindex_host_ipc = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 6
  %56 = ptrtoint ptr %irqindex_host_ipc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irqindex_host_ipc, align 4
  %call117 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef %57) #7
  %ipc_irq = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 19
  %58 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call117, ptr %ipc_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp = icmp slt i32 %call117, 0
  br i1 %cmp, label %do.end116.cleanup_crit_edge, label %do.body122

do.end116.cleanup_crit_edge:                      ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body122:                                       ; preds = %do.end116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdw_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdw_probe, %if.then134)) #7
          to label %do.end139 [label %if.then134], !srcloc !167

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdev, align 4
  %61 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ipc_irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdw_probe.__UNIQUE_ID_ddebug251, ptr noundef %60, ptr noundef nonnull @.str.29, i32 noundef %62) #7
  br label %do.end139

do.end139:                                        ; preds = %if.then134, %do.body122
  %63 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdev, align 4
  %65 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ipc_irq, align 4
  %call142 = tail call i32 @devm_request_threaded_irq(ptr noundef %64, i32 noundef %66, ptr noundef nonnull @bdw_irq_handler, ptr noundef nonnull @bdw_irq_thread, i32 noundef 128, ptr noundef nonnull @.str.30, ptr noundef %sdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %do.end147, label %if.end150

do.end147:                                        ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sdev, align 4
  %69 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ipc_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.32, i32 noundef %70) #10
  br label %cleanup

if.end150:                                        ; preds = %do.end139
  %call.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 1, i32 noundef 168, i32 noundef 1026, i32 noundef 0) #7
  %call1.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 1, i32 noundef 160, i32 noundef 1, i32 noundef 1) #7
  %call2.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 1, i32 noundef 132, i32 noundef 3, i32 noundef 0) #7
  %71 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx88, align 4
  %add.ptr.i = getelementptr i8, ptr %72, i32 132
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %74 = and i32 %73, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i = icmp eq i32 %74, 0
  br i1 %cmp.i, label %if.end150.finish.i_crit_edge, label %if.end.i

if.end150.finish.i_crit_edge:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish.i

if.end.i:                                         ; preds = %if.end150
  tail call void @msleep(i32 noundef 20) #7
  %75 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx88, align 4
  %add.ptr.1.i = getelementptr i8, ptr %76, i32 132
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #7, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %78 = and i32 %77, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.1.i = icmp eq i32 %78, 0
  br i1 %cmp.1.i, label %if.end.i.finish.i_crit_edge, label %if.end.1.i

if.end.i.finish.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish.i

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @msleep(i32 noundef 20) #7
  %79 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx88, align 4
  %add.ptr.2.i = getelementptr i8, ptr %80, i32 132
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #7, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %82 = and i32 %81, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.2.i = icmp eq i32 %82, 0
  br i1 %cmp.2.i, label %if.end.1.i.finish.i_crit_edge, label %if.end.2.i

if.end.1.i.finish.i_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish.i

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @msleep(i32 noundef 20) #7
  %83 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx88, align 4
  %add.ptr.3.i = getelementptr i8, ptr %84, i32 132
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #7, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %86 = and i32 %85, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.3.i = icmp eq i32 %86, 0
  br i1 %cmp.3.i, label %if.end.2.i.finish.i_crit_edge, label %if.end.3.i

if.end.2.i.finish.i_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish.i

if.end.3.i:                                       ; preds = %if.end.2.i
  tail call void @msleep(i32 noundef 20) #7
  %87 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx88, align 4
  %add.ptr.4.i = getelementptr i8, ptr %88, i32 132
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #7, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %90 = and i32 %89, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.4.i = icmp eq i32 %90, 0
  br i1 %cmp.4.i, label %if.end.3.i.finish.i_crit_edge, label %if.end.4.i

if.end.3.i.finish.i_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish.i

if.end.4.i:                                       ; preds = %if.end.3.i
  tail call void @msleep(i32 noundef 20) #7
  %91 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx88, align 4
  %add.ptr.5.i = getelementptr i8, ptr %92, i32 132
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i) #7, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %94 = and i32 %93, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.5.i = icmp eq i32 %94, 0
  br i1 %cmp.5.i, label %if.end.4.i.finish.i_crit_edge, label %if.end.5.i

if.end.4.i.finish.i_crit_edge:                    ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish.i

if.end.5.i:                                       ; preds = %if.end.4.i
  tail call void @msleep(i32 noundef 20) #7
  %95 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx88, align 4
  %add.ptr.6.i = getelementptr i8, ptr %96, i32 132
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i) #7, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %98 = and i32 %97, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.6.i = icmp eq i32 %98, 0
  br i1 %cmp.6.i, label %if.end.5.i.finish.i_crit_edge, label %if.end.6.i

if.end.5.i.finish.i_crit_edge:                    ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish.i

if.end.6.i:                                       ; preds = %if.end.5.i
  tail call void @msleep(i32 noundef 20) #7
  %99 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx88, align 4
  %add.ptr.7.i = getelementptr i8, ptr %100, i32 132
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7.i) #7, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %102 = and i32 %101, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.7.i = icmp eq i32 %102, 0
  br i1 %cmp.7.i, label %if.end.6.i.finish.i_crit_edge, label %if.end.7.i

if.end.6.i.finish.i_crit_edge:                    ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish.i

if.end.7.i:                                       ; preds = %if.end.6.i
  tail call void @msleep(i32 noundef 20) #7
  %103 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx88, align 4
  %add.ptr.8.i = getelementptr i8, ptr %104, i32 132
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8.i) #7, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %106 = and i32 %105, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.8.i = icmp eq i32 %106, 0
  br i1 %cmp.8.i, label %if.end.7.i.finish.i_crit_edge, label %if.end.8.i

if.end.7.i.finish.i_crit_edge:                    ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish.i

if.end.8.i:                                       ; preds = %if.end.7.i
  tail call void @msleep(i32 noundef 20) #7
  %107 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx88, align 4
  %add.ptr.9.i = getelementptr i8, ptr %108, i32 132
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9.i) #7, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %110 = and i32 %109, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.9.i = icmp eq i32 %110, 0
  br i1 %cmp.9.i, label %if.end.8.i.finish.i_crit_edge, label %do.end156

if.end.8.i.finish.i_crit_edge:                    ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish.i

finish.i:                                         ; preds = %if.end.8.i.finish.i_crit_edge, %if.end.7.i.finish.i_crit_edge, %if.end.6.i.finish.i_crit_edge, %if.end.5.i.finish.i_crit_edge, %if.end.4.i.finish.i_crit_edge, %if.end.3.i.finish.i_crit_edge, %if.end.2.i.finish.i_crit_edge, %if.end.1.i.finish.i_crit_edge, %if.end.i.finish.i_crit_edge, %if.end150.finish.i_crit_edge
  %call5.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028096, i32 noundef -2139095032, i32 noundef 0) #7
  %call6.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028096, i32 noundef 1136, i32 noundef 1088) #7
  %call7.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028216, i32 noundef 50659328, i32 noundef 50659328) #7
  %call.i.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028096, i32 noundef 1026, i32 noundef 1026) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #7
  %call1.i.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028096, i32 noundef 1026, i32 noundef 1024) #7
  %call9.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 1, i32 noundef 168, i32 noundef 1026, i32 noundef 1026) #7
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 55, i32 noundef 2) #7
  %call10.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 1, i32 noundef 168, i32 noundef -2147483648, i32 noundef 0) #7
  %call11.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 1, i32 noundef 160, i32 noundef -4, i32 noundef 0) #7
  %call12.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028224, i32 noundef 4, i32 noundef 4) #7
  %call13.i = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028328, i32 noundef 1935, i32 noundef 1935) #7
  %call14.i = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028136, i32 noundef 3, i32 noundef 0) #7
  %call15.i = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028144, i32 noundef 6356995, i32 noundef 0) #7
  %121 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdata1, align 4
  %desc.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %desc.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %124, i32 0, i32 14
  %125 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %128, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %finish.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bar, align 4
  %add.ptr.i.i = getelementptr i8, ptr %130, i32 1028152
  tail call void %128(ptr noundef %sdev, ptr noundef %add.ptr.i.i, i32 noundef 0) #7
  br label %snd_sof_dsp_write.exit.i

do.body.i.i:                                      ; preds = %finish.i
  %call.i35.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool6.not.i.i = icmp eq i32 %call.i35.i, 0
  br i1 %tobool6.not.i.i, label %do.body.i.i.snd_sof_dsp_write.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.snd_sof_dsp_write.exit.i_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_dsp_write.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.snd_sof_dsp_write) #10
  br label %snd_sof_dsp_write.exit.i

snd_sof_dsp_write.exit.i:                         ; preds = %do.end.i.i, %do.body.i.i.snd_sof_dsp_write.exit.i_crit_edge, %if.then.i.i
  %133 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pdata1, align 4
  %desc.i37.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %134, i32 0, i32 6
  %135 = ptrtoint ptr %desc.i37.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %desc.i37.i, align 4
  %ops.i38.i = getelementptr inbounds %struct.sof_dev_desc, ptr %136, i32 0, i32 14
  %137 = ptrtoint ptr %ops.i38.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i38.i, align 4
  %write.i39.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %138, i32 0, i32 8
  %139 = ptrtoint ptr %write.i39.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write.i39.i, align 4
  %tobool.not.i40.i = icmp eq ptr %140, null
  br i1 %tobool.not.i40.i, label %do.body.i46.i, label %if.then.i43.i

if.then.i43.i:                                    ; preds = %snd_sof_dsp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bar, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %142, i32 1028160
  tail call void %140(ptr noundef %sdev, ptr noundef %add.ptr.i42.i, i32 noundef 0) #7
  br label %snd_sof_dsp_write.exit48.i

do.body.i46.i:                                    ; preds = %snd_sof_dsp_write.exit.i
  %call.i44.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool6.not.i45.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool6.not.i45.i, label %do.body.i46.i.snd_sof_dsp_write.exit48.i_crit_edge, label %do.end.i47.i

do.body.i46.i.snd_sof_dsp_write.exit48.i_crit_edge: ; preds = %do.body.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_dsp_write.exit48.i

do.end.i47.i:                                     ; preds = %do.body.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.snd_sof_dsp_write) #10
  br label %snd_sof_dsp_write.exit48.i

snd_sof_dsp_write.exit48.i:                       ; preds = %do.end.i47.i, %do.body.i46.i.snd_sof_dsp_write.exit48.i_crit_edge, %if.then.i43.i
  %145 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pdata1, align 4
  %desc.i50.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %146, i32 0, i32 6
  %147 = ptrtoint ptr %desc.i50.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %desc.i50.i, align 4
  %ops.i51.i = getelementptr inbounds %struct.sof_dev_desc, ptr %148, i32 0, i32 14
  %149 = ptrtoint ptr %ops.i51.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ops.i51.i, align 4
  %write.i52.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %150, i32 0, i32 8
  %151 = ptrtoint ptr %write.i52.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write.i52.i, align 4
  %tobool.not.i53.i = icmp eq ptr %152, null
  br i1 %tobool.not.i53.i, label %do.body.i59.i, label %if.then.i56.i

if.then.i56.i:                                    ; preds = %snd_sof_dsp_write.exit48.i
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bar, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %154, i32 128
  tail call void %152(ptr noundef %sdev, ptr noundef %add.ptr.i55.i, i32 noundef 6) #7
  br label %snd_sof_dsp_write.exit61.i

do.body.i59.i:                                    ; preds = %snd_sof_dsp_write.exit48.i
  %call.i57.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %tobool6.not.i58.i = icmp eq i32 %call.i57.i, 0
  br i1 %tobool6.not.i58.i, label %do.body.i59.i.snd_sof_dsp_write.exit61.i_crit_edge, label %do.end.i60.i

do.body.i59.i.snd_sof_dsp_write.exit61.i_crit_edge: ; preds = %do.body.i59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_dsp_write.exit61.i

do.end.i60.i:                                     ; preds = %do.body.i59.i
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.snd_sof_dsp_write) #10
  br label %snd_sof_dsp_write.exit61.i

snd_sof_dsp_write.exit61.i:                       ; preds = %do.end.i60.i, %do.body.i59.i.snd_sof_dsp_write.exit61.i_crit_edge, %if.then.i56.i
  %157 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pdata1, align 4
  %desc.i63.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %desc.i63.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %desc.i63.i, align 4
  %ops.i64.i = getelementptr inbounds %struct.sof_dev_desc, ptr %160, i32 0, i32 14
  %161 = ptrtoint ptr %ops.i64.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ops.i64.i, align 4
  %write.i65.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %162, i32 0, i32 8
  %163 = ptrtoint ptr %write.i65.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %write.i65.i, align 4
  %tobool.not.i66.i = icmp eq ptr %164, null
  br i1 %tobool.not.i66.i, label %do.body.i72.i, label %if.then.i69.i

if.then.i69.i:                                    ; preds = %snd_sof_dsp_write.exit61.i
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bar, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %166, i32 224
  tail call void %164(ptr noundef %sdev, ptr noundef %add.ptr.i68.i, i32 noundef 12298) #7
  br label %if.end158

do.body.i72.i:                                    ; preds = %snd_sof_dsp_write.exit61.i
  %call.i70.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool6.not.i71.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool6.not.i71.i, label %do.body.i72.i.if.end158_crit_edge, label %do.end.i73.i

do.body.i72.i.if.end158_crit_edge:                ; preds = %do.body.i72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

do.end.i73.i:                                     ; preds = %do.body.i72.i
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.snd_sof_dsp_write) #10
  br label %if.end158

do.end156:                                        ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 20) #7
  %169 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end158:                                        ; preds = %do.end.i73.i, %do.body.i72.i.if.end158_crit_edge, %if.then.i69.i
  %171 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sdev, align 4
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %172, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %172, i32 0, i32 18
  %173 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i258 = tail call i32 @dma_set_mask(ptr noundef %172, i64 noundef 2147483647) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i258)
  %cmp.i.i = icmp eq i32 %call.i.i258, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %dma_coerce_mask_and_coherent.exit

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i259 = tail call i32 @dma_set_coherent_mask(ptr noundef %172, i64 noundef 2147483647) #7
  br label %if.end167

dma_coerce_mask_and_coherent.exit:                ; preds = %if.end158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i258)
  %cmp161 = icmp slt i32 %call.i.i258, 0
  br i1 %cmp161, label %do.end165, label %dma_coerce_mask_and_coherent.exit.if.end167_crit_edge

dma_coerce_mask_and_coherent.exit.if.end167_crit_edge: ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

do.end165:                                        ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #9
  %174 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.38, i32 noundef %call.i.i258) #10
  br label %cleanup

if.end167:                                        ; preds = %dma_coerce_mask_and_coherent.exit.if.end167_crit_edge, %dma_coerce_mask_and_coherent.exit.thread
  %dsp_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 14
  %176 = ptrtoint ptr %dsp_box to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 647168, ptr %dsp_box, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end167, %do.end165, %do.end156, %do.end147, %do.end116.cleanup_crit_edge, %do.end95, %do.end64, %do.end34, %do.end11, %do.end
  %retval.0 = phi i32 [ %call142, %do.end147 ], [ -19, %do.end156 ], [ %call.i.i258, %do.end165 ], [ %call.i.i258, %if.end167 ], [ -19, %do.end95 ], [ -19, %do.end64 ], [ -19, %do.end34 ], [ -22, %do.end11 ], [ -5, %do.end ], [ %call117, %do.end116.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdw_run(ptr noundef %sdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028328, i32 noundef 1935, i32 noundef 0) #7
  %call1 = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028096, i32 noundef 1024, i32 noundef 0) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdw_reset(ptr noundef %sdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028096, i32 noundef 1026, i32 noundef 1026) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  %call1 = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 0, i32 noundef 1028096, i32 noundef 1026, i32 noundef 1024) #7
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
declare dso_local void @sof_mailbox_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdw_send_msg(ptr noundef %sdev, ptr nocapture noundef readonly %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 15
  %0 = ptrtoint ptr %host_box to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_box, align 4
  %msg_data = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %msg_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg_data, align 4
  %msg_size = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %msg_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_size, align 4
  tail call void @sof_mailbox_write(ptr noundef %sdev, i32 noundef %1, ptr noundef %3, i32 noundef %5) #7
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %14 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 1028152
  tail call void %13(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef -2147483648) #7
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %entry
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.snd_sof_dsp_write) #10
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
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
define internal void @bdw_dump(ptr noundef %sdev, i32 noundef %flags) #4 align 64 {
entry:
  %xoops = alloca %struct.sof_ipc_dsp_oops_xtensa, align 1
  %panic_info = alloca %struct.sof_ipc_panic_info, align 1
  %stack = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %xoops) #7
  %0 = call ptr @memset(ptr %xoops, i32 255, i32 124)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %panic_info) #7
  %1 = call ptr @memset(ptr %panic_info, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack) #7
  %2 = call ptr @memset(ptr %stack, i32 255, i32 128)
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %3 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %11 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1028160
  %call.i = tail call i32 %10(ptr noundef %sdev, ptr noundef %add.ptr.i) #7
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #10
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %15 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata.i, align 4
  %desc.i58 = getelementptr inbounds %struct.snd_sof_pdata, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %desc.i58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i58, align 4
  %ops.i59 = getelementptr inbounds %struct.sof_dev_desc, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %ops.i59 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i59, align 4
  %read.i60 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %read.i60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read.i60, align 4
  %tobool.not.i61 = icmp eq ptr %22, null
  br i1 %tobool.not.i61, label %do.end.i66, label %if.then.i65

if.then.i65:                                      ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bar5.i62 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %23 = ptrtoint ptr %bar5.i62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bar5.i62, align 4
  %add.ptr.i63 = getelementptr i8, ptr %24, i32 1028152
  %call.i64 = tail call i32 %22(ptr noundef %sdev, ptr noundef %add.ptr.i63) #7
  br label %snd_sof_dsp_read.exit68

do.end.i66:                                       ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #10
  br label %snd_sof_dsp_read.exit68

snd_sof_dsp_read.exit68:                          ; preds = %do.end.i66, %if.then.i65
  %retval.0.i67 = phi i32 [ %call.i64, %if.then.i65 ], [ -524, %do.end.i66 ]
  %dsp_oops_offset.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 24
  %27 = ptrtoint ptr %dsp_oops_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dsp_oops_offset.i, align 4
  call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %28, ptr noundef nonnull %xoops, i32 noundef 124) #7
  %totalsize.i = getelementptr inbounds %struct.sof_ipc_dsp_oops_arch_hdr, ptr %xoops, i32 0, i32 1
  %29 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %totalsize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %30)
  %cmp.i = icmp ugt i32 %30, 1024
  br i1 %cmp.i, label %do.end.i69, label %if.end.i

do.end.i69:                                       ; preds = %snd_sof_dsp_read.exit68
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.65, i32 noundef %30) #10
  br label %bdw_get_registers.exit

if.end.i:                                         ; preds = %snd_sof_dsp_read.exit68
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %30, %28
  call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %add.i, ptr noundef nonnull %panic_info, i32 noundef 44) #7
  %add5.i = add i32 %add.i, 44
  call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %add5.i, ptr noundef nonnull %stack, i32 noundef 128) #7
  br label %bdw_get_registers.exit

bdw_get_registers.exit:                           ; preds = %if.end.i, %do.end.i69
  call void @sof_print_oops_and_stack(ptr noundef %sdev, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i, i32 noundef %retval.0.i67, ptr noundef nonnull %xoops, ptr noundef nonnull %panic_info, ptr noundef nonnull %stack, i32 noundef 32) #7
  %33 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdata.i, align 4
  %desc.i71 = getelementptr inbounds %struct.snd_sof_pdata, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %desc.i71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc.i71, align 4
  %ops.i72 = getelementptr inbounds %struct.sof_dev_desc, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %ops.i72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i72, align 4
  %read.i73 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %read.i73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read.i73, align 4
  %tobool.not.i74 = icmp eq ptr %40, null
  br i1 %tobool.not.i74, label %do.end.i79, label %if.then.i78

if.then.i78:                                      ; preds = %bdw_get_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bar5.i75 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %41 = ptrtoint ptr %bar5.i75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bar5.i75, align 4
  %add.ptr.i76 = getelementptr i8, ptr %42, i32 1028136
  %call.i77 = call i32 %40(ptr noundef %sdev, ptr noundef %add.ptr.i76) #7
  br label %snd_sof_dsp_read.exit81

do.end.i79:                                       ; preds = %bdw_get_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #10
  br label %snd_sof_dsp_read.exit81

snd_sof_dsp_read.exit81:                          ; preds = %do.end.i79, %if.then.i78
  %retval.0.i80 = phi i32 [ %call.i77, %if.then.i78 ], [ -524, %do.end.i79 ]
  %45 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdata.i, align 4
  %desc.i83 = getelementptr inbounds %struct.snd_sof_pdata, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %desc.i83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc.i83, align 4
  %ops.i84 = getelementptr inbounds %struct.sof_dev_desc, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %ops.i84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i84, align 4
  %read.i85 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %read.i85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read.i85, align 4
  %tobool.not.i86 = icmp eq ptr %52, null
  br i1 %tobool.not.i86, label %do.end.i91, label %if.then.i90

if.then.i90:                                      ; preds = %snd_sof_dsp_read.exit81
  call void @__sanitizer_cov_trace_pc() #9
  %bar5.i87 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %53 = ptrtoint ptr %bar5.i87 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bar5.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %54, i32 1028144
  %call.i89 = call i32 %52(ptr noundef %sdev, ptr noundef %add.ptr.i88) #7
  br label %snd_sof_dsp_read.exit93

do.end.i91:                                       ; preds = %snd_sof_dsp_read.exit81
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #10
  br label %snd_sof_dsp_read.exit93

snd_sof_dsp_read.exit93:                          ; preds = %do.end.i91, %if.then.i90
  %retval.0.i92 = phi i32 [ %call.i89, %if.then.i90 ], [ -524, %do.end.i91 ]
  %57 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i67)
  %tobool.not = icmp sgt i32 %retval.0.i67, -1
  %cond = select i1 %tobool.not, ptr @.str.55, ptr @.str.54
  %and5 = and i32 %retval.0.i67, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.55, ptr @.str.54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond, ptr noundef nonnull %cond7, i32 noundef %retval.0.i67) #10
  %59 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdev, align 4
  %and12 = and i32 %retval.0.i80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.55, ptr @.str.54
  %and15 = and i32 %retval.0.i80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.55, ptr @.str.54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond14, ptr noundef nonnull %cond17, i32 noundef %retval.0.i80) #10
  %61 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %tobool23.not = icmp sgt i32 %retval.0.i, -1
  %cond24 = select i1 %tobool23.not, ptr @.str.55, ptr @.str.54
  %and25 = and i32 %retval.0.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.55, ptr @.str.54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.60, ptr noundef nonnull %cond24, ptr noundef nonnull %cond27, i32 noundef %retval.0.i) #10
  %63 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdev, align 4
  %and32 = and i32 %retval.0.i92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %cond34 = select i1 %tobool33.not, ptr @.str.55, ptr @.str.54
  %and35 = and i32 %retval.0.i92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %cond37 = select i1 %tobool36.not, ptr @.str.55, ptr @.str.54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.63, ptr noundef nonnull %cond34, ptr noundef nonnull %cond37, i32 noundef %retval.0.i92) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %panic_info) #7
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %xoops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_debugfs_add_region_item_iomem(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bdw_get_mailbox_offset(ptr nocapture noundef readnone %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 647168
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bdw_get_window_offset(ptr nocapture noundef readnone %sdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 647168
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_machine_register(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_machine_unregister(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @bdw_machine_select(ptr nocapture noundef readonly %sdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.67) #10
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bdw_set_mach_params(ptr nocapture noundef writeonly %mach, ptr nocapture noundef readonly %sdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %platform = getelementptr inbounds %struct.snd_soc_acpi_mach, ptr %mach, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %platform to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %platform, align 4
  %ops = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %num_drv = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %12, i32 0, i32 63
  %13 = ptrtoint ptr %num_drv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_drv, align 4
  %num_dai_drivers = getelementptr inbounds %struct.snd_soc_acpi_mach, ptr %mach, i32 0, i32 10, i32 7
  %15 = ptrtoint ptr %num_dai_drivers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %num_dai_drivers, align 4
  %16 = load ptr, ptr %ops, align 4
  %drv = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %16, i32 0, i32 62
  %17 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drv, align 4
  %dai_drivers = getelementptr inbounds %struct.snd_soc_acpi_mach, ptr %mach, i32 0, i32 10, i32 8
  %19 = ptrtoint ptr %dai_drivers to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %dai_drivers, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdw_irq_handler(i32 noundef %irq, ptr noundef %context) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 21
  %8 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1028120
  %call.i = tail call i32 %7(ptr noundef %context, ptr noundef %add.ptr.i) #7
  %phi.bo = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 2
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #10
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %phi.sel, %if.then.i ], [ 0, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdw_irq_thread(i32 noundef %irq, ptr noundef %context) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read64.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %read64.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read64.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 21
  %8 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1028136
  %call.i = tail call i64 %7(ptr noundef %context, ptr noundef %add.ptr.i) #7
  %extract.t = trunc i64 %call.i to i32
  br label %snd_sof_dsp_read64.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.43) #10
  br label %snd_sof_dsp_read64.exit

snd_sof_dsp_read64.exit:                          ; preds = %do.end.i, %if.then.i
  %retval.0.i.off0 = phi i32 [ %extract.t, %if.then.i ], [ -524, %do.end.i ]
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %desc.i37 = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i37, align 4
  %ops.i38 = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i38, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i, align 4
  %tobool.not.i39 = icmp eq ptr %19, null
  br i1 %tobool.not.i39, label %do.end.i44, label %if.then.i43

if.then.i43:                                      ; preds = %snd_sof_dsp_read64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bar5.i40 = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 21
  %20 = ptrtoint ptr %bar5.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bar5.i40, align 4
  %add.ptr.i41 = getelementptr i8, ptr %21, i32 1028152
  %call.i42 = tail call i32 %19(ptr noundef %context, ptr noundef %add.ptr.i41) #7
  br label %snd_sof_dsp_read.exit

do.end.i44:                                       ; preds = %snd_sof_dsp_read64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #10
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i44, %if.then.i43
  %retval.0.i45 = phi i32 [ %call.i42, %if.then.i43 ], [ -524, %do.end.i44 ]
  %and = and i32 %retval.0.i45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and2 = and i32 %retval.0.i.off0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %snd_sof_dsp_read.exit.if.end_crit_edge

snd_sof_dsp_read.exit.if.end_crit_edge:           ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %context, i32 noundef 0, i32 noundef 1028136, i32 noundef 1, i32 noundef 1) #7
  %ipc_lock = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %ipc_lock) #7
  tail call void @snd_sof_ipc_get_reply(ptr noundef %context) #7
  tail call void @snd_sof_ipc_reply(ptr noundef %context, i32 noundef %retval.0.i45) #7
  %call.i46 = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %context, i32 noundef 0, i32 noundef 1028152, i32 noundef 1073741824, i32 noundef 0) #7
  %call1.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %context, i32 noundef 0, i32 noundef 1028136, i32 noundef 1, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %ipc_lock) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %snd_sof_dsp_read.exit.if.end_crit_edge
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata.i, align 4
  %desc.i48 = getelementptr inbounds %struct.snd_sof_pdata, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %desc.i48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i48, align 4
  %ops.i49 = getelementptr inbounds %struct.sof_dev_desc, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %ops.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i49, align 4
  %read.i50 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read.i50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i50, align 4
  %tobool.not.i51 = icmp eq ptr %31, null
  br i1 %tobool.not.i51, label %do.end.i56, label %if.then.i55

if.then.i55:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bar5.i52 = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 21
  %32 = ptrtoint ptr %bar5.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bar5.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %33, i32 1028160
  %call.i54 = tail call i32 %31(ptr noundef %context, ptr noundef %add.ptr.i53) #7
  br label %snd_sof_dsp_read.exit58

do.end.i56:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #10
  br label %snd_sof_dsp_read.exit58

snd_sof_dsp_read.exit58:                          ; preds = %do.end.i56, %if.then.i55
  %retval.0.i57 = phi i32 [ %call.i54, %if.then.i55 ], [ -524, %do.end.i56 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i57)
  %tobool8.not = icmp slt i32 %retval.0.i57, 0
  %and10 = and i32 %retval.0.i.off0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond35 = select i1 %tobool8.not, i1 %tobool11.not, i1 false
  br i1 %or.cond35, label %if.then12, label %snd_sof_dsp_read.exit58.if.end19_crit_edge

snd_sof_dsp_read.exit58.if.end19_crit_edge:       ; preds = %snd_sof_dsp_read.exit58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then12:                                        ; preds = %snd_sof_dsp_read.exit58
  %call13 = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %context, i32 noundef 0, i32 noundef 1028136, i32 noundef 2, i32 noundef 2) #7
  %and14 = and i32 %retval.0.i57, 268431360
  call void @__sanitizer_cov_trace_const_cmp4(i32 233492480, i32 %and14)
  %cmp = icmp eq i32 %and14, 233492480
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %and17 = and i32 %retval.0.i45, 65535
  %add = add nuw nsw i32 %and17, 647168
  tail call void @snd_sof_dsp_panic(ptr noundef %context, i32 noundef %add, i1 noundef zeroext true) #7
  br label %if.end18

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_sof_ipc_msgs_rx(ptr noundef %context) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %call.i59 = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %context, i32 noundef 0, i32 noundef 1028160, i32 noundef -1073741824, i32 noundef 1073741824) #7
  %call1.i60 = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %context, i32 noundef 0, i32 noundef 1028136, i32 noundef 2, i32 noundef 0) #7
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %snd_sof_dsp_read.exit58.if.end19_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_dsp_panic(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_msgs_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_get_reply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_reply(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_print_oops_and_stack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_snd_sof_acpi_intel_bdw__253_696_snd_sof_acpi_intel_bdw_driver_init6, !1, !"__initcall__kmod_snd_sof_acpi_intel_bdw__253_696_snd_sof_acpi_intel_bdw_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/bdw.c", i32 696, i32 1}
!2 = !{ptr @__exitcall_snd_sof_acpi_intel_bdw_driver_exit, !1, !"__exitcall_snd_sof_acpi_intel_bdw_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file254, !4, !"__UNIQUE_ID_file254", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/intel/bdw.c", i32 698, i32 1}
!5 = !{ptr @__UNIQUE_ID_license255, !4, !"__UNIQUE_ID_license255", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_import_ns256, !7, !"__UNIQUE_ID_import_ns256", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/intel/bdw.c", i32 699, i32 1}
!8 = !{ptr @__UNIQUE_ID_import_ns257, !9, !"__UNIQUE_ID_import_ns257", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/bdw.c", i32 700, i32 1}
!10 = !{ptr @__UNIQUE_ID_import_ns258, !11, !"__UNIQUE_ID_import_ns258", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/intel/bdw.c", i32 701, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/intel/bdw.c", i32 691, i32 11}
!14 = !{ptr @snd_sof_acpi_intel_bdw_driver, !15, !"snd_sof_acpi_intel_bdw_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/intel/bdw.c", i32 687, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/intel/bdw.c", i32 675, i32 3}
!18 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !17, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!22 = !{ptr @sof_broadwell_match, !23, !"sof_broadwell_match", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/intel/bdw.c", i32 656, i32 36}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/intel/bdw.c", i32 652, i32 27}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/intel/bdw.c", i32 649, i32 21}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sof/intel/bdw.c", i32 650, i32 23}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/sof/intel/bdw.c", i32 651, i32 25}
!32 = !{ptr @sof_acpi_broadwell_desc, !33, !"sof_acpi_broadwell_desc", i1 false, i1 false}
!33 = !{!"../sound/soc/sof/intel/bdw.c", i32 642, i32 34}
!34 = !{ptr @bdw_chip_info, !35, !"bdw_chip_info", i1 false, i1 false}
!35 = !{!"../sound/soc/sof/intel/bdw.c", i32 637, i32 40}
!36 = !{ptr @sof_bdw_ops, !37, !"sof_bdw_ops", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/intel/bdw.c", i32 570, i32 37}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/intel/bdw.c", i32 422, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @bdw_probe._entry, !39, !"_entry", i1 false, i1 false}
!44 = !{ptr @bdw_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sof/intel/bdw.c", i32 435, i32 3}
!47 = !{ptr @bdw_probe._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bdw_probe._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sof/intel/bdw.c", i32 440, i32 2}
!51 = !{ptr @bdw_probe.__UNIQUE_ID_ddebug247, !50, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/sof/intel/bdw.c", i32 443, i32 3}
!54 = !{ptr @bdw_probe._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bdw_probe._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/sof/intel/bdw.c", i32 448, i32 2}
!58 = !{ptr @bdw_probe.__UNIQUE_ID_ddebug248, !57, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/sof/intel/bdw.c", i32 462, i32 3}
!61 = !{ptr @bdw_probe._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bdw_probe._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/sof/intel/bdw.c", i32 467, i32 2}
!65 = !{ptr @bdw_probe.__UNIQUE_ID_ddebug249, !64, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/sof/intel/bdw.c", i32 470, i32 3}
!68 = !{ptr @bdw_probe._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @bdw_probe._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/sof/intel/bdw.c", i32 475, i32 2}
!72 = !{ptr @bdw_probe.__UNIQUE_ID_ddebug250, !71, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/sof/intel/bdw.c", i32 482, i32 2}
!75 = !{ptr @bdw_probe.__UNIQUE_ID_ddebug251, !74, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/sof/intel/bdw.c", i32 485, i32 19}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sof/intel/bdw.c", i32 487, i32 3}
!80 = !{ptr @bdw_probe._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @bdw_probe._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/sof/intel/bdw.c", i32 495, i32 3}
!84 = !{ptr @bdw_probe._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @bdw_probe._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/sof/intel/bdw.c", i32 502, i32 3}
!88 = !{ptr @bdw_probe._entry.37, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @bdw_probe._entry_ptr.39, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/sof/intel/../ops.h", i32 319, i32 2}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @snd_sof_dsp_read._entry, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @snd_sof_dsp_read._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/sof/intel/../ops.h", i32 329, i32 2}
!98 = !{ptr @snd_sof_dsp_read64._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @snd_sof_dsp_read64._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/sof/intel/../ops.h", i32 299, i32 2}
!102 = !{ptr @snd_sof_dsp_write._rs, !101, !"_rs", i1 false, i1 false}
!103 = !{ptr @__func__.snd_sof_dsp_write, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @snd_sof_dsp_write._entry, !101, !"_entry", i1 false, i1 false}
!105 = !{ptr @snd_sof_dsp_write._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/sof/intel/bdw.c", i32 60, i32 3}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/sof/intel/bdw.c", i32 62, i32 3}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/sof/intel/bdw.c", i32 64, i32 3}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/sof/intel/bdw.c", i32 66, i32 3}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/sof/intel/bdw.c", i32 68, i32 3}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/sof/intel/bdw.c", i32 70, i32 3}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/sof/intel/bdw.c", i32 72, i32 3}
!120 = !{ptr @bdw_debugfs, !121, !"bdw_debugfs", i1 false, i1 false}
!121 = !{!"../sound/soc/sof/intel/bdw.c", i32 59, i32 41}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/sof/intel/bdw.c", i32 267, i32 2}
!124 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @bdw_dump._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @bdw_dump._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/sof/intel/bdw.c", i32 271, i32 2}
!131 = !{ptr @bdw_dump._entry.56, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @bdw_dump._entry_ptr.58, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/sof/intel/bdw.c", i32 275, i32 2}
!135 = !{ptr @bdw_dump._entry.59, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @bdw_dump._entry_ptr.61, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/sof/intel/bdw.c", i32 279, i32 2}
!139 = !{ptr @bdw_dump._entry.62, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @bdw_dump._entry_ptr.64, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/sof/intel/bdw.c", i32 237, i32 3}
!143 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @bdw_get_registers._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @bdw_get_registers._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/sof/intel/bdw.c", i32 520, i32 3}
!148 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @bdw_machine_select._entry, !147, !"_entry", i1 false, i1 false}
!151 = !{ptr @bdw_machine_select._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/sof/intel/bdw.c", i32 546, i32 10}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/sof/intel/bdw.c", i32 557, i32 10}
!156 = !{ptr @bdw_dai, !157, !"bdw_dai", i1 false, i1 false}
!157 = !{!"../sound/soc/sof/intel/bdw.c", i32 544, i32 34}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 2148970404, i64 2148970409, i64 2148970422, i64 2148970466, i64 2148970500, i64 2148970521}
!168 = !{i64 5000516}
!169 = !{i64 2155882552}
