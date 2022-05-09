; ModuleID = '/llk/IR_all_yes/drivers/firewire/ohci.c_pt.bc'
source_filename = "../drivers/firewire/ohci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fw_card_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.73 = type { i16, i16, i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.fw_ohci = type { %struct.fw_card, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, %struct.spinlock, %struct.mutex, ptr, i32, %struct.ar_context, %struct.ar_context, %struct.context, %struct.context, i32, i32, ptr, i64, i32, i32, ptr, i64, i8, ptr, i32, ptr, i32, i32, ptr, i32, %struct.work_struct, [512 x i32] }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.ar_context = type { ptr, [8 x ptr], ptr, ptr, i32, ptr, i32, i32, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.72, i32 }
%union.anon.72 = type { ptr }
%struct.context = type { ptr, i32, i32, i32, i8, i8, %struct.list_head, ptr, ptr, ptr, i32, ptr, %struct.tasklet_struct }
%struct.descriptor_buffer = type { %struct.list_head, i32, i32, i32, [12 x i8], [0 x %struct.descriptor] }
%struct.descriptor = type { i16, i16, i32, i32, i16, i16 }
%struct.iso_context = type { %struct.fw_iso_context, %struct.context, ptr, i32, i32, i32, i16, i16, i8, i8 }
%struct.fw_iso_context = type { ptr, i32, i32, i32, i8, i32, %union.fw_iso_callback, ptr }
%union.fw_iso_callback = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.driver_data = type { [8 x i8], ptr }
%struct.fw_iso_packet = type { i16, i16, [0 x i32] }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }

@__param_str_quirks = internal constant [21 x i8] c"firewire_ohci.quirks\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@param_quirks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @param_quirks } }, section "__param", align 4
@__UNIQUE_ID_quirkstype236 = internal constant [34 x i8] c"firewire_ohci.parmtype=quirks:int\00", section ".modinfo", align 1
@__UNIQUE_ID_quirks237 = internal constant [243 x i8] c"firewire_ohci.parm=quirks:Chip quirks (default = 0, nonatomic cycle timer = 0x1, reset packet generation = 0x2, AR/selfID endianness = 0x4, no 1394a enhancements = 0x8, disable MSI = 0x10, TI SLLZ059 erratum = 0x20, IR wake unreliable = 0x40)\00", section ".modinfo", align 1
@__param_str_debug = internal constant [20 x i8] c"firewire_ohci.debug\00", align 1
@param_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @param_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype238 = internal constant [33 x i8] c"firewire_ohci.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug239 = internal constant [149 x i8] c"firewire_ohci.parm=debug:Verbose logging (default = 0, AT/AR events = 1, self-IDs = 2, IRQs = 4, busReset events = 8, or a combination, or all = -1)\00", section ".modinfo", align 1
@__param_str_remote_dma = internal constant [25 x i8] c"firewire_ohci.remote_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@param_remote_dma = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_remote_dma = internal constant %struct.kernel_param { ptr @__param_str_remote_dma, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @param_remote_dma } }, section "__param", align 4
@__UNIQUE_ID_remote_dmatype240 = internal constant [39 x i8] c"firewire_ohci.parmtype=remote_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_remote_dma241 = internal constant [73 x i8] c"firewire_ohci.parm=remote_dma:Enable unfiltered remote DMA (default = N)\00", section ".modinfo", align 1
@fw_ohci_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @ohci_driver_name, ptr @pci_table, ptr @pci_probe, ptr @pci_remove, ptr @pci_suspend, ptr @pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@selfid_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_firewire_ohci__253_3876_fw_ohci_init6 = internal global ptr @fw_ohci_init, section ".initcall6.init", align 4
@__exitcall_fw_ohci_cleanup = internal global ptr @fw_ohci_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author254 = internal constant [60 x i8] c"firewire_ohci.author=Kristian Hoegsberg <krh@bitplanet.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [67 x i8] c"firewire_ohci.description=Driver for PCI OHCI IEEE1394 controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [50 x i8] c"firewire_ohci.file=drivers/firewire/firewire-ohci\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [26 x i8] c"firewire_ohci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias258 = internal constant [29 x i8] c"firewire_ohci.alias=ohci1394\00", section ".modinfo", align 1
@ohci_driver_name = internal global { [14 x i8], [18 x i8] } { [14 x i8] c"firewire_ohci\00", [18 x i8] zeroinitializer }, align 32
@pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 786448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3557, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Pinnacle MovieBoard is not yet supported\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/firewire/ohci.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_probe._entry_ptr = internal global ptr @pci_probe._entry, section ".printk_index", align 4
@ohci_driver = internal constant { %struct.fw_card_driver, [56 x i8] } { %struct.fw_card_driver { ptr @ohci_enable, ptr @ohci_read_phy_reg, ptr @ohci_update_phy_reg, ptr @ohci_set_config_rom, ptr @ohci_send_request, ptr @ohci_send_response, ptr @ohci_cancel_packet, ptr @ohci_enable_phys_dma, ptr @ohci_read_csr, ptr @ohci_write_csr, ptr @ohci_allocate_iso_context, ptr @ohci_free_iso_context, ptr @ohci_start_iso, ptr @ohci_set_iso_channels, ptr @ohci_queue_iso, ptr @ohci_flush_queue_iso, ptr @ohci_flush_iso_completions, ptr @ohci_stop_iso }, [56 x i8] zeroinitializer }, align 32
@pci_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 3573, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable OHCI hardware\0A\00", [32 x i8] zeroinitializer }, align 32
@pci_probe._entry_ptr.7 = internal global ptr @pci_probe._entry.5, section ".printk_index", align 4
@pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ohci->lock\00", [20 x i8] zeroinitializer }, align 32
@pci_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ohci->phy_reg_mutex\00", [43 x i8] zeroinitializer }, align 32
@pci_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&ohci->bus_reset_work)\00", [55 x i8] zeroinitializer }, align 32
@pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 3588, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid MMIO resource\0A\00", [41 x i8] zeroinitializer }, align 32
@pci_probe._entry_ptr.15 = internal global ptr @pci_probe._entry.13, section ".printk_index", align 4
@pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 3595, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MMIO resource unavailable\0A\00", [37 x i8] zeroinitializer }, align 32
@pci_probe._entry_ptr.18 = internal global ptr @pci_probe._entry.16, section ".printk_index", align 4
@pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 3601, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to remap registers\0A\00", [37 x i8] zeroinitializer }, align 32
@pci_probe._entry_ptr.21 = internal global ptr @pci_probe._entry.19, section ".printk_index", align 4
@ohci_quirks = internal constant { [16 x %struct.anon.73], [32 x i8] } { [16 x %struct.anon.73] [%struct.anon.73 { i16 4281, i16 -1, i16 -1, i16 1 }, %struct.anon.73 { i16 4203, i16 24, i16 -1, i16 4 }, %struct.anon.73 { i16 4545, i16 22785, i16 6, i16 16 }, %struct.anon.73 { i16 4354, i16 16385, i16 -1, i16 2 }, %struct.anon.73 { i16 6523, i16 9088, i16 -1, i16 16 }, %struct.anon.73 { i16 4147, i16 -1, i16 -1, i16 1 }, %struct.anon.73 { i16 4631, i16 -1, i16 -1, i16 16 }, %struct.anon.73 { i16 4480, i16 -1, i16 -1, i16 17 }, %struct.anon.73 { i16 4172, i16 -32759, i16 -1, i16 11 }, %struct.anon.73 { i16 4172, i16 -32736, i16 -1, i16 34 }, %struct.anon.73 { i16 4172, i16 -32731, i16 -1, i16 34 }, %struct.anon.73 { i16 4172, i16 -1, i16 -1, i16 2 }, %struct.anon.73 { i16 4358, i16 12356, i16 70, i16 65 }, %struct.anon.73 { i16 4358, i16 13315, i16 0, i16 17 }, %struct.anon.73 { i16 4358, i16 13315, i16 -1, i16 16 }, %struct.anon.73 { i16 4358, i16 -1, i16 -1, i16 17 }], [32 x i8] zeroinitializer }, align 32
@pci_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 3667, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"overriding IsoXmitIntMask\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@pci_probe._entry_ptr.25 = internal global ptr @pci_probe._entry.22, section ".printk_index", align 4
@pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 3695, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate interrupt %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pci_probe._entry_ptr.28 = internal global ptr @pci_probe._entry.26, section ".printk_index", align 4
@pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 3711, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"added OHCI v%x.%x device as card %d, %d IR + %d IT contexts, quirks 0x%x%s\0A\00", [52 x i8] zeroinitializer }, align 32
@pci_probe._entry_ptr.31 = internal global ptr @pci_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", physUB\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ohci_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 2270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to reset ohci card\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ohci_enable\00", [20 x i8] zeroinitializer }, align 32
@ohci_enable._entry_ptr = internal global ptr @ohci_enable._entry, section ".printk_index", align 4
@ohci_enable._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 2299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set Link Power Status\0A\00", [63 x i8] zeroinitializer }, align 32
@ohci_enable._entry_ptr.38 = internal global ptr @ohci_enable._entry.36, section ".printk_index", align 4
@ohci_enable._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 2308, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"local TSB41BA3D phy\0A\00", [43 x i8] zeroinitializer }, align 32
@ohci_enable._entry_ptr.41 = internal global ptr @ohci_enable._entry.39, section ".printk_index", align 4
@read_phy_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 570, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read phy reg %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_phy_reg\00", [19 x i8] zeroinitializer }, align 32
@read_phy_reg._entry_ptr = internal global ptr @read_phy_reg._entry, section ".printk_index", align 4
@write_phy_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 593, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to write phy reg %d, val %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write_phy_reg\00", [18 x i8] zeroinitializer }, align 32
@write_phy_reg._entry_ptr = internal global ptr @write_phy_reg._entry, section ".printk_index", align 4
@handle_local_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1580, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"swap not done (CSR lock timeout)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"handle_local_lock\00", [46 x i8] zeroinitializer }, align 32
@handle_local_lock._entry_ptr = internal global ptr @handle_local_lock._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@log_ar_at_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 485, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"A%c evt_bus_reset, generation %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"log_ar_at_event\00", [16 x i8] zeroinitializer }, align 32
@log_ar_at_event._entry_ptr = internal global ptr @log_ar_at_event._entry, section ".printk_index", align 4
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" = %08x\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %x,%x\00", [25 x i8] zeroinitializer }, align 32
@log_ar_at_event._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.51, ptr @.str.2, i32 505, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"A%c %s, %s\0A\00", [20 x i8] zeroinitializer }, align 32
@log_ar_at_event._entry_ptr.56 = internal global ptr @log_ar_at_event._entry.54, section ".printk_index", align 4
@evts = internal constant { [33 x ptr], [60 x i8] } { [33 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.67, ptr @.str.67, ptr @.str.78, ptr @.str.79, ptr @.str.67, ptr @.str.80, ptr @.str.81, ptr @.str.67, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.67, ptr @.str.67, ptr @.str.67, ptr @.str.67, ptr @.str.85, ptr @.str.67, ptr @.str.86, ptr @.str.87, ptr @.str.67, ptr @.str.88], [60 x i8] zeroinitializer }, align 32
@tcodes = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.67, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.67, ptr @.str.67, ptr @.str.100, ptr @.str.67], [32 x i8] zeroinitializer }, align 32
@log_ar_at_event._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.51, ptr @.str.2, i32 509, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"A%c %s, PHY %08x %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@log_ar_at_event._entry_ptr.59 = internal global ptr @log_ar_at_event._entry.57, section ".printk_index", align 4
@log_ar_at_event._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.51, ptr @.str.2, i32 516, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"A%c spd %x tl %02x, %04x -> %04x, %s, %s, %04x%08x%s\0A\00", [42 x i8] zeroinitializer }, align 32
@log_ar_at_event._entry_ptr.62 = internal global ptr @log_ar_at_event._entry.60, section ".printk_index", align 4
@log_ar_at_event._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.51, ptr @.str.2, i32 523, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"A%c spd %x tl %02x, %04x -> %04x, %s, %s%s\0A\00", [52 x i8] zeroinitializer }, align 32
@log_ar_at_event._entry_ptr.65 = internal global ptr @log_ar_at_event._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"evt_no_status\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"-reserved-\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"evt_long_packet\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"evt_missing_ack\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"evt_underrun\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"evt_overrun\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"evt_descriptor_read\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"evt_data_read\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"evt_data_write\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"evt_bus_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"evt_timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"evt_tcode_err\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"evt_unknown\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"evt_flushed\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ack_complete\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ack_pending \00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ack_busy_X\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ack_busy_A\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ack_busy_B\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ack_tardy\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ack_data_error\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ack_type_error\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pending/cancelled\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QW req\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BW req\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"W resp\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QR req\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BR req\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QR resp\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BR resp\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cycle start\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Lk req\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"async stream packet\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Lk resp\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link internal\00", [18 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@context_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DMA context still active (0x%08x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"context_stop\00", [19 x i8] zeroinitializer }, align 32
@context_stop._entry_ptr = internal global ptr @context_stop._entry, section ".printk_index", align 4
@bus_reset_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1886, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"node ID not valid, new bus reset in progress\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bus_reset_work\00", [17 x i8] zeroinitializer }, align 32
@bus_reset_work._entry_ptr = internal global ptr @bus_reset_work._entry, section ".printk_index", align 4
@bus_reset_work._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 1890, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"malconfigured bus\0A\00", [45 x i8] zeroinitializer }, align 32
@bus_reset_work._entry_ptr.107 = internal global ptr @bus_reset_work._entry.105, section ".printk_index", align 4
@bus_reset_work._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.2, i32 1904, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"self ID receive error\0A\00", [41 x i8] zeroinitializer }, align 32
@bus_reset_work._entry_ptr.110 = internal global ptr @bus_reset_work._entry.108, section ".printk_index", align 4
@bus_reset_work._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.104, ptr @.str.2, i32 1916, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad selfIDSize (%08x)\0A\00", [41 x i8] zeroinitializer }, align 32
@bus_reset_work._entry_ptr.113 = internal global ptr @bus_reset_work._entry.111, section ".printk_index", align 4
@bus_reset_work._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.104, ptr @.str.2, i32 1936, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ignoring spurious self IDs\0A\00", [36 x i8] zeroinitializer }, align 32
@bus_reset_work._entry_ptr.116 = internal global ptr @bus_reset_work._entry.114, section ".printk_index", align 4
@bus_reset_work._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.104, ptr @.str.2, i32 1942, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bad self ID %d/%d (%08x != ~%08x)\0A\00", [61 x i8] zeroinitializer }, align 32
@bus_reset_work._entry_ptr.119 = internal global ptr @bus_reset_work._entry.117, section ".printk_index", align 4
@bus_reset_work._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.104, ptr @.str.2, i32 1952, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not construct local self ID\0A\00", [61 x i8] zeroinitializer }, align 32
@bus_reset_work._entry_ptr.122 = internal global ptr @bus_reset_work._entry.120, section ".printk_index", align 4
@bus_reset_work._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.104, ptr @.str.2, i32 1958, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no self IDs\0A\00", [19 x i8] zeroinitializer }, align 32
@bus_reset_work._entry_ptr.125 = internal global ptr @bus_reset_work._entry.123, section ".printk_index", align 4
@bus_reset_work._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.104, ptr @.str.2, i32 1979, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"new bus reset, discarding self ids\0A\00", [60 x i8] zeroinitializer }, align 32
@bus_reset_work._entry_ptr.128 = internal global ptr @bus_reset_work._entry.126, section ".printk_index", align 4
@find_and_insert_self_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.129, ptr @.str.2, i32 1838, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"find_and_insert_self_id\00", [40 x i8] zeroinitializer }, align 32
@find_and_insert_self_id._entry_ptr = internal global ptr @find_and_insert_self_id._entry, section ".printk_index", align 4
@log_selfids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 423, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d selfIDs, generation %d, local node ID %04x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"log_selfids\00", [20 x i8] zeroinitializer }, align 32
@log_selfids._entry_ptr = internal global ptr @log_selfids._entry, section ".printk_index", align 4
@log_selfids._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 432, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"selfID 0: %08x, phy %d [%c%c%c] %s gc=%d %s %s%s%s\0A\00", [44 x i8] zeroinitializer }, align 32
@log_selfids._entry_ptr.134 = internal global ptr @log_selfids._entry.132, section ".printk_index", align 4
@speed = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], [16 x i8] zeroinitializer }, align 32
@power = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@log_selfids._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.131, ptr @.str.2, i32 438, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"selfID n: %08x, phy %d [%c%c%c%c%c%c%c%c]\0A\00", [53 x i8] zeroinitializer }, align 32
@log_selfids._entry_ptr.140 = internal global ptr @log_selfids._entry.138, section ".printk_index", align 4
@port = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c".-pc", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S100\00", [27 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S200\00", [27 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S400\00", [27 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"beta\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+0W\00", [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"+15W\00", [27 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"+30W\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"+45W\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-3W\00", [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" ?W\00", [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"-3..-6W\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"-3..-10W\00", [23 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"inconsistent descriptor\00", [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"corrupted descriptor\00", [43 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid packet length\00", [42 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid tcode\00", [18 x i8] zeroinitializer }, align 32
@ar_context_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 697, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AR error: %s; DMA stopped\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ar_context_abort\00", [47 x i8] zeroinitializer }, align 32
@ar_context_abort._entry_ptr = internal global ptr @ar_context_abort._entry, section ".printk_index", align 4
@irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 2117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register access failure\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irq_handler\00", [20 x i8] zeroinitializer }, align 32
@irq_handler._entry_ptr = internal global ptr @irq_handler._entry, section ".printk_index", align 4
@irq_handler._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 2125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCI posted write error\0A\00", [40 x i8] zeroinitializer }, align 32
@irq_handler._entry_ptr.163 = internal global ptr @irq_handler._entry.161, section ".printk_index", align 4
@irq_handler._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.2, i32 2130, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"isochronous cycle too long\0A\00", [36 x i8] zeroinitializer }, align 32
@irq_handler._entry_ptr.166 = internal global ptr @irq_handler._entry.164, section ".printk_index", align 4
@irq_handler._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.160, ptr @.str.2, i32 2143, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"isochronous cycle inconsistent\0A\00", [32 x i8] zeroinitializer }, align 32
@irq_handler._entry_ptr.169 = internal global ptr @irq_handler._entry.167, section ".printk_index", align 4
@log_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 398, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IRQ %08x%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"log_irqs\00", [23 x i8] zeroinitializer }, align 32
@log_irqs._entry_ptr = internal global ptr @log_irqs._entry, section ".printk_index", align 4
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" selfID\00", [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" AR_req\00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" AR_resp\00", [23 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" AT_req\00", [24 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" AT_resp\00", [23 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" IR\00", [28 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" IT\00", [28 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" postedWriteErr\00", [16 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" cycleTooLong\00", [18 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" cycle64Seconds\00", [16 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" cycleInconsistent\00", [45 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" regAccessFail\00", [17 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" unrecoverableError\00", [44 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" busReset\00", [22 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" ?\00", [29 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATReq\00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATRsp\00", [26 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ARReq\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ARRsp\00", [26 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IT%u\00", [27 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IR%u\00", [27 x i8] zeroinitializer }, align 32
@detect_dead_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 1656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DMA context %s has stopped, error code: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"detect_dead_context\00", [44 x i8] zeroinitializer }, align 32
@detect_dead_context._entry_ptr = internal global ptr @detect_dead_context._entry, section ".printk_index", align 4
@pci_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 3789, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"removed fw-ohci device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_remove\00", [21 x i8] zeroinitializer }, align 32
@pci_remove._entry_ptr = internal global ptr @pci_remove._entry, section ".printk_index", align 4
@pci_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.2, i32 3801, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_save_state failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_suspend\00", [20 x i8] zeroinitializer }, align 32
@pci_suspend._entry_ptr = internal global ptr @pci_suspend._entry, section ".printk_index", align 4
@pci_suspend._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.198, ptr @.str.2, i32 3806, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pci_set_power_state failed with %d\0A\00", [60 x i8] zeroinitializer }, align 32
@pci_suspend._entry_ptr.201 = internal global ptr @pci_suspend._entry.199, section ".printk_index", align 4
@pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.2, i32 3822, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci_enable_device failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_resume\00", [21 x i8] zeroinitializer }, align 32
@pci_resume._entry_ptr = internal global ptr @pci_resume._entry, section ".printk_index", align 4
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firewire_ohci\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 3, i64 10, i64 15, i64 17, i64 18, i64 20, i64 21, i64 22, i64 29, i64 30]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.206 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4, i64 8, i64 512, i64 516, i64 528, i64 536]
@__sancov_gen_cov_switch_values.207 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4, i64 8, i64 512, i64 516, i64 528, i64 536]
@__sancov_gen_cov_switch_values.208 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.210 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.211 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.212 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.213 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.215 = internal global [6 x i64] [i64 4, i64 48, i64 281474708275740, i64 281474708275744, i64 281474708275748, i64 281474708275752]
@__sancov_gen_cov_switch_values.216 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11, i64 14]
@__sancov_gen_cov_switch_values.217 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11]
@__sancov_gen_cov_switch_values.218 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 4, i64 5, i64 9, i64 10, i64 14]
@__sancov_gen_cov_switch_values.219 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 9, i64 11, i64 14]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@___asan_gen_.221 = private unnamed_addr constant [13 x i8] c"param_quirks\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 336, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant [12 x i8] c"param_debug\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 353, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"param_remote_dma\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 362, i32 13 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"fw_ohci_pci_driver\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3850, i32 26 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"selfid_workqueue\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 232, i32 33 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"ohci_driver_name\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 261, i32 13 }
@___asan_gen_.239 = private unnamed_addr constant [10 x i8] c"pci_table\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3843, i32 35 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3557, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [12 x i8] c"ohci_driver\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3496, i32 36 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3573, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3581, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3582, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3584, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3588, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3595, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3601, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [12 x i8] c"ohci_quirks\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 285, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3667, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3695, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3705, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2270, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2299, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2308, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 570, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 593, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1580, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 326, i32 6 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 484, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 491, i32 40 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 495, i32 40 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 504, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [5 x i8] c"evts\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 441, i32 20 }
@___asan_gen_.413 = private unnamed_addr constant [7 x i8] c"tcodes\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 460, i32 20 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 508, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 512, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 519, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 442, i32 11 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 442, i32 37 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 443, i32 11 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 443, i32 39 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 444, i32 11 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 444, i32 36 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 445, i32 11 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 445, i32 43 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 446, i32 11 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 446, i32 38 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 447, i32 11 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 447, i32 36 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 449, i32 11 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 449, i32 36 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 450, i32 35 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 451, i32 11 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 452, i32 11 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 452, i32 35 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 453, i32 11 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 455, i32 35 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 456, i32 35 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 457, i32 11 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 458, i32 11 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 461, i32 10 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 461, i32 29 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 462, i32 10 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 463, i32 10 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 463, i32 29 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 464, i32 10 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 464, i32 30 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 465, i32 10 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 465, i32 34 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 466, i32 10 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 466, i32 41 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 468, i32 10 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1271, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1885, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1890, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1904, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1916, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1936, i32 5 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1941, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1951, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1958, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1979, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1837, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 422, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 401, i32 20 }
@___asan_gen_.629 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 404, i32 20 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 427, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 434, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 408, i32 19 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 402, i32 8 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 402, i32 22 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 402, i32 36 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 402, i32 53 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 405, i32 8 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 405, i32 22 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 405, i32 36 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 405, i32 53 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 406, i32 8 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 406, i32 22 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 406, i32 36 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 406, i32 53 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 956, i32 26 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 765, i32 25 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 831, i32 26 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 844, i32 25 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 697, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2117, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2125, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2130, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2143, i32 4 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 376, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1664, i32 28 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1665, i32 28 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1666, i32 28 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1667, i32 28 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1671, i32 17 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1677, i32 17 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1655, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3789, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3801, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3806, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3822, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.849 = private constant [27 x i8] c"../drivers/firewire/ohci.c\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 3863, i32 37 }
@llvm.compiler.used = appending global [271 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug239, ptr @__UNIQUE_ID_debugtype238, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__UNIQUE_ID_quirks237, ptr @__UNIQUE_ID_quirkstype236, ptr @__UNIQUE_ID_remote_dma241, ptr @__UNIQUE_ID_remote_dmatype240, ptr @__exitcall_fw_ohci_cleanup, ptr @__initcall__kmod_firewire_ohci__253_3876_fw_ohci_init6, ptr @__param_debug, ptr @__param_quirks, ptr @__param_remote_dma, ptr @ar_context_abort._entry, ptr @ar_context_abort._entry_ptr, ptr @bus_reset_work._entry, ptr @bus_reset_work._entry.105, ptr @bus_reset_work._entry.108, ptr @bus_reset_work._entry.111, ptr @bus_reset_work._entry.114, ptr @bus_reset_work._entry.117, ptr @bus_reset_work._entry.120, ptr @bus_reset_work._entry.123, ptr @bus_reset_work._entry.126, ptr @bus_reset_work._entry_ptr, ptr @bus_reset_work._entry_ptr.107, ptr @bus_reset_work._entry_ptr.110, ptr @bus_reset_work._entry_ptr.113, ptr @bus_reset_work._entry_ptr.116, ptr @bus_reset_work._entry_ptr.119, ptr @bus_reset_work._entry_ptr.122, ptr @bus_reset_work._entry_ptr.125, ptr @bus_reset_work._entry_ptr.128, ptr @context_stop._entry, ptr @context_stop._entry_ptr, ptr @detect_dead_context._entry, ptr @detect_dead_context._entry_ptr, ptr @find_and_insert_self_id._entry, ptr @find_and_insert_self_id._entry_ptr, ptr @fw_ohci_cleanup, ptr @handle_local_lock._entry, ptr @handle_local_lock._entry_ptr, ptr @irq_handler._entry, ptr @irq_handler._entry.161, ptr @irq_handler._entry.164, ptr @irq_handler._entry.167, ptr @irq_handler._entry_ptr, ptr @irq_handler._entry_ptr.163, ptr @irq_handler._entry_ptr.166, ptr @irq_handler._entry_ptr.169, ptr @log_ar_at_event._entry, ptr @log_ar_at_event._entry.54, ptr @log_ar_at_event._entry.57, ptr @log_ar_at_event._entry.60, ptr @log_ar_at_event._entry.63, ptr @log_ar_at_event._entry_ptr, ptr @log_ar_at_event._entry_ptr.56, ptr @log_ar_at_event._entry_ptr.59, ptr @log_ar_at_event._entry_ptr.62, ptr @log_ar_at_event._entry_ptr.65, ptr @log_irqs._entry, ptr @log_irqs._entry_ptr, ptr @log_selfids._entry, ptr @log_selfids._entry.132, ptr @log_selfids._entry.138, ptr @log_selfids._entry_ptr, ptr @log_selfids._entry_ptr.134, ptr @log_selfids._entry_ptr.140, ptr @ohci_enable._entry, ptr @ohci_enable._entry.36, ptr @ohci_enable._entry.39, ptr @ohci_enable._entry_ptr, ptr @ohci_enable._entry_ptr.38, ptr @ohci_enable._entry_ptr.41, ptr @pci_probe._entry, ptr @pci_probe._entry.13, ptr @pci_probe._entry.16, ptr @pci_probe._entry.19, ptr @pci_probe._entry.22, ptr @pci_probe._entry.26, ptr @pci_probe._entry.29, ptr @pci_probe._entry.5, ptr @pci_probe._entry_ptr, ptr @pci_probe._entry_ptr.15, ptr @pci_probe._entry_ptr.18, ptr @pci_probe._entry_ptr.21, ptr @pci_probe._entry_ptr.25, ptr @pci_probe._entry_ptr.28, ptr @pci_probe._entry_ptr.31, ptr @pci_probe._entry_ptr.7, ptr @pci_remove._entry, ptr @pci_remove._entry_ptr, ptr @pci_resume._entry, ptr @pci_resume._entry_ptr, ptr @pci_suspend._entry, ptr @pci_suspend._entry.199, ptr @pci_suspend._entry_ptr, ptr @pci_suspend._entry_ptr.201, ptr @read_phy_reg._entry, ptr @read_phy_reg._entry_ptr, ptr @write_phy_reg._entry, ptr @write_phy_reg._entry_ptr, ptr @param_quirks, ptr @param_debug, ptr @param_remote_dma, ptr @fw_ohci_pci_driver, ptr @selfid_workqueue, ptr @ohci_driver_name, ptr @pci_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ohci_driver, ptr @.str.6, ptr @pci_probe.__key, ptr @.str.8, ptr @pci_probe.__key.9, ptr @.str.10, ptr @pci_probe.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @ohci_quirks, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @evts, ptr @tcodes, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @speed, ptr @power, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @port, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.200, ptr @.str.202, ptr @.str.203, ptr @.str.204], section "llvm.metadata"
@0 = internal global [210 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_quirks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_remote_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_ohci_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selfid_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_driver_name to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_driver to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_quirks to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_enable._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_enable._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_phy_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_phy_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_local_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ar_at_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ar_at_event._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evts to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcodes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ar_at_event._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ar_at_event._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ar_at_event._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_work._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_work._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_work._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_work._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_work._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_work._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_work._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_work._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_and_insert_self_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_selfids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_selfids._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_selfids._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar_context_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_handler._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_handler._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_handler._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_dead_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_suspend._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fw_ohci_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @fw_ohci_pci_driver) #10
  %0 = load ptr, ptr @selfid_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_ohci_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.204, i32 noundef 8, i32 noundef 0) #10
  store ptr %call, ptr @selfid_workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @fw_ohci_pci_driver, ptr noundef null, ptr noundef nonnull @.str.204) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4541, i16 %1)
  %cmp = icmp eq i16 %1, 4541
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4152) #14
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @fw_card_initialize(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ohci_driver, ptr noundef %dev7) #10
  %call8 = tail call i32 @pci_enable_device(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.6) #13
  br label %fail_free

if.end14:                                         ; preds = %if.end6
  tail call void @pci_set_master(ptr noundef %dev) #10
  %call15 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 64, i32 noundef 0) #10
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @pci_probe.__key, i16 noundef signext 3) #10
  %phy_reg_mutex = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %phy_reg_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @pci_probe.__key.9) #10
  %bus_reset_work = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 37
  tail call void @__init_work(ptr noundef %bus_reset_work, i32 noundef 0) #10
  %4 = ptrtoint ptr %bus_reset_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %bus_reset_work, align 8
  %lockdep_map = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 37, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @pci_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry27 = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 37, i32 1
  %5 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry27, ptr %entry27, align 4
  %prev.i = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 37, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry27, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 37, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bus_reset_work, ptr %func, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end14.do.end46_crit_edge, label %lor.lhs.false

if.end14.do.end46_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

lor.lhs.false:                                    ; preds = %if.end14
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp34 = icmp eq i32 %11, 0
  br i1 %cmp34, label %lor.lhs.false.do.end46_crit_edge, label %cond.end

lor.lhs.false.do.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

cond.end:                                         ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %sub = add i32 %11, 1
  %add = sub i32 %sub, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add)
  %cmp41 = icmp ult i32 %add, 2048
  br i1 %cmp41, label %cond.end.do.end46_crit_edge, label %if.end48

cond.end.do.end46_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.end46:                                         ; preds = %cond.end.do.end46_crit_edge, %lor.lhs.false.do.end46_crit_edge, %if.end14.do.end46_crit_edge
  %device = getelementptr inbounds %struct.fw_card, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14) #13
  br label %fail_disable

if.end48:                                         ; preds = %cond.end
  %call49 = tail call i32 @pci_request_region(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @ohci_driver_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end57, label %do.end54

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %device56 = getelementptr inbounds %struct.fw_card, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %device56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.17) #13
  br label %fail_disable

if.end57:                                         ; preds = %if.end48
  %call58 = tail call ptr @pci_iomap(ptr noundef %dev, i32 noundef 0, i32 noundef 2048) #10
  %registers = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call58, ptr %registers, align 8
  %cmp60 = icmp eq ptr %call58, null
  br i1 %cmp60, label %do.end65, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end57
  %19 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vendor, align 8
  %device87 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %revision100 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 12
  br label %for.body

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %device67 = getelementptr inbounds %struct.fw_card, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %device67 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.20) #13
  br label %fail_iomem

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.01167 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx71 = getelementptr [16 x %struct.anon.73], ptr @ohci_quirks, i32 0, i32 %i.01167
  %23 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx71, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %20)
  %cmp76 = icmp eq i16 %24, %20
  br i1 %cmp76, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %25 = lshr i32 35041, %i.01167
  %26 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp81.not = icmp eq i32 %26, 0
  br i1 %cmp81.not, label %lor.lhs.false83, label %land.lhs.true.land.lhs.true91_crit_edge

land.lhs.true.land.lhs.true91_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true91

lor.lhs.false83:                                  ; preds = %land.lhs.true
  %device79 = getelementptr [16 x %struct.anon.73], ptr @ohci_quirks, i32 0, i32 %i.01167, i32 1
  %27 = ptrtoint ptr %device79 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device79, align 2
  %29 = ptrtoint ptr %device87 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %device87, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp89 = icmp eq i16 %28, %30
  br i1 %cmp89, label %lor.lhs.false83.land.lhs.true91_crit_edge, label %lor.lhs.false83.for.inc_crit_edge

lor.lhs.false83.for.inc_crit_edge:                ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false83.land.lhs.true91_crit_edge:        ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true91

land.lhs.true91:                                  ; preds = %lor.lhs.false83.land.lhs.true91_crit_edge, %land.lhs.true.land.lhs.true91_crit_edge
  %31 = lshr i32 53243, %i.01167
  %32 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp94.not = icmp eq i32 %32, 0
  br i1 %cmp94.not, label %lor.lhs.false96, label %land.lhs.true91.if.then104_crit_edge

land.lhs.true91.if.then104_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then104

lor.lhs.false96:                                  ; preds = %land.lhs.true91
  %revision = getelementptr [16 x %struct.anon.73], ptr @ohci_quirks, i32 0, i32 %i.01167, i32 2
  %33 = ptrtoint ptr %revision to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %revision, align 2
  %35 = ptrtoint ptr %revision100 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %revision100, align 4
  %37 = zext i8 %36 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %37)
  %cmp102.not = icmp ult i16 %34, %37
  br i1 %cmp102.not, label %lor.lhs.false96.for.inc_crit_edge, label %lor.lhs.false96.if.then104_crit_edge

lor.lhs.false96.if.then104_crit_edge:             ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then104

lor.lhs.false96.for.inc_crit_edge:                ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then104:                                       ; preds = %lor.lhs.false96.if.then104_crit_edge, %land.lhs.true91.if.then104_crit_edge
  %flags106 = getelementptr [16 x %struct.anon.73], ptr @ohci_quirks, i32 0, i32 %i.01167, i32 3
  %38 = ptrtoint ptr %flags106 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags106, align 2
  %conv107 = zext i16 %39 to i32
  %quirks = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv107, ptr %quirks, align 8
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false96.for.inc_crit_edge, %lor.lhs.false83.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.01167, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then104
  %41 = load i32, ptr @param_quirks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool109.not = icmp eq i32 %41, 0
  br i1 %tobool109.not, label %for.end.do.end118_crit_edge, label %if.then110

for.end.do.end118_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end118

if.then110:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %quirks111 = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %quirks111 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %quirks111, align 8
  br label %do.end118

do.end118:                                        ; preds = %if.then110, %for.end.do.end118_crit_edge
  %device120 = getelementptr inbounds %struct.fw_card, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %device120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device120, align 4
  %misc_buffer_bus = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 16
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %44, i32 noundef 4096, ptr noundef %misc_buffer_bus, i32 noundef 3264, i32 noundef 0) #10
  %misc_buffer = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 15
  %45 = ptrtoint ptr %misc_buffer to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %misc_buffer, align 8
  %tobool123.not = icmp eq ptr %call.i, null
  br i1 %tobool123.not, label %do.end118.fail_iounmap_crit_edge, label %if.end125

do.end118.fail_iounmap_crit_edge:                 ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_iounmap

if.end125:                                        ; preds = %do.end118
  %ar_request_ctx = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 17
  %call126 = tail call fastcc i32 @ar_context_init(ptr noundef %ar_request_ctx, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 448)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.end125.fail_misc_buf_crit_edge, label %if.end130

if.end125.fail_misc_buf_crit_edge:                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_misc_buf

if.end130:                                        ; preds = %if.end125
  %ar_response_ctx = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 18
  %call131 = tail call fastcc i32 @ar_context_init(ptr noundef %ar_response_ctx, ptr noundef nonnull %call7.i.i, i32 noundef 1024, i32 noundef 480)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %if.end130.fail_arreq_ctx_crit_edge, label %if.end135

if.end130.fail_arreq_ctx_crit_edge:               ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_arreq_ctx

if.end135:                                        ; preds = %if.end130
  %at_request_ctx = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 19
  %call136 = tail call fastcc i32 @context_init(ptr noundef %at_request_ctx, ptr noundef nonnull %call7.i.i, i32 noundef 384, ptr noundef nonnull @handle_at_packet)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.end135.fail_arrsp_ctx_crit_edge, label %if.end140

if.end135.fail_arrsp_ctx_crit_edge:               ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_arrsp_ctx

if.end140:                                        ; preds = %if.end135
  %at_response_ctx = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 20
  %call141 = tail call fastcc i32 @context_init(ptr noundef %at_response_ctx, ptr noundef nonnull %call7.i.i, i32 noundef 416, ptr noundef nonnull @handle_at_packet)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.end140.fail_atreq_ctx_crit_edge, label %if.end145

if.end140.fail_atreq_ctx_crit_edge:               ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_atreq_ctx

if.end145:                                        ; preds = %if.end140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %registers, align 8
  %add.ptr.i = getelementptr i8, ptr %47, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #10, !srcloc !420
  %ir_context_channels = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 24
  %48 = ptrtoint ptr %ir_context_channels to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 -1, ptr %ir_context_channels, align 8
  %49 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %registers, align 8
  %add.ptr.i1097 = getelementptr i8, ptr %50, i32 168
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1097) #10, !srcloc !421
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %ir_context_support = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 25
  %53 = ptrtoint ptr %ir_context_support to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ir_context_support, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %registers, align 8
  %add.ptr.i1099 = getelementptr i8, ptr %55, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1099, i32 -1) #10, !srcloc !420
  %56 = ptrtoint ptr %ir_context_support to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ir_context_support, align 8
  %ir_context_mask = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 26
  %58 = ptrtoint ptr %ir_context_mask to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %ir_context_mask, align 4
  %call.i1100 = tail call i32 @__sw_hweight32(i32 noundef %57) #10
  %n_ir = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 11
  %59 = ptrtoint ptr %n_ir to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i1100, ptr %n_ir, align 8
  %mul = shl i32 %call.i1100, 7
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #15
  %ir_context_list = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 27
  %60 = ptrtoint ptr %ir_context_list to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call9.i.i, ptr %ir_context_list, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %registers, align 8
  %add.ptr.i1103 = getelementptr i8, ptr %62, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1103, i32 -1) #10, !srcloc !420
  %63 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %registers, align 8
  %add.ptr.i1105 = getelementptr i8, ptr %64, i32 152
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1105) #10, !srcloc !421
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %it_context_support = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 21
  %67 = ptrtoint ptr %it_context_support to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %it_context_support, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool474.not = icmp eq i32 %65, 0
  br i1 %tobool474.not, label %do.end478, label %if.end145.if.end482_crit_edge

if.end145.if.end482_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end482

do.end478:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %device120 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device120, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %69, ptr noundef nonnull @.str.23) #13
  %70 = ptrtoint ptr %it_context_support to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 15, ptr %it_context_support, align 8
  br label %if.end482

if.end482:                                        ; preds = %do.end478, %if.end145.if.end482_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %71 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %registers, align 8
  %add.ptr.i1107 = getelementptr i8, ptr %72, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1107, i32 -1) #10, !srcloc !420
  %73 = ptrtoint ptr %it_context_support to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %it_context_support, align 8
  %it_context_mask = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 22
  %75 = ptrtoint ptr %it_context_mask to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %it_context_mask, align 4
  %call.i1108 = tail call i32 @__sw_hweight32(i32 noundef %74) #10
  %n_it = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 12
  %76 = ptrtoint ptr %n_it to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call.i1108, ptr %n_it, align 4
  %mul811 = shl i32 %call.i1108, 7
  %call9.i.i1134 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul811, i32 noundef 3520) #15
  %it_context_list = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 23
  %77 = ptrtoint ptr %it_context_list to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call9.i.i1134, ptr %it_context_list, align 8
  %cmp814 = icmp eq ptr %call9.i.i1134, null
  br i1 %cmp814, label %if.end482.fail_contexts_crit_edge, label %lor.lhs.false816

if.end482.fail_contexts_crit_edge:                ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_contexts

lor.lhs.false816:                                 ; preds = %if.end482
  %78 = ptrtoint ptr %ir_context_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ir_context_list, align 8
  %cmp818 = icmp eq ptr %79, null
  br i1 %cmp818, label %lor.lhs.false816.fail_contexts_crit_edge, label %if.end821

lor.lhs.false816.fail_contexts_crit_edge:         ; preds = %lor.lhs.false816
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_contexts

if.end821:                                        ; preds = %lor.lhs.false816
  %80 = ptrtoint ptr %misc_buffer to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %misc_buffer, align 8
  %add.ptr = getelementptr i8, ptr %81, i32 2048
  %self_id = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 35
  %82 = ptrtoint ptr %self_id to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr, ptr %self_id, align 8
  %83 = ptrtoint ptr %misc_buffer_bus to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %misc_buffer_bus, align 4
  %add824 = add i32 %84, 2048
  %self_id_bus = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 36
  %85 = ptrtoint ptr %self_id_bus to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add824, ptr %self_id_bus, align 4
  %86 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %registers, align 8
  %add.ptr.i1139 = getelementptr i8, ptr %87, i32 32
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1139) #10, !srcloc !421
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %shr826 = lshr i32 %89, 12
  %and827 = and i32 %shr826, 15
  %and828 = and i32 %89, 7
  %90 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %registers, align 8
  %add.ptr.i1141 = getelementptr i8, ptr %91, i32 36
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1141) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %93 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %registers, align 8
  %add.ptr.i1143 = getelementptr i8, ptr %94, i32 40
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1143) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %96 = zext i32 %92 to i64
  %97 = zext i32 %95 to i64
  %98 = shl nuw i64 %97, 32
  %99 = or i64 %98, %96
  %100 = tail call i64 @llvm.bswap.i64(i64 %99)
  %quirks833 = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 5
  %101 = ptrtoint ptr %quirks833 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %quirks833, align 8
  %and834 = and i32 %102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and834)
  %tobool835.not = icmp eq i32 %and834, 0
  br i1 %tobool835.not, label %if.then836, label %if.end821.if.end838_crit_edge

if.end821.if.end838_crit_edge:                    ; preds = %if.end821
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end838

if.then836:                                       ; preds = %if.end821
  call void @__sanitizer_cov_trace_pc() #12
  %call837 = tail call i32 @pci_enable_msi(ptr noundef %dev) #10
  br label %if.end838

if.end838:                                        ; preds = %if.then836, %if.end821.if.end838_crit_edge
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %103 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq, align 4
  %msi_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %105 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 5)
  %bf.load.i = load i40, ptr %msi_enabled.i, align 1
  %106 = and i40 %bf.load.i, 201326592
  %.not = icmp eq i40 %106, 0
  %cond841 = select i1 %.not, i32 128, i32 0
  %call.i1144 = tail call i32 @request_threaded_irq(i32 noundef %104, ptr noundef nonnull @irq_handler, ptr noundef null, i32 noundef %cond841, ptr noundef nonnull @ohci_driver_name, ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1144)
  %tobool843.not = icmp eq i32 %call.i1144, 0
  br i1 %tobool843.not, label %if.end851, label %do.end847

do.end847:                                        ; preds = %if.end838
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %device120 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device120, align 4
  %109 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.27, i32 noundef %110) #13
  br label %fail_msi

if.end851:                                        ; preds = %if.end838
  %call853 = tail call i32 @fw_card_add(ptr noundef nonnull %call7.i.i, i32 noundef %and827, i32 noundef %and828, i64 noundef %100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call853)
  %tobool854.not = icmp eq i32 %call853, 0
  br i1 %tobool854.not, label %if.end856, label %fail_irq

if.end856:                                        ; preds = %if.end851
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %registers, align 8
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #10, !srcloc !421
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %115 = ptrtoint ptr %device120 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %device120, align 4
  %and858 = lshr i32 %114, 16
  %shr864 = and i32 %and858, 255
  %and865 = and i32 %114, 255
  %index = getelementptr inbounds %struct.fw_card, ptr %call7.i.i, i32 0, i32 25
  %117 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %index, align 8
  %119 = ptrtoint ptr %n_ir to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %n_ir, align 8
  %121 = ptrtoint ptr %n_it to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %n_it, align 4
  %123 = ptrtoint ptr %quirks833 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %quirks833, align 8
  %125 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %registers, align 8
  %add.ptr.i1147 = getelementptr i8, ptr %126, i32 288
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1147) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool871.not = icmp eq i32 %127, 0
  %cond872 = select i1 %tobool871.not, ptr @.str.33, ptr @.str.32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %116, ptr noundef nonnull @.str.30, i32 noundef %shr864, i32 noundef %and865, i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %124, ptr noundef nonnull %cond872) #13
  br label %cleanup

fail_irq:                                         ; preds = %if.end851
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %irq, align 4
  %call874 = tail call ptr @free_irq(i32 noundef %129, ptr noundef nonnull %call7.i.i) #10
  br label %fail_msi

fail_msi:                                         ; preds = %fail_irq, %do.end847
  %err.0 = phi i32 [ -5, %do.end847 ], [ %call853, %fail_irq ]
  tail call void @pci_disable_msi(ptr noundef %dev) #10
  br label %fail_contexts

fail_contexts:                                    ; preds = %fail_msi, %lor.lhs.false816.fail_contexts_crit_edge, %if.end482.fail_contexts_crit_edge
  %err.1 = phi i32 [ %err.0, %fail_msi ], [ -12, %lor.lhs.false816.fail_contexts_crit_edge ], [ -12, %if.end482.fail_contexts_crit_edge ]
  %130 = ptrtoint ptr %ir_context_list to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ir_context_list, align 8
  tail call void @kfree(ptr noundef %131) #10
  %132 = ptrtoint ptr %it_context_list to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %it_context_list, align 8
  tail call void @kfree(ptr noundef %133) #10
  %buffer_list.i = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 20, i32 6
  %134 = ptrtoint ptr %buffer_list.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %buffer_list.i, align 4
  %cmp.not22.i = icmp eq ptr %135, %buffer_list.i
  br i1 %cmp.not22.i, label %fail_contexts.fail_atreq_ctx_crit_edge, label %for.body.lr.ph.i

fail_contexts.fail_atreq_ctx_crit_edge:           ; preds = %fail_contexts
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_atreq_ctx

for.body.lr.ph.i:                                 ; preds = %fail_contexts
  %136 = ptrtoint ptr %at_response_ctx to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %at_response_ctx, align 8
  %device.i = getelementptr inbounds %struct.fw_card, ptr %137, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %desc.023.i = phi ptr [ %135, %for.body.lr.ph.i ], [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ]
  %138 = ptrtoint ptr %desc.023.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %tmp.0.i = load ptr, ptr %desc.023.i, align 16
  %139 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %device.i, align 4
  %buffer_bus.i = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.023.i, i32 0, i32 1
  %141 = ptrtoint ptr %buffer_bus.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %buffer_bus.i, align 8
  %sub.i = add i32 %142, -32
  tail call void @dma_free_attrs(ptr noundef %140, i32 noundef 4096, ptr noundef %desc.023.i, i32 noundef %sub.i, i32 noundef 0) #10
  %cmp.not.i = icmp eq ptr %tmp.0.i, %buffer_list.i
  br i1 %cmp.not.i, label %for.body.i.fail_atreq_ctx_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.fail_atreq_ctx_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_atreq_ctx

fail_atreq_ctx:                                   ; preds = %for.body.i.fail_atreq_ctx_crit_edge, %fail_contexts.fail_atreq_ctx_crit_edge, %if.end140.fail_atreq_ctx_crit_edge
  %err.2 = phi i32 [ %call141, %if.end140.fail_atreq_ctx_crit_edge ], [ %err.1, %fail_contexts.fail_atreq_ctx_crit_edge ], [ %err.1, %for.body.i.fail_atreq_ctx_crit_edge ]
  %buffer_list.i1148 = getelementptr inbounds %struct.fw_ohci, ptr %call7.i.i, i32 0, i32 19, i32 6
  %143 = ptrtoint ptr %buffer_list.i1148 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %buffer_list.i1148, align 4
  %cmp.not22.i1149 = icmp eq ptr %144, %buffer_list.i1148
  br i1 %cmp.not22.i1149, label %fail_atreq_ctx.fail_arrsp_ctx_crit_edge, label %for.body.lr.ph.i1151

fail_atreq_ctx.fail_arrsp_ctx_crit_edge:          ; preds = %fail_atreq_ctx
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_arrsp_ctx

for.body.lr.ph.i1151:                             ; preds = %fail_atreq_ctx
  %145 = ptrtoint ptr %at_request_ctx to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %at_request_ctx, align 8
  %device.i1150 = getelementptr inbounds %struct.fw_card, ptr %146, i32 0, i32 1
  br label %for.body.i1157

for.body.i1157:                                   ; preds = %for.body.i1157.for.body.i1157_crit_edge, %for.body.lr.ph.i1151
  %desc.023.i1152 = phi ptr [ %144, %for.body.lr.ph.i1151 ], [ %tmp.0.i1153, %for.body.i1157.for.body.i1157_crit_edge ]
  %147 = ptrtoint ptr %desc.023.i1152 to i32
  call void @__asan_load4_noabort(i32 %147)
  %tmp.0.i1153 = load ptr, ptr %desc.023.i1152, align 16
  %148 = ptrtoint ptr %device.i1150 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %device.i1150, align 4
  %buffer_bus.i1154 = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.023.i1152, i32 0, i32 1
  %150 = ptrtoint ptr %buffer_bus.i1154 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %buffer_bus.i1154, align 8
  %sub.i1155 = add i32 %151, -32
  tail call void @dma_free_attrs(ptr noundef %149, i32 noundef 4096, ptr noundef %desc.023.i1152, i32 noundef %sub.i1155, i32 noundef 0) #10
  %cmp.not.i1156 = icmp eq ptr %tmp.0.i1153, %buffer_list.i1148
  br i1 %cmp.not.i1156, label %for.body.i1157.fail_arrsp_ctx_crit_edge, label %for.body.i1157.for.body.i1157_crit_edge

for.body.i1157.for.body.i1157_crit_edge:          ; preds = %for.body.i1157
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i1157

for.body.i1157.fail_arrsp_ctx_crit_edge:          ; preds = %for.body.i1157
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_arrsp_ctx

fail_arrsp_ctx:                                   ; preds = %for.body.i1157.fail_arrsp_ctx_crit_edge, %fail_atreq_ctx.fail_arrsp_ctx_crit_edge, %if.end135.fail_arrsp_ctx_crit_edge
  %err.3 = phi i32 [ %call136, %if.end135.fail_arrsp_ctx_crit_edge ], [ %err.2, %fail_atreq_ctx.fail_arrsp_ctx_crit_edge ], [ %err.2, %for.body.i1157.fail_arrsp_ctx_crit_edge ]
  tail call fastcc void @ar_context_release(ptr noundef %ar_response_ctx)
  br label %fail_arreq_ctx

fail_arreq_ctx:                                   ; preds = %fail_arrsp_ctx, %if.end130.fail_arreq_ctx_crit_edge
  %err.4 = phi i32 [ %call131, %if.end130.fail_arreq_ctx_crit_edge ], [ %err.3, %fail_arrsp_ctx ]
  tail call fastcc void @ar_context_release(ptr noundef %ar_request_ctx)
  br label %fail_misc_buf

fail_misc_buf:                                    ; preds = %fail_arreq_ctx, %if.end125.fail_misc_buf_crit_edge
  %err.5 = phi i32 [ %call126, %if.end125.fail_misc_buf_crit_edge ], [ %err.4, %fail_arreq_ctx ]
  %152 = ptrtoint ptr %device120 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %device120, align 4
  %154 = ptrtoint ptr %misc_buffer to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %misc_buffer, align 8
  %156 = ptrtoint ptr %misc_buffer_bus to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %misc_buffer_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %153, i32 noundef 4096, ptr noundef %155, i32 noundef %157, i32 noundef 0) #10
  br label %fail_iounmap

fail_iounmap:                                     ; preds = %fail_misc_buf, %do.end118.fail_iounmap_crit_edge
  %err.6 = phi i32 [ %err.5, %fail_misc_buf ], [ -12, %do.end118.fail_iounmap_crit_edge ]
  %158 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %registers, align 8
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %159) #10
  br label %fail_iomem

fail_iomem:                                       ; preds = %fail_iounmap, %do.end65
  %err.7 = phi i32 [ -6, %do.end65 ], [ %err.6, %fail_iounmap ]
  tail call void @pci_release_region(ptr noundef %dev, i32 noundef 0) #10
  br label %fail_disable

fail_disable:                                     ; preds = %fail_iomem, %do.end54, %do.end46
  %err.8 = phi i32 [ -6, %do.end46 ], [ %call49, %do.end54 ], [ %err.7, %fail_iomem ]
  tail call void @pci_disable_device(ptr noundef %dev) #10
  br label %fail_free

fail_free:                                        ; preds = %fail_disable, %do.end12
  %err.9 = phi i32 [ %call8, %do.end12 ], [ %err.8, %fail_disable ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %fail_free, %if.end856, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -38, %do.end ], [ 0, %if.end856 ], [ %err.9, %fail_free ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %5 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %registers.i, align 8
  %add.ptr.i57 = getelementptr i8, ptr %7, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 -1) #10, !srcloc !420
  %8 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %registers.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bus_reset_work = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 37
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %bus_reset_work) #10
  tail call void @fw_core_remove_card(ptr noundef %1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 256) #10, !srcloc !420
  br label %for.body.i

for.body.i:                                       ; preds = %if.end3.i.for.body.i_crit_edge, %if.end
  %i.010.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end3.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers.i, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %14, i32 80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not.i = icmp eq i32 %15, -1
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i = icmp eq i32 %16, 0
  %or.cond = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond, label %for.body.i.software_reset.exit_crit_edge, label %if.end3.i

for.body.i.software_reset.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %software_reset.exit

if.end3.i:                                        ; preds = %for.body.i
  tail call void @msleep(i32 noundef 1) #10
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 500
  br i1 %exitcond.not.i, label %if.end3.i.software_reset.exit_crit_edge, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end3.i.software_reset.exit_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %software_reset.exit

software_reset.exit:                              ; preds = %if.end3.i.software_reset.exit_crit_edge, %for.body.i.software_reset.exit_crit_edge
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %1) #10
  %next_config_rom = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %next_config_rom to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next_config_rom, align 4
  %tobool5.not = icmp eq ptr %20, null
  br i1 %tobool5.not, label %software_reset.exit.if.end10_crit_edge, label %land.lhs.true

software_reset.exit.if.end10_crit_edge:           ; preds = %software_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %software_reset.exit
  %config_rom = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 30
  %21 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config_rom, align 4
  %cmp.not = icmp eq ptr %20, %22
  br i1 %cmp.not, label %land.lhs.true.if.end10_crit_edge, label %if.then7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  %next_config_rom_bus = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 33
  %25 = ptrtoint ptr %next_config_rom_bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %next_config_rom_bus, align 8
  tail call void @dma_free_attrs(ptr noundef %24, i32 noundef 1024, ptr noundef nonnull %20, i32 noundef %26, i32 noundef 0) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %software_reset.exit.if.end10_crit_edge
  %config_rom11 = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 30
  %27 = ptrtoint ptr %config_rom11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config_rom11, align 4
  %tobool12.not = icmp eq ptr %28, null
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %device15 = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %device15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device15, align 4
  %config_rom_bus = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 31
  %31 = ptrtoint ptr %config_rom_bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %config_rom_bus, align 8
  tail call void @dma_free_attrs(ptr noundef %30, i32 noundef 1024, ptr noundef nonnull %28, i32 noundef %32, i32 noundef 0) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  %ar_request_ctx = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 17
  tail call fastcc void @ar_context_release(ptr noundef %ar_request_ctx)
  %ar_response_ctx = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 18
  tail call fastcc void @ar_context_release(ptr noundef %ar_response_ctx)
  %device19 = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device19, align 4
  %misc_buffer = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %misc_buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %misc_buffer, align 8
  %misc_buffer_bus = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %misc_buffer_bus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %misc_buffer_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %34, i32 noundef 4096, ptr noundef %36, i32 noundef %38, i32 noundef 0) #10
  %buffer_list.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 19, i32 6
  %39 = ptrtoint ptr %buffer_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer_list.i, align 4
  %cmp.not22.i = icmp eq ptr %40, %buffer_list.i
  br i1 %cmp.not22.i, label %if.end17.context_release.exit_crit_edge, label %for.body.lr.ph.i

if.end17.context_release.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_release.exit

for.body.lr.ph.i:                                 ; preds = %if.end17
  %at_request_ctx = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 19
  %41 = ptrtoint ptr %at_request_ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %at_request_ctx, align 4
  %device.i = getelementptr inbounds %struct.fw_card, ptr %42, i32 0, i32 1
  br label %for.body.i59

for.body.i59:                                     ; preds = %for.body.i59.for.body.i59_crit_edge, %for.body.lr.ph.i
  %desc.023.i = phi ptr [ %40, %for.body.lr.ph.i ], [ %tmp.0.i, %for.body.i59.for.body.i59_crit_edge ]
  %43 = ptrtoint ptr %desc.023.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %tmp.0.i = load ptr, ptr %desc.023.i, align 16
  %44 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device.i, align 4
  %buffer_bus.i = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.023.i, i32 0, i32 1
  %46 = ptrtoint ptr %buffer_bus.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buffer_bus.i, align 8
  %sub.i = add i32 %47, -32
  tail call void @dma_free_attrs(ptr noundef %45, i32 noundef 4096, ptr noundef %desc.023.i, i32 noundef %sub.i, i32 noundef 0) #10
  %cmp.not.i = icmp eq ptr %tmp.0.i, %buffer_list.i
  br i1 %cmp.not.i, label %for.body.i59.context_release.exit_crit_edge, label %for.body.i59.for.body.i59_crit_edge

for.body.i59.for.body.i59_crit_edge:              ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i59

for.body.i59.context_release.exit_crit_edge:      ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_release.exit

context_release.exit:                             ; preds = %for.body.i59.context_release.exit_crit_edge, %if.end17.context_release.exit_crit_edge
  %buffer_list.i60 = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 20, i32 6
  %48 = ptrtoint ptr %buffer_list.i60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer_list.i60, align 4
  %cmp.not22.i61 = icmp eq ptr %49, %buffer_list.i60
  br i1 %cmp.not22.i61, label %context_release.exit.context_release.exit70_crit_edge, label %for.body.lr.ph.i63

context_release.exit.context_release.exit70_crit_edge: ; preds = %context_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_release.exit70

for.body.lr.ph.i63:                               ; preds = %context_release.exit
  %at_response_ctx = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 20
  %50 = ptrtoint ptr %at_response_ctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %at_response_ctx, align 4
  %device.i62 = getelementptr inbounds %struct.fw_card, ptr %51, i32 0, i32 1
  br label %for.body.i69

for.body.i69:                                     ; preds = %for.body.i69.for.body.i69_crit_edge, %for.body.lr.ph.i63
  %desc.023.i64 = phi ptr [ %49, %for.body.lr.ph.i63 ], [ %tmp.0.i65, %for.body.i69.for.body.i69_crit_edge ]
  %52 = ptrtoint ptr %desc.023.i64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %tmp.0.i65 = load ptr, ptr %desc.023.i64, align 16
  %53 = ptrtoint ptr %device.i62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device.i62, align 4
  %buffer_bus.i66 = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.023.i64, i32 0, i32 1
  %55 = ptrtoint ptr %buffer_bus.i66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buffer_bus.i66, align 8
  %sub.i67 = add i32 %56, -32
  tail call void @dma_free_attrs(ptr noundef %54, i32 noundef 4096, ptr noundef %desc.023.i64, i32 noundef %sub.i67, i32 noundef 0) #10
  %cmp.not.i68 = icmp eq ptr %tmp.0.i65, %buffer_list.i60
  br i1 %cmp.not.i68, label %for.body.i69.context_release.exit70_crit_edge, label %for.body.i69.for.body.i69_crit_edge

for.body.i69.for.body.i69_crit_edge:              ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i69

for.body.i69.context_release.exit70_crit_edge:    ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_release.exit70

context_release.exit70:                           ; preds = %for.body.i69.context_release.exit70_crit_edge, %context_release.exit.context_release.exit70_crit_edge
  %it_context_list = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 23
  %57 = ptrtoint ptr %it_context_list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %it_context_list, align 8
  tail call void @kfree(ptr noundef %58) #10
  %ir_context_list = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 27
  %59 = ptrtoint ptr %ir_context_list to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ir_context_list, align 8
  tail call void @kfree(ptr noundef %60) #10
  tail call void @pci_disable_msi(ptr noundef %dev) #10
  %61 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %registers.i, align 8
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %62) #10
  tail call void @pci_release_region(ptr noundef %dev, i32 noundef 0) #10
  tail call void @pci_disable_device(ptr noundef %dev) #10
  tail call void @kfree(ptr noundef %1) #10
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev20, ptr noundef nonnull @.str.195) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_suspend(ptr noundef %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 256) #10, !srcloc !420
  br label %for.body.i

for.body.i:                                       ; preds = %if.end3.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end3.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not.i = icmp eq i32 %6, -1
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  %or.cond = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond, label %for.body.i.software_reset.exit_crit_edge, label %if.end3.i

for.body.i.software_reset.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %software_reset.exit

if.end3.i:                                        ; preds = %for.body.i
  tail call void @msleep(i32 noundef 1) #10
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 500
  br i1 %exitcond.not.i, label %if.end3.i.software_reset.exit_crit_edge, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end3.i.software_reset.exit_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %software_reset.exit

software_reset.exit:                              ; preds = %if.end3.i.software_reset.exit_crit_edge, %for.body.i.software_reset.exit_crit_edge
  %call2 = tail call i32 @pci_save_state(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %software_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.197) #13
  br label %cleanup

if.end:                                           ; preds = %software_reset.exit
  %call4 = tail call i32 @pci_choose_state(ptr noundef %dev, [1 x i32] %state.coerce) #10
  %call5 = tail call i32 @pci_set_power_state(ptr noundef %dev, i32 noundef %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %device12 = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.200, i32 noundef %call5) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %do.end
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %dev, i32 noundef 0) #10
  tail call void @pci_restore_state(ptr noundef %dev) #10
  %call2 = tail call i32 @pci_enable_device(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.202) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %registers.i, align 8
  %add.ptr.i35 = getelementptr i8, ptr %8, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %guid = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %guid to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %guid, align 8
  %conv = trunc i64 %11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  %13 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers.i, align 8
  %add.ptr.i37 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %12) #10, !srcloc !420
  %15 = ptrtoint ptr %guid to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %guid, align 8
  %shr = lshr i64 %16, 32
  %conv11 = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv11) #10
  %18 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %registers.i, align 8
  %add.ptr.i39 = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %17) #10, !srcloc !420
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call14 = tail call i32 @ohci_enable(ptr noundef %1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %n_ir.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %n_ir.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_ir.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp36.i = icmp sgt i32 %21, 0
  br i1 %cmp36.i, label %for.body.lr.ph.i, label %if.end17.for.cond2.preheader.i_crit_edge

if.end17.for.cond2.preheader.i_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end17
  %ir_context_list.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 27
  br label %for.body.i

for.cond2.preheader.i:                            ; preds = %for.inc.i.for.cond2.preheader.i_crit_edge, %if.end17.for.cond2.preheader.i_crit_edge
  %n_it.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %n_it.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_it.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp339.i = icmp sgt i32 %23, 0
  br i1 %cmp339.i, label %for.body5.lr.ph.i, label %for.cond2.preheader.i.cleanup_crit_edge

for.cond2.preheader.i.cleanup_crit_edge:          ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body5.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %it_context_list.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 23
  br label %for.body5.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %ir_context_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ir_context_list.i, align 8
  %running.i = getelementptr %struct.iso_context, ptr %25, i32 %i.037.i, i32 1, i32 4
  %26 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %running.i, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.iso_context, ptr %25, i32 %i.037.i
  %sync.i = getelementptr %struct.iso_context, ptr %25, i32 %i.037.i, i32 8
  %28 = ptrtoint ptr %sync.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sync.i, align 4
  %conv.i = zext i8 %29 to i32
  %tags.i = getelementptr %struct.iso_context, ptr %25, i32 %i.037.i, i32 9
  %30 = ptrtoint ptr %tags.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tags.i, align 1
  %conv1.i = zext i8 %31 to i32
  %call.i = tail call i32 @ohci_start_iso(ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef %conv.i, i32 noundef %conv1.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %32 = ptrtoint ptr %n_ir.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_ir.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %33
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond2.preheader.i_crit_edge

for.inc.i.for.cond2.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body5.i:                                      ; preds = %for.inc18.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %i.140.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc19.i, %for.inc18.i.for.body5.i_crit_edge ]
  %34 = ptrtoint ptr %it_context_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %it_context_list.i, align 8
  %running8.i = getelementptr %struct.iso_context, ptr %35, i32 %i.140.i, i32 1, i32 4
  %36 = ptrtoint ptr %running8.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %running8.i, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool9.not.i = icmp eq i8 %37, 0
  br i1 %tobool9.not.i, label %for.body5.i.for.inc18.i_crit_edge, label %if.then10.i

for.body5.i.for.inc18.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.i

if.then10.i:                                      ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6.i = getelementptr %struct.iso_context, ptr %35, i32 %i.140.i
  %sync12.i = getelementptr %struct.iso_context, ptr %35, i32 %i.140.i, i32 8
  %38 = ptrtoint ptr %sync12.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sync12.i, align 4
  %conv13.i = zext i8 %39 to i32
  %tags14.i = getelementptr %struct.iso_context, ptr %35, i32 %i.140.i, i32 9
  %40 = ptrtoint ptr %tags14.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tags14.i, align 1
  %conv15.i = zext i8 %41 to i32
  %call16.i = tail call i32 @ohci_start_iso(ptr noundef %arrayidx6.i, i32 noundef 0, i32 noundef %conv13.i, i32 noundef %conv15.i) #10
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %if.then10.i, %for.body5.i.for.inc18.i_crit_edge
  %inc19.i = add nuw nsw i32 %i.140.i, 1
  %42 = ptrtoint ptr %n_it.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_it.i, align 4
  %cmp3.i = icmp slt i32 %inc19.i, %43
  br i1 %cmp3.i, label %for.inc18.i.for.body5.i_crit_edge, label %for.inc18.i.cleanup_crit_edge

for.inc18.i.cleanup_crit_edge:                    ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc18.i.for.body5.i_crit_edge:                ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5.i

cleanup:                                          ; preds = %for.inc18.i.cleanup_crit_edge, %for.cond2.preheader.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call14, %if.end12.cleanup_crit_edge ], [ 0, %for.cond2.preheader.i.cleanup_crit_edge ], [ 0, %for.inc18.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_card_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bus_reset_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2056
  %registers.i = getelementptr i8, ptr %work, i32 -576
  %0 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 232
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !421
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr i8, ptr %work, i32 -2052
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %5, ptr noundef nonnull @.str.103) #13
  br label %cleanup138

if.end:                                           ; preds = %entry
  %and1 = and i32 %3, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and1)
  %cmp = icmp eq i32 %and1, 63
  br i1 %cmp, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %device7 = getelementptr i8, ptr %work, i32 -2052
  %6 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device7, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %7, ptr noundef nonnull @.str.106) #13
  br label %cleanup138

if.end8:                                          ; preds = %if.end
  %and9 = and i32 %3, 65535
  %node_id = getelementptr i8, ptr %work, i32 -572
  %8 = ptrtoint ptr %node_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and9, ptr %node_id, align 4
  %and10 = and i32 %3, 1073741824
  %and10.lobit = lshr exact i32 %and10, 30
  %9 = trunc i32 %and10.lobit to i8
  %is_root = getelementptr i8, ptr %work, i32 -547
  %10 = ptrtoint ptr %is_root to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_root, align 1, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  %or.cond = select i1 %tobool12.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %if.then14, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registers.i, align 8
  %add.ptr.i241 = getelementptr i8, ptr %13, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i241, i32 8192) #10, !srcloc !420
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end8.if.end15_crit_edge
  %14 = ptrtoint ptr %is_root to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %is_root, align 1
  %15 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %registers.i, align 8
  %add.ptr.i243 = getelementptr i8, ptr %16, i32 104
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i243) #10, !srcloc !421
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool21.not = icmp sgt i32 %18, -1
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %device27 = getelementptr i8, ptr %work, i32 -2052
  %19 = ptrtoint ptr %device27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device27, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %20, ptr noundef nonnull @.str.109) #13
  br label %cleanup138

if.end28:                                         ; preds = %if.end15
  %shr = lshr i32 %18, 3
  %and29 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %and29)
  %cmp30 = icmp ugt i32 %and29, 252
  br i1 %cmp30, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %device36 = getelementptr i8, ptr %work, i32 -2052
  %21 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device36, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %22, ptr noundef nonnull @.str.112, i32 noundef %18) #13
  br label %cleanup138

if.end37:                                         ; preds = %if.end28
  %self_id = getelementptr i8, ptr %work, i32 -8
  %23 = ptrtoint ptr %self_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %self_id, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = lshr i32 %26, 8
  %and39 = and i32 %27, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp40352.not = icmp eq i32 %and29, 0
  br i1 %cmp40352.not, label %if.end37.for.end_crit_edge, label %for.body.lr.ph

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end37
  %self_id_buffer = getelementptr i8, ptr %work, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0354 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %i.0353 = phi i32 [ 1, %for.body.lr.ph ], [ %add63, %for.inc.for.body_crit_edge ]
  %28 = ptrtoint ptr %self_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %self_id, align 8
  %arrayidx42 = getelementptr i32, ptr %29, i32 %i.0353
  %30 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx42, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %add = add nuw nsw i32 %i.0353, 1
  %arrayidx44 = getelementptr i32, ptr %29, i32 %add
  %33 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx44, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %neg = xor i32 %35, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %neg)
  %cmp45.not = icmp eq i32 %32, %neg
  br i1 %cmp45.not, label %for.inc, label %if.then46

if.then46:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1895759873, i32 %31)
  %cmp47 = icmp eq i32 %31, -1895759873
  %device53 = getelementptr i8, ptr %work, i32 -2052
  %36 = ptrtoint ptr %device53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device53, align 4
  br i1 %cmp47, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %37, ptr noundef nonnull @.str.118, i32 noundef %j.0354, i32 noundef %and29, i32 noundef %32, i32 noundef %35) #13
  br label %cleanup138

cleanup:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %37, ptr noundef nonnull @.str.115) #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %arrayidx61 = getelementptr [512 x i32], ptr %self_id_buffer, i32 0, i32 %j.0354
  %38 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %32, ptr %arrayidx61, align 4
  %add63 = add nuw nsw i32 %i.0353, 2
  %inc = add nuw nsw i32 %j.0354, 1
  %exitcond.not = icmp eq i32 %inc, %and29
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %if.end37.for.end_crit_edge
  %self_id_count.2 = phi i32 [ %j.0354, %cleanup ], [ 0, %if.end37.for.end_crit_edge ], [ %and29, %for.inc.for.end_crit_edge ]
  %quirks = getelementptr i8, ptr %work, i32 -560
  %39 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quirks, align 8
  %and64 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %for.end.if.end76_crit_edge, label %if.then66

for.end.if.end76_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then66:                                        ; preds = %for.end
  %41 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 232
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !421
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %tobool.not.i = icmp sgt i32 %44, -1
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr i8, ptr %work, i32 -2052
  %45 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device.i, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %46, ptr noundef nonnull @.str.103) #13
  br label %do.end72

if.end.i:                                         ; preds = %if.then66
  %phy_reg_mutex.i.i = getelementptr i8, ptr %work, i32 -492
  tail call void @mutex_lock_nested(ptr noundef %phy_reg_mutex.i.i, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 8650752) #10, !srcloc !420
  br label %for.body.i102.i

for.body.i102.i:                                  ; preds = %for.inc.i106.i.for.body.i102.i_crit_edge, %if.end.i
  %i.019.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i104.i, %for.inc.i106.i.for.body.i102.i_crit_edge ]
  %49 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17.i.i = getelementptr i8, ptr %50, i32 236
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, -1
  br i1 %tobool.not.i.i, label %for.body.i102.i.read_phy_reg.exit.thread.i_crit_edge, label %if.end.i103.i

for.body.i102.i.read_phy_reg.exit.thread.i_crit_edge: ; preds = %for.body.i102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_phy_reg.exit.thread.i

if.end.i103.i:                                    ; preds = %for.body.i102.i
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %tobool1.not.i.i = icmp sgt i32 %52, -1
  br i1 %tobool1.not.i.i, label %if.end4.i.i, label %read_phy_reg.exit.i

if.end4.i.i:                                      ; preds = %if.end.i103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i.i)
  %cmp5.i.i = icmp ugt i32 %i.019.i.i, 2
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end4.i.i.for.inc.i106.i_crit_edge

if.end4.i.i.for.inc.i106.i_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i106.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i106.i

for.inc.i106.i:                                   ; preds = %if.then6.i.i, %if.end4.i.i.for.inc.i106.i_crit_edge
  %inc.i104.i = add nuw nsw i32 %i.019.i.i, 1
  %exitcond.not.i105.i = icmp eq i32 %inc.i104.i, 103
  br i1 %exitcond.not.i105.i, label %do.end.i.i, label %for.inc.i106.i.for.body.i102.i_crit_edge

for.inc.i106.i.for.body.i102.i_crit_edge:         ; preds = %for.inc.i106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i102.i

do.end.i.i:                                       ; preds = %for.inc.i106.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i = getelementptr i8, ptr %work, i32 -2052
  %53 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.42, i32 noundef 4) #13
  tail call void @dump_stack() #13
  br label %read_phy_reg.exit.thread.i

read_phy_reg.exit.thread.i:                       ; preds = %do.end.i.i, %for.body.i102.i.read_phy_reg.exit.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i.i) #10
  br label %do.end72

read_phy_reg.exit.i:                              ; preds = %if.end.i103.i
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i.i) #10
  tail call void @mutex_lock_nested(ptr noundef %phy_reg_mutex.i.i, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i109.i = getelementptr i8, ptr %56, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109.i, i32 8454144) #10, !srcloc !420
  br label %for.body.i113.i

for.body.i113.i:                                  ; preds = %for.inc.i124.i.for.body.i113.i_crit_edge, %read_phy_reg.exit.i
  %i.019.i110.i = phi i32 [ 0, %read_phy_reg.exit.i ], [ %inc.i122.i, %for.inc.i124.i.for.body.i113.i_crit_edge ]
  %57 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17.i111.i = getelementptr i8, ptr %58, i32 236
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i111.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %tobool.not.i112.i = icmp eq i32 %59, -1
  br i1 %tobool.not.i112.i, label %for.body.i113.i.read_phy_reg.exit128.thread.i_crit_edge, label %if.end.i115.i

for.body.i113.i.read_phy_reg.exit128.thread.i_crit_edge: ; preds = %for.body.i113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_phy_reg.exit128.thread.i

if.end.i115.i:                                    ; preds = %for.body.i113.i
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %tobool1.not.i114.i = icmp sgt i32 %60, -1
  br i1 %tobool1.not.i114.i, label %if.end4.i120.i, label %read_phy_reg.exit128.i

if.end4.i120.i:                                   ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i110.i)
  %cmp5.i119.i = icmp ugt i32 %i.019.i110.i, 2
  br i1 %cmp5.i119.i, label %if.then6.i121.i, label %if.end4.i120.i.for.inc.i124.i_crit_edge

if.end4.i120.i.for.inc.i124.i_crit_edge:          ; preds = %if.end4.i120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i124.i

if.then6.i121.i:                                  ; preds = %if.end4.i120.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i124.i

for.inc.i124.i:                                   ; preds = %if.then6.i121.i, %if.end4.i120.i.for.inc.i124.i_crit_edge
  %inc.i122.i = add nuw nsw i32 %i.019.i110.i, 1
  %exitcond.not.i123.i = icmp eq i32 %inc.i122.i, 103
  br i1 %exitcond.not.i123.i, label %do.end.i126.i, label %for.inc.i124.i.for.body.i113.i_crit_edge

for.inc.i124.i.for.body.i113.i_crit_edge:         ; preds = %for.inc.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i113.i

do.end.i126.i:                                    ; preds = %for.inc.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i125.i = getelementptr i8, ptr %work, i32 -2052
  %61 = ptrtoint ptr %device.i125.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device.i125.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.42, i32 noundef 1) #13
  tail call void @dump_stack() #13
  br label %read_phy_reg.exit128.thread.i

read_phy_reg.exit128.thread.i:                    ; preds = %do.end.i126.i, %for.body.i113.i.read_phy_reg.exit128.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i.i) #10
  br label %do.end72

read_phy_reg.exit128.i:                           ; preds = %if.end.i115.i
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i.i) #10
  %63 = lshr i32 %52, 8
  %shl7.i = and i32 %63, 1792
  %and1.i = shl i32 %44, 24
  %shl.i = and i32 %and1.i, 1056964608
  %shl15.i = and i32 %60, 4128768
  tail call void @mutex_lock_nested(ptr noundef %phy_reg_mutex.i.i, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %64 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i298 = getelementptr i8, ptr %65, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i298, i32 4653056) #10, !srcloc !420
  br label %for.body.i302

for.body.i302:                                    ; preds = %for.inc.i307.for.body.i302_crit_edge, %read_phy_reg.exit128.i
  %i.019.i299 = phi i32 [ 0, %read_phy_reg.exit128.i ], [ %inc.i305, %for.inc.i307.for.body.i302_crit_edge ]
  %66 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17.i300 = getelementptr i8, ptr %67, i32 236
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i300) #10, !srcloc !421
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %tobool.not.i301 = icmp eq i32 %68, -1
  br i1 %tobool.not.i301, label %for.body.i302.get_status_for_port.exit.thread.i_crit_edge, label %if.end.i304

for.body.i302.get_status_for_port.exit.thread.i_crit_edge: ; preds = %for.body.i302
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_status_for_port.exit.thread.i

if.end.i304:                                      ; preds = %for.body.i302
  %and.i303 = and i32 %69, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i303)
  %tobool2.not.i = icmp eq i32 %and.i303, 0
  br i1 %tobool2.not.i, label %if.then.i.i, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i299)
  %cmp5.i = icmp ugt i32 %i.019.i299, 2
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.for.inc.i307_crit_edge

if.end4.i.for.inc.i307_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i307

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i307

for.inc.i307:                                     ; preds = %if.then6.i, %if.end4.i.for.inc.i307_crit_edge
  %inc.i305 = add nuw nsw i32 %i.019.i299, 1
  %exitcond.not.i306 = icmp eq i32 %inc.i305, 103
  br i1 %exitcond.not.i306, label %do.end.i309, label %for.inc.i307.for.body.i302_crit_edge

for.inc.i307.for.body.i302_crit_edge:             ; preds = %for.inc.i307
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i302

do.end.i309:                                      ; preds = %for.inc.i307
  call void @__sanitizer_cov_trace_pc() #12
  %device.i308 = getelementptr i8, ptr %work, i32 -2052
  %70 = ptrtoint ptr %device.i308 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device.i308, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.44, i32 noundef 7, i32 noundef %69) #13
  br label %get_status_for_port.exit.thread.i.sink.split

if.then.i.i:                                      ; preds = %if.end.i304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %72 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %73, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 8912896) #10, !srcloc !420
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i
  %i.019.i.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %74 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17.i.i.i = getelementptr i8, ptr %75, i32 236
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %tobool.not.i.i.i = icmp eq i32 %76, -1
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.get_status_for_port.exit.thread.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.get_status_for_port.exit.thread.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_status_for_port.exit.thread.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %tobool1.not.i.i.i = icmp sgt i32 %77, -1
  br i1 %tobool1.not.i.i.i, label %if.end4.i.i.i, label %get_status_for_port.exit.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i.i.i)
  %cmp5.i.i.i = icmp ugt i32 %i.019.i.i.i, 2
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.end4.i.i.i.for.inc.i.i.i_crit_edge

if.end4.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then6.i.i.i, %if.end4.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.019.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 103
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.do.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %for.inc.i.i.2.i.do.end.i.i.i_crit_edge, %for.inc.i.i.1.i.do.end.i.i.i_crit_edge, %for.inc.i.i.i.do.end.i.i.i_crit_edge
  %device.i.i.i = getelementptr i8, ptr %work, i32 -2052
  %78 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.42, i32 noundef 8) #13
  br label %get_status_for_port.exit.thread.i.sink.split

get_status_for_port.exit.thread.i.sink.split:     ; preds = %do.end.i.i.i, %do.end.i309
  tail call void @dump_stack() #13
  br label %get_status_for_port.exit.thread.i

get_status_for_port.exit.thread.i:                ; preds = %for.body.i.i.2.i.get_status_for_port.exit.thread.i_crit_edge, %get_status_for_port.exit.1.i.get_status_for_port.exit.thread.i_crit_edge, %for.body.i.i.1.i.get_status_for_port.exit.thread.i_crit_edge, %get_status_for_port.exit.i.get_status_for_port.exit.thread.i_crit_edge, %get_status_for_port.exit.thread.i.sink.split, %for.body.i.i.i.get_status_for_port.exit.thread.i_crit_edge, %for.body.i302.get_status_for_port.exit.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i.i) #10
  br label %do.end72

get_status_for_port.exit.i:                       ; preds = %if.end.i.i.i
  %and3.i.i.i = lshr i32 %77, 16
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i.i) #10
  %and.i.i = and i32 %and3.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %and.i.i, 14
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 192, i32 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i.i)
  %switch.selectcmp13.i.i = icmp eq i32 %and.i.i, 6
  %switch.select14.i.i = select i1 %switch.selectcmp13.i.i, i32 128, i32 %switch.select.i.i
  tail call void @mutex_lock_nested(ptr noundef %phy_reg_mutex.i.i, i32 noundef 0) #10
  %call.i.1.i = tail call fastcc i32 @write_phy_reg(ptr noundef %add.ptr, i32 noundef 7, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.1.i)
  %cmp.i.1.i = icmp sgt i32 %call.i.1.i, -1
  br i1 %cmp.i.1.i, label %if.then.i.1.i, label %get_status_for_port.exit.i.get_status_for_port.exit.thread.i_crit_edge

get_status_for_port.exit.i.get_status_for_port.exit.thread.i_crit_edge: ; preds = %get_status_for_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_status_for_port.exit.thread.i

if.then.i.1.i:                                    ; preds = %get_status_for_port.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %80 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i.i.1.i = getelementptr i8, ptr %81, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.1.i, i32 8912896) #10, !srcloc !420
  br label %for.body.i.i.1.i

for.body.i.i.1.i:                                 ; preds = %for.inc.i.i.1.i.for.body.i.i.1.i_crit_edge, %if.then.i.1.i
  %i.019.i.i.1.i = phi i32 [ 0, %if.then.i.1.i ], [ %inc.i.i.1.i, %for.inc.i.i.1.i.for.body.i.i.1.i_crit_edge ]
  %82 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17.i.i.1.i = getelementptr i8, ptr %83, i32 236
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i.1.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %tobool.not.i.i.1.i = icmp eq i32 %84, -1
  br i1 %tobool.not.i.i.1.i, label %for.body.i.i.1.i.get_status_for_port.exit.thread.i_crit_edge, label %if.end.i.i.1.i

for.body.i.i.1.i.get_status_for_port.exit.thread.i_crit_edge: ; preds = %for.body.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_status_for_port.exit.thread.i

if.end.i.i.1.i:                                   ; preds = %for.body.i.i.1.i
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %tobool1.not.i.i.1.i = icmp sgt i32 %85, -1
  br i1 %tobool1.not.i.i.1.i, label %if.end4.i.i.1.i, label %get_status_for_port.exit.1.i

get_status_for_port.exit.1.i:                     ; preds = %if.end.i.i.1.i
  %and3.i.i.1.i = lshr i32 %85, 16
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i.i) #10
  %and.i.1.i = and i32 %and3.i.i.1.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and.i.1.i)
  %switch.selectcmp.i.1.i = icmp eq i32 %and.i.1.i, 14
  %switch.select.i.1.i = select i1 %switch.selectcmp.i.1.i, i32 48, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i.1.i)
  %switch.selectcmp13.i.1.i = icmp eq i32 %and.i.1.i, 6
  %switch.select14.i.1.i = select i1 %switch.selectcmp13.i.1.i, i32 32, i32 %switch.select.i.1.i
  tail call void @mutex_lock_nested(ptr noundef %phy_reg_mutex.i.i, i32 noundef 0) #10
  %call.i.2.i = tail call fastcc i32 @write_phy_reg(ptr noundef %add.ptr, i32 noundef 7, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.2.i)
  %cmp.i.2.i = icmp sgt i32 %call.i.2.i, -1
  br i1 %cmp.i.2.i, label %if.then.i.2.i, label %get_status_for_port.exit.1.i.get_status_for_port.exit.thread.i_crit_edge

get_status_for_port.exit.1.i.get_status_for_port.exit.thread.i_crit_edge: ; preds = %get_status_for_port.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_status_for_port.exit.thread.i

if.end4.i.i.1.i:                                  ; preds = %if.end.i.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i.i.1.i)
  %cmp5.i.i.1.i = icmp ugt i32 %i.019.i.i.1.i, 2
  br i1 %cmp5.i.i.1.i, label %if.then6.i.i.1.i, label %if.end4.i.i.1.i.for.inc.i.i.1.i_crit_edge

if.end4.i.i.1.i.for.inc.i.i.1.i_crit_edge:        ; preds = %if.end4.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.1.i

if.then6.i.i.1.i:                                 ; preds = %if.end4.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i.i.1.i

for.inc.i.i.1.i:                                  ; preds = %if.then6.i.i.1.i, %if.end4.i.i.1.i.for.inc.i.i.1.i_crit_edge
  %inc.i.i.1.i = add nuw nsw i32 %i.019.i.i.1.i, 1
  %exitcond.not.i.i.1.i = icmp eq i32 %inc.i.i.1.i, 103
  br i1 %exitcond.not.i.i.1.i, label %for.inc.i.i.1.i.do.end.i.i.i_crit_edge, label %for.inc.i.i.1.i.for.body.i.i.1.i_crit_edge

for.inc.i.i.1.i.for.body.i.i.1.i_crit_edge:       ; preds = %for.inc.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.1.i

for.inc.i.i.1.i.do.end.i.i.i_crit_edge:           ; preds = %for.inc.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

if.then.i.2.i:                                    ; preds = %get_status_for_port.exit.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %86 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i.i.2.i = getelementptr i8, ptr %87, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.2.i, i32 8912896) #10, !srcloc !420
  br label %for.body.i.i.2.i

for.body.i.i.2.i:                                 ; preds = %for.inc.i.i.2.i.for.body.i.i.2.i_crit_edge, %if.then.i.2.i
  %i.019.i.i.2.i = phi i32 [ 0, %if.then.i.2.i ], [ %inc.i.i.2.i, %for.inc.i.i.2.i.for.body.i.i.2.i_crit_edge ]
  %88 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17.i.i.2.i = getelementptr i8, ptr %89, i32 236
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i.2.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %tobool.not.i.i.2.i = icmp eq i32 %90, -1
  br i1 %tobool.not.i.i.2.i, label %for.body.i.i.2.i.get_status_for_port.exit.thread.i_crit_edge, label %if.end.i.i.2.i

for.body.i.i.2.i.get_status_for_port.exit.thread.i_crit_edge: ; preds = %for.body.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_status_for_port.exit.thread.i

if.end.i.i.2.i:                                   ; preds = %for.body.i.i.2.i
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %tobool1.not.i.i.2.i = icmp sgt i32 %91, -1
  br i1 %tobool1.not.i.i.2.i, label %if.end4.i.i.2.i, label %get_status_for_port.exit.2.i

get_status_for_port.exit.2.i:                     ; preds = %if.end.i.i.2.i
  %and3.i.i.2.i = lshr i32 %91, 16
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i.i) #10
  %and.i.2.i = and i32 %and3.i.i.2.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and.i.2.i)
  %switch.selectcmp.i.2.i = icmp eq i32 %and.i.2.i, 14
  %switch.select.i.2.i = select i1 %switch.selectcmp.i.2.i, i32 12, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i.2.i)
  %switch.selectcmp13.i.2.i = icmp eq i32 %and.i.2.i, 6
  %switch.select14.i.2.i = select i1 %switch.selectcmp13.i.2.i, i32 8, i32 %switch.select.i.2.i
  tail call void @mutex_lock_nested(ptr noundef %phy_reg_mutex.i.i, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %92 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i.i81.i = getelementptr i8, ptr %93, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i81.i, i32 -532217856) #10, !srcloc !420
  br label %for.body.i.i85.i

if.end4.i.i.2.i:                                  ; preds = %if.end.i.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i.i.2.i)
  %cmp5.i.i.2.i = icmp ugt i32 %i.019.i.i.2.i, 2
  br i1 %cmp5.i.i.2.i, label %if.then6.i.i.2.i, label %if.end4.i.i.2.i.for.inc.i.i.2.i_crit_edge

if.end4.i.i.2.i.for.inc.i.i.2.i_crit_edge:        ; preds = %if.end4.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.2.i

if.then6.i.i.2.i:                                 ; preds = %if.end4.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i.i.2.i

for.inc.i.i.2.i:                                  ; preds = %if.then6.i.i.2.i, %if.end4.i.i.2.i.for.inc.i.i.2.i_crit_edge
  %inc.i.i.2.i = add nuw nsw i32 %i.019.i.i.2.i, 1
  %exitcond.not.i.i.2.i = icmp eq i32 %inc.i.i.2.i, 103
  br i1 %exitcond.not.i.i.2.i, label %for.inc.i.i.2.i.do.end.i.i.i_crit_edge, label %for.inc.i.i.2.i.for.body.i.i.2.i_crit_edge

for.inc.i.i.2.i.for.body.i.i.2.i_crit_edge:       ; preds = %for.inc.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.2.i

for.inc.i.i.2.i.do.end.i.i.i_crit_edge:           ; preds = %for.inc.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

for.body.i.i85.i:                                 ; preds = %for.inc.i.i92.i.for.body.i.i85.i_crit_edge, %get_status_for_port.exit.2.i
  %i.019.i.i82.i = phi i32 [ 0, %get_status_for_port.exit.2.i ], [ %inc.i.i90.i, %for.inc.i.i92.i.for.body.i.i85.i_crit_edge ]
  %94 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17.i.i83.i = getelementptr i8, ptr %95, i32 236
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i83.i) #10, !srcloc !421
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %tobool.not.i.i84.i = icmp eq i32 %96, -1
  br i1 %tobool.not.i.i84.i, label %for.body.i.i85.i.initiated_reset.exit.i_crit_edge, label %if.end.i.i86.i

for.body.i.i85.i.initiated_reset.exit.i_crit_edge: ; preds = %for.body.i.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %initiated_reset.exit.i

if.end.i.i86.i:                                   ; preds = %for.body.i.i85.i
  %and.i.i.i = and i32 %97, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i95.i, label %if.end4.i.i88.i

if.end4.i.i88.i:                                  ; preds = %if.end.i.i86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i.i82.i)
  %cmp5.i.i87.i = icmp ugt i32 %i.019.i.i82.i, 2
  br i1 %cmp5.i.i87.i, label %if.then6.i.i89.i, label %if.end4.i.i88.i.for.inc.i.i92.i_crit_edge

if.end4.i.i88.i.for.inc.i.i92.i_crit_edge:        ; preds = %if.end4.i.i88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i92.i

if.then6.i.i89.i:                                 ; preds = %if.end4.i.i88.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i.i92.i

for.inc.i.i92.i:                                  ; preds = %if.then6.i.i89.i, %if.end4.i.i88.i.for.inc.i.i92.i_crit_edge
  %inc.i.i90.i = add nuw nsw i32 %i.019.i.i82.i, 1
  %exitcond.not.i.i91.i = icmp eq i32 %inc.i.i90.i, 103
  br i1 %exitcond.not.i.i91.i, label %do.end.i.i94.i, label %for.inc.i.i92.i.for.body.i.i85.i_crit_edge

for.inc.i.i92.i.for.body.i.i85.i_crit_edge:       ; preds = %for.inc.i.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i85.i

do.end.i.i94.i:                                   ; preds = %for.inc.i.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i93.i = getelementptr i8, ptr %work, i32 -2052
  %98 = ptrtoint ptr %device.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device.i.i93.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.44, i32 noundef 7, i32 noundef %97) #13
  tail call void @dump_stack() #13
  br label %initiated_reset.exit.i

if.then.i95.i:                                    ; preds = %if.end.i.i86.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %100 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i25.i.i = getelementptr i8, ptr %101, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25.i.i, i32 8912896) #10, !srcloc !420
  br label %for.body.i29.i.i

for.body.i29.i.i:                                 ; preds = %for.inc.i36.i.i.for.body.i29.i.i_crit_edge, %if.then.i95.i
  %i.019.i26.i.i = phi i32 [ 0, %if.then.i95.i ], [ %inc.i34.i.i, %for.inc.i36.i.i.for.body.i29.i.i_crit_edge ]
  %102 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17.i27.i.i = getelementptr i8, ptr %103, i32 236
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i27.i.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %tobool.not.i28.i.i = icmp eq i32 %104, -1
  br i1 %tobool.not.i28.i.i, label %for.body.i29.i.i.read_phy_reg.exit.i.i_crit_edge, label %if.end.i30.i.i

for.body.i29.i.i.read_phy_reg.exit.i.i_crit_edge: ; preds = %for.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_phy_reg.exit.i.i

if.end.i30.i.i:                                   ; preds = %for.body.i29.i.i
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %tobool1.not.i.i96.i = icmp sgt i32 %105, -1
  br i1 %tobool1.not.i.i96.i, label %if.end4.i32.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i.i97.i = lshr i32 %105, 16
  %shr.i.i.i = and i32 %and3.i.i97.i, 191
  %phi.bo.i.i = or i32 %shr.i.i.i, 64
  br label %read_phy_reg.exit.i.i

if.end4.i32.i.i:                                  ; preds = %if.end.i30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i26.i.i)
  %cmp5.i31.i.i = icmp ugt i32 %i.019.i26.i.i, 2
  br i1 %cmp5.i31.i.i, label %if.then6.i33.i.i, label %if.end4.i32.i.i.for.inc.i36.i.i_crit_edge

if.end4.i32.i.i.for.inc.i36.i.i_crit_edge:        ; preds = %if.end4.i32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i36.i.i

if.then6.i33.i.i:                                 ; preds = %if.end4.i32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i36.i.i

for.inc.i36.i.i:                                  ; preds = %if.then6.i33.i.i, %if.end4.i32.i.i.for.inc.i36.i.i_crit_edge
  %inc.i34.i.i = add nuw nsw i32 %i.019.i26.i.i, 1
  %exitcond.not.i35.i.i = icmp eq i32 %inc.i34.i.i, 103
  br i1 %exitcond.not.i35.i.i, label %do.end.i38.i.i, label %for.inc.i36.i.i.for.body.i29.i.i_crit_edge

for.inc.i36.i.i.for.body.i29.i.i_crit_edge:       ; preds = %for.inc.i36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i29.i.i

do.end.i38.i.i:                                   ; preds = %for.inc.i36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i37.i.i = getelementptr i8, ptr %work, i32 -2052
  %106 = ptrtoint ptr %device.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device.i37.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.42, i32 noundef 8) #13
  tail call void @dump_stack() #13
  br label %read_phy_reg.exit.i.i

read_phy_reg.exit.i.i:                            ; preds = %do.end.i38.i.i, %if.then2.i.i.i, %for.body.i29.i.i.read_phy_reg.exit.i.i_crit_edge
  %retval.0.i39.i.i = phi i32 [ %phi.bo.i.i, %if.then2.i.i.i ], [ -16, %do.end.i38.i.i ], [ -19, %for.body.i29.i.i.read_phy_reg.exit.i.i_crit_edge ]
  %call2.i.i = tail call fastcc i32 @write_phy_reg(ptr noundef %add.ptr, i32 noundef 8, i32 noundef %retval.0.i39.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp3.i.i = icmp sgt i32 %call2.i.i, -1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %read_phy_reg.exit.i.i.initiated_reset.exit.i_crit_edge

read_phy_reg.exit.i.i.initiated_reset.exit.i_crit_edge: ; preds = %read_phy_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %initiated_reset.exit.i

if.then4.i.i:                                     ; preds = %read_phy_reg.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %108 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i41.i.i = getelementptr i8, ptr %109, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41.i.i, i32 9175040) #10, !srcloc !420
  br label %for.body.i45.i.i

for.body.i45.i.i:                                 ; preds = %for.inc.i56.i.i.for.body.i45.i.i_crit_edge, %if.then4.i.i
  %i.019.i42.i.i = phi i32 [ 0, %if.then4.i.i ], [ %inc.i54.i.i, %for.inc.i56.i.i.for.body.i45.i.i_crit_edge ]
  %110 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17.i43.i.i = getelementptr i8, ptr %111, i32 236
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i43.i.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %tobool.not.i44.i.i = icmp eq i32 %112, -1
  br i1 %tobool.not.i44.i.i, label %for.body.i45.i.i.initiated_reset.exit.i_crit_edge, label %if.end.i47.i.i

for.body.i45.i.i.initiated_reset.exit.i_crit_edge: ; preds = %for.body.i45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %initiated_reset.exit.i

if.end.i47.i.i:                                   ; preds = %for.body.i45.i.i
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %113)
  %tobool1.not.i46.i.i = icmp sgt i32 %113, -1
  br i1 %tobool1.not.i46.i.i, label %if.end4.i52.i.i, label %if.then2.i50.i.i

if.then2.i50.i.i:                                 ; preds = %if.end.i47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %114 = lshr i32 %113, 18
  %115 = and i32 %114, 2
  br label %initiated_reset.exit.i

if.end4.i52.i.i:                                  ; preds = %if.end.i47.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i42.i.i)
  %cmp5.i51.i.i = icmp ugt i32 %i.019.i42.i.i, 2
  br i1 %cmp5.i51.i.i, label %if.then6.i53.i.i, label %if.end4.i52.i.i.for.inc.i56.i.i_crit_edge

if.end4.i52.i.i.for.inc.i56.i.i_crit_edge:        ; preds = %if.end4.i52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i56.i.i

if.then6.i53.i.i:                                 ; preds = %if.end4.i52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i56.i.i

for.inc.i56.i.i:                                  ; preds = %if.then6.i53.i.i, %if.end4.i52.i.i.for.inc.i56.i.i_crit_edge
  %inc.i54.i.i = add nuw nsw i32 %i.019.i42.i.i, 1
  %exitcond.not.i55.i.i = icmp eq i32 %inc.i54.i.i, 103
  br i1 %exitcond.not.i55.i.i, label %do.end.i58.i.i, label %for.inc.i56.i.i.for.body.i45.i.i_crit_edge

for.inc.i56.i.i.for.body.i45.i.i_crit_edge:       ; preds = %for.inc.i56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i45.i.i

do.end.i58.i.i:                                   ; preds = %for.inc.i56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i57.i.i = getelementptr i8, ptr %work, i32 -2052
  %116 = ptrtoint ptr %device.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device.i57.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.42, i32 noundef 12) #13
  tail call void @dump_stack() #13
  br label %initiated_reset.exit.i

initiated_reset.exit.i:                           ; preds = %do.end.i58.i.i, %if.then2.i50.i.i, %for.body.i45.i.i.initiated_reset.exit.i_crit_edge, %read_phy_reg.exit.i.i.initiated_reset.exit.i_crit_edge, %do.end.i.i94.i, %for.body.i.i85.i.initiated_reset.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ 0, %read_phy_reg.exit.i.i.initiated_reset.exit.i_crit_edge ], [ 0, %do.end.i.i94.i ], [ %115, %if.then2.i50.i.i ], [ 0, %do.end.i58.i.i ], [ 0, %for.body.i45.i.i.initiated_reset.exit.i_crit_edge ], [ 0, %for.body.i.i85.i.initiated_reset.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i.i) #10
  %or.i = or i32 %shl.i, %shl7.i
  %or8.i = or i32 %or.i, %shl15.i
  %or16.i = or i32 %or8.i, %switch.select14.i.i
  %or24.i = or i32 %or16.i, %switch.select14.i.1.i
  %or24.1.i = or i32 %or24.i, %switch.select14.i.2.i
  %or24.2.i = or i32 %or24.1.i, %ret.0.i.i
  %or26.i = or i32 %or24.2.i, -2143238144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %self_id_count.2)
  %cmp16.i.i.not = icmp eq i32 %self_id_count.2, 0
  br i1 %cmp16.i.i.not, label %initiated_reset.exit.i.find_and_insert_self_id.exit_crit_edge, label %for.body.lr.ph.i.i

initiated_reset.exit.i.find_and_insert_self_id.exit_crit_edge: ; preds = %initiated_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_and_insert_self_id.exit

for.body.lr.ph.i.i:                               ; preds = %initiated_reset.exit.i
  %and.i98.i = or i32 %shl.i, -2147483648
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.017.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fw_ohci, ptr %add.ptr, i32 0, i32 38, i32 %i.017.i.i
  %118 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i = and i32 %119, -16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i98.i, i32 %and2.i.i)
  %cmp3.i99.i = icmp eq i32 %and.i98.i, %and2.i.i
  br i1 %cmp3.i99.i, label %for.body.i.i.if.end76_crit_edge, label %if.end.i100.i

for.body.i.i.if.end76_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.end.i100.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i98.i, i32 %and2.i.i)
  %cmp6.i.i = icmp ult i32 %and.i98.i, %and2.i.i
  br i1 %cmp6.i.i, label %if.end.i100.i.get_self_id_pos.exit.i_crit_edge, label %for.inc.i.i

if.end.i100.i.get_self_id_pos.exit.i_crit_edge:   ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_self_id_pos.exit.i

for.inc.i.i:                                      ; preds = %if.end.i100.i
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %self_id_count.2
  br i1 %exitcond.not.i.i, label %for.inc.i.i.get_self_id_pos.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.get_self_id_pos.exit.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_self_id_pos.exit.i

get_self_id_pos.exit.i:                           ; preds = %for.inc.i.i.get_self_id_pos.exit.i_crit_edge, %if.end.i100.i.get_self_id_pos.exit.i_crit_edge
  %retval.0.i101.i = phi i32 [ %self_id_count.2, %for.inc.i.i.get_self_id_pos.exit.i_crit_edge ], [ %i.017.i.i, %if.end.i100.i.get_self_id_pos.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i101.i)
  %cmp28.i = icmp sgt i32 %retval.0.i101.i, -1
  br i1 %cmp28.i, label %get_self_id_pos.exit.i.find_and_insert_self_id.exit_crit_edge, label %get_self_id_pos.exit.i.if.end76_crit_edge

get_self_id_pos.exit.i.if.end76_crit_edge:        ; preds = %get_self_id_pos.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

get_self_id_pos.exit.i.find_and_insert_self_id.exit_crit_edge: ; preds = %get_self_id_pos.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_and_insert_self_id.exit

find_and_insert_self_id.exit:                     ; preds = %get_self_id_pos.exit.i.find_and_insert_self_id.exit_crit_edge, %initiated_reset.exit.i.find_and_insert_self_id.exit_crit_edge
  %retval.0.i101137.i = phi i32 [ %retval.0.i101.i, %get_self_id_pos.exit.i.find_and_insert_self_id.exit_crit_edge ], [ 0, %initiated_reset.exit.i.find_and_insert_self_id.exit_crit_edge ]
  %add.i = add nuw i32 %retval.0.i101137.i, 1
  %arrayidx.i = getelementptr %struct.fw_ohci, ptr %add.ptr, i32 0, i32 38, i32 %add.i
  %arrayidx31.i = getelementptr %struct.fw_ohci, ptr %add.ptr, i32 0, i32 38, i32 %retval.0.i101137.i
  %sub32.i = sub i32 %self_id_count.2, %retval.0.i101137.i
  %mul33.i = shl i32 %sub32.i, 2
  %120 = call ptr @memmove(ptr %arrayidx.i, ptr %arrayidx31.i, i32 %mul33.i)
  %121 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or26.i, ptr %arrayidx31.i, align 4
  %inc36.i = add nuw i32 %self_id_count.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc36.i)
  %cmp68 = icmp slt i32 %inc36.i, 0
  br i1 %cmp68, label %find_and_insert_self_id.exit.do.end72_crit_edge, label %find_and_insert_self_id.exit.if.end84_crit_edge

find_and_insert_self_id.exit.if.end84_crit_edge:  ; preds = %find_and_insert_self_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

find_and_insert_self_id.exit.do.end72_crit_edge:  ; preds = %find_and_insert_self_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

do.end72:                                         ; preds = %find_and_insert_self_id.exit.do.end72_crit_edge, %get_status_for_port.exit.thread.i, %read_phy_reg.exit128.thread.i, %read_phy_reg.exit.thread.i, %do.end.i
  %device74 = getelementptr i8, ptr %work, i32 -2052
  %122 = ptrtoint ptr %device74 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device74, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %123, ptr noundef nonnull @.str.121) #13
  br label %cleanup138

if.end76:                                         ; preds = %get_self_id_pos.exit.i.if.end76_crit_edge, %for.body.i.i.if.end76_crit_edge, %for.end.if.end76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %self_id_count.2)
  %cmp77 = icmp eq i32 %self_id_count.2, 0
  br i1 %cmp77, label %do.end81, label %if.end76.if.end84_crit_edge

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end81:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %device83 = getelementptr i8, ptr %work, i32 -2052
  %124 = ptrtoint ptr %device83 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device83, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %125, ptr noundef nonnull @.str.124) #13
  br label %cleanup138

if.end84:                                         ; preds = %if.end76.if.end84_crit_edge, %find_and_insert_self_id.exit.if.end84_crit_edge
  %self_id_count.3393 = phi i32 [ %self_id_count.2, %if.end76.if.end84_crit_edge ], [ %inc36.i, %find_and_insert_self_id.exit.if.end84_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !425
  %126 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %registers.i, align 8
  %add.ptr.i245 = getelementptr i8, ptr %127, i32 104
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i245) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %129 = lshr i32 %128, 8
  %and87 = and i32 %129, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and87, i32 %and39)
  %cmp88.not = icmp eq i32 %and87, %and39
  br i1 %cmp88.not, label %if.end95, label %do.end92

do.end92:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %device94 = getelementptr i8, ptr %work, i32 -2052
  %130 = ptrtoint ptr %device94 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device94, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %131, ptr noundef nonnull @.str.127) #13
  br label %cleanup138

if.end95:                                         ; preds = %if.end84
  %lock = getelementptr i8, ptr %work, i32 -536
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %generation96 = getelementptr i8, ptr %work, i32 -568
  %132 = ptrtoint ptr %generation96 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %generation96, align 8
  %at_request_ctx = getelementptr i8, ptr %work, i32 -224
  %133 = ptrtoint ptr %at_request_ctx to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %at_request_ctx, align 4
  %regs.i = getelementptr i8, ptr %work, i32 -220
  %135 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %regs.i, align 4
  %add.i246 = add i32 %136, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i247 = getelementptr inbounds %struct.fw_ohci, ptr %134, i32 0, i32 1
  %137 = ptrtoint ptr %registers.i.i247 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %registers.i.i247, align 8
  %add.ptr.i.i248 = getelementptr i8, ptr %138, i32 %add.i246
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i248, i32 8388608) #10, !srcloc !420
  %running.i = getelementptr i8, ptr %work, i32 -208
  %139 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %running.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end95
  %i.019.i = phi i32 [ 0, %if.end95 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %140 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %regs.i, align 4
  %142 = ptrtoint ptr %registers.i.i247 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %registers.i.i247, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %143, i32 %141
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #10, !srcloc !421
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and.i = and i32 %145, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp3.i = icmp eq i32 %and.i, 0
  br i1 %cmp3.i, label %for.body.i.context_stop.exit_crit_edge, label %if.end.i250

for.body.i.context_stop.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_stop.exit

if.end.i250:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.019.i)
  %tobool.not.i249 = icmp eq i32 %i.019.i, 0
  br i1 %tobool.not.i249, label %if.end.i250.for.inc.i_crit_edge, label %if.then4.i

if.end.i250.for.inc.i_crit_edge:                  ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 2147480) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %if.end.i250.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i252, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i252:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i251 = getelementptr inbounds %struct.fw_card, ptr %134, i32 0, i32 1
  %147 = ptrtoint ptr %device.i251 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device.i251, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.101, i32 noundef %145) #13
  br label %context_stop.exit

context_stop.exit:                                ; preds = %do.end.i252, %for.body.i.context_stop.exit_crit_edge
  %at_response_ctx = getelementptr i8, ptr %work, i32 -152
  %149 = ptrtoint ptr %at_response_ctx to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %at_response_ctx, align 4
  %regs.i253 = getelementptr i8, ptr %work, i32 -148
  %151 = ptrtoint ptr %regs.i253 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %regs.i253, align 4
  %add.i254 = add i32 %152, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i255 = getelementptr inbounds %struct.fw_ohci, ptr %150, i32 0, i32 1
  %153 = ptrtoint ptr %registers.i.i255 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %registers.i.i255, align 8
  %add.ptr.i.i256 = getelementptr i8, ptr %154, i32 %add.i254
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i256, i32 8388608) #10, !srcloc !420
  %running.i257 = getelementptr i8, ptr %work, i32 -136
  %155 = ptrtoint ptr %running.i257 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %running.i257, align 4
  br label %for.body.i262

for.body.i262:                                    ; preds = %for.inc.i268.for.body.i262_crit_edge, %context_stop.exit
  %i.019.i258 = phi i32 [ 0, %context_stop.exit ], [ %inc.i266, %for.inc.i268.for.body.i262_crit_edge ]
  %156 = ptrtoint ptr %regs.i253 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %regs.i253, align 4
  %158 = ptrtoint ptr %registers.i.i255 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %registers.i.i255, align 8
  %add.ptr.i17.i259 = getelementptr i8, ptr %159, i32 %157
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i259) #10, !srcloc !421
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and.i260 = and i32 %161, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i260)
  %cmp3.i261 = icmp eq i32 %and.i260, 0
  br i1 %cmp3.i261, label %for.body.i262.context_stop.exit271_crit_edge, label %if.end.i264

for.body.i262.context_stop.exit271_crit_edge:     ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_stop.exit271

if.end.i264:                                      ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.019.i258)
  %tobool.not.i263 = icmp eq i32 %i.019.i258, 0
  br i1 %tobool.not.i263, label %if.end.i264.for.inc.i268_crit_edge, label %if.then4.i265

if.end.i264.for.inc.i268_crit_edge:               ; preds = %if.end.i264
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i268

if.then4.i265:                                    ; preds = %if.end.i264
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %162(i32 noundef 2147480) #10
  br label %for.inc.i268

for.inc.i268:                                     ; preds = %if.then4.i265, %if.end.i264.for.inc.i268_crit_edge
  %inc.i266 = add nuw nsw i32 %i.019.i258, 1
  %exitcond.not.i267 = icmp eq i32 %inc.i266, 1000
  br i1 %exitcond.not.i267, label %do.end.i270, label %for.inc.i268.for.body.i262_crit_edge

for.inc.i268.for.body.i262_crit_edge:             ; preds = %for.inc.i268
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i262

do.end.i270:                                      ; preds = %for.inc.i268
  call void @__sanitizer_cov_trace_pc() #12
  %device.i269 = getelementptr inbounds %struct.fw_card, ptr %150, i32 0, i32 1
  %163 = ptrtoint ptr %device.i269 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %device.i269, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.101, i32 noundef %161) #13
  br label %context_stop.exit271

context_stop.exit271:                             ; preds = %do.end.i270, %for.body.i262.context_stop.exit271_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %tasklet.i = getelementptr i8, ptr %work, i32 -176
  %count.i.i.i = getelementptr i8, ptr %work, i32 -168
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #10
  %165 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #10, !srcloc !426
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !427
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !428
  %flushing.i = getelementptr i8, ptr %work, i32 -207
  %166 = ptrtoint ptr %flushing.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %flushing.i, align 1
  %167 = ptrtoint ptr %at_request_ctx to i32
  tail call void @context_tasklet(i32 noundef %167) #10
  %168 = ptrtoint ptr %flushing.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %flushing.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !429
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #10
  %169 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #10, !srcloc !430
  %tasklet.i272 = getelementptr i8, ptr %work, i32 -104
  %count.i.i.i273 = getelementptr i8, ptr %work, i32 -96
  %call.i.i.i.i.i274 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i273, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i273, i32 1, i32 3, i32 1) #10
  %170 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i273, ptr %count.i.i.i273, i32 1, ptr elementtype(i32) %count.i.i.i273) #10, !srcloc !426
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !427
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet.i272) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !428
  %flushing.i275 = getelementptr i8, ptr %work, i32 -135
  %171 = ptrtoint ptr %flushing.i275 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %flushing.i275, align 1
  %172 = ptrtoint ptr %at_response_ctx to i32
  tail call void @context_tasklet(i32 noundef %172) #10
  %173 = ptrtoint ptr %flushing.i275 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %flushing.i275, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !429
  %call.i.i.i.i276 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i273, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i273, i32 1, i32 3, i32 1) #10
  %174 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i273, ptr %count.i.i.i273, i32 1, ptr elementtype(i32) %count.i.i.i273) #10, !srcloc !430
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %175 = ptrtoint ptr %generation96 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %and39, ptr %generation96, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %176 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %registers.i, align 8
  %add.ptr.i278 = getelementptr i8, ptr %177, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 512) #10, !srcloc !420
  %178 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %quirks, align 8
  %and103 = and i32 %179, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %context_stop.exit271.if.end106_crit_edge, label %if.then105

context_stop.exit271.if.end106_crit_edge:         ; preds = %context_stop.exit271
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then105:                                       ; preds = %context_stop.exit271
  call void @__sanitizer_cov_trace_pc() #12
  %request_generation = getelementptr i8, ptr %work, i32 -564
  %180 = ptrtoint ptr %request_generation to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %and39, ptr %request_generation, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %context_stop.exit271.if.end106_crit_edge
  %next_config_rom = getelementptr i8, ptr %work, i32 -20
  %181 = ptrtoint ptr %next_config_rom to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %next_config_rom, align 4
  %cmp107.not = icmp eq ptr %182, null
  br i1 %cmp107.not, label %if.end106.if.end123_crit_edge, label %if.then108

if.end106.if.end123_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then108:                                       ; preds = %if.end106
  %config_rom = getelementptr i8, ptr %work, i32 -28
  %183 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %config_rom, align 4
  %cmp110.not = icmp eq ptr %182, %184
  br i1 %cmp110.not, label %if.then108.if.end113_crit_edge, label %if.then111

if.then108.if.end113_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then111:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %config_rom_bus = getelementptr i8, ptr %work, i32 -24
  %185 = ptrtoint ptr %config_rom_bus to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %config_rom_bus, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then108.if.end113_crit_edge
  %free_rom.0 = phi ptr [ %184, %if.then111 ], [ null, %if.then108.if.end113_crit_edge ]
  %free_rom_bus.0 = phi i32 [ %186, %if.then111 ], [ 0, %if.then108.if.end113_crit_edge ]
  %187 = ptrtoint ptr %config_rom to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %182, ptr %config_rom, align 4
  %next_config_rom_bus = getelementptr i8, ptr %work, i32 -16
  %188 = ptrtoint ptr %next_config_rom_bus to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %next_config_rom_bus, align 8
  %config_rom_bus116 = getelementptr i8, ptr %work, i32 -24
  %190 = ptrtoint ptr %config_rom_bus116 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %config_rom_bus116, align 8
  %191 = ptrtoint ptr %next_config_rom to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %next_config_rom, align 4
  %arrayidx119 = getelementptr i32, ptr %182, i32 2
  %192 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx119, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #10
  %195 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %registers.i, align 8
  %add.ptr.i280 = getelementptr i8, ptr %196, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 %194) #10, !srcloc !420
  %next_header = getelementptr i8, ptr %work, i32 -12
  %197 = ptrtoint ptr %next_header to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %next_header, align 4
  %199 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %config_rom, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %198, ptr %200, align 4
  %202 = load i32, ptr %next_header, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #10
  %204 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %registers.i, align 8
  %add.ptr.i282 = getelementptr i8, ptr %205, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 %203) #10, !srcloc !420
  br label %if.end123

if.end123:                                        ; preds = %if.end113, %if.end106.if.end123_crit_edge
  %free_rom.1 = phi ptr [ %free_rom.0, %if.end113 ], [ null, %if.end106.if.end123_crit_edge ]
  %free_rom_bus.1 = phi i32 [ %free_rom_bus.0, %if.end113 ], [ 0, %if.end106.if.end123_crit_edge ]
  %206 = load i8, ptr @param_remote_dma, align 1, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool124.not = icmp eq i8 %206, 0
  br i1 %tobool124.not, label %if.end123.if.end126_crit_edge, label %if.then125

if.end123.if.end126_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then125:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %207 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %registers.i, align 8
  %add.ptr.i284 = getelementptr i8, ptr %208, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 -1) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %209 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %registers.i, align 8
  %add.ptr.i286 = getelementptr i8, ptr %210, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286, i32 -1) #10, !srcloc !420
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end123.if.end126_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %tobool128.not = icmp eq ptr %free_rom.1, null
  br i1 %tobool128.not, label %if.end126.if.end132_crit_edge, label %if.then129

if.end126.if.end132_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  %device131 = getelementptr i8, ptr %work, i32 -2052
  %211 = ptrtoint ptr %device131 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %device131, align 4
  tail call void @dma_free_attrs(ptr noundef %212, i32 noundef 1024, ptr noundef nonnull %free_rom.1, i32 noundef %free_rom_bus.1, i32 noundef 0) #10
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end126.if.end132_crit_edge
  %213 = load i32, ptr @param_debug, align 4
  %and.i287 = and i32 %213, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i287)
  %tobool.not.i288 = icmp eq i32 %and.i287, 0
  br i1 %tobool.not.i288, label %if.end132.log_selfids.exit_crit_edge, label %for.body.preheader.i, !prof !431

if.end132.log_selfids.exit_crit_edge:             ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %log_selfids.exit

for.body.preheader.i:                             ; preds = %if.end132
  %device.i289 = getelementptr i8, ptr %work, i32 -2052
  %214 = ptrtoint ptr %device.i289 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %device.i289, align 4
  %216 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %node_id, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %215, ptr noundef nonnull @.str.130, i32 noundef %self_id_count.3393, i32 noundef %and39, i32 noundef %217) #13
  %self_id_buffer.i = getelementptr i8, ptr %work, i32 44
  br label %for.body.i291

for.body.i291:                                    ; preds = %for.inc.i296.for.body.i291_crit_edge, %for.body.preheader.i
  %dec118.in.i = phi i32 [ %dec118.i, %for.inc.i296.for.body.i291_crit_edge ], [ %self_id_count.3393, %for.body.preheader.i ]
  %s.0117.i = phi ptr [ %incdec.ptr.i, %for.inc.i296.for.body.i291_crit_edge ], [ %self_id_buffer.i, %for.body.preheader.i ]
  %dec118.i = add i32 %dec118.in.i, -1
  %218 = ptrtoint ptr %s.0117.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %s.0117.i, align 4
  %and5.i = and i32 %219, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp.i = icmp eq i32 %and5.i, 0
  %220 = ptrtoint ptr %device.i289 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %device.i289, align 4
  %shr.i = lshr i32 %219, 24
  %and12.i = and i32 %shr.i, 63
  br i1 %cmp.i, label %do.end9.i, label %do.end36.i

do.end9.i:                                        ; preds = %for.body.i291
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i.i = lshr i32 %219, 6
  %and.i.i292 = and i32 %shr.i.i, 3
  %arrayidx.i.i293 = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i.i292
  %222 = ptrtoint ptr %arrayidx.i.i293 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx.i.i293, align 1
  %conv.i = zext i8 %223 to i32
  %shr.i85.i = lshr i32 %219, 4
  %and.i86.i = and i32 %shr.i85.i, 3
  %arrayidx.i87.i = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i86.i
  %224 = ptrtoint ptr %arrayidx.i87.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i87.i, align 1
  %conv14.i = zext i8 %225 to i32
  %shr.i88.i = lshr i32 %219, 2
  %and.i89.i = and i32 %shr.i88.i, 3
  %arrayidx.i90.i = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i89.i
  %226 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx.i90.i, align 1
  %conv16.i = zext i8 %227 to i32
  %shr17.i = lshr i32 %219, 14
  %and18.i = and i32 %shr17.i, 3
  %arrayidx.i294 = getelementptr [4 x ptr], ptr @speed, i32 0, i32 %and18.i
  %228 = ptrtoint ptr %arrayidx.i294 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx.i294, align 4
  %shr19.i = lshr i32 %219, 16
  %and20.i = and i32 %shr19.i, 63
  %shr21.i = lshr i32 %219, 8
  %and22.i = and i32 %shr21.i, 7
  %arrayidx23.i = getelementptr [8 x ptr], ptr @power, i32 0, i32 %and22.i
  %230 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx23.i, align 4
  %232 = and i32 %219, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool26.not.i = icmp eq i32 %232, 0
  %cond.i = select i1 %tobool26.not.i, ptr @.str.33, ptr @.str.135
  %233 = and i32 %219, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool29.not.i = icmp eq i32 %233, 0
  %cond30.i = select i1 %tobool29.not.i, ptr @.str.33, ptr @.str.136
  %and31.i = and i32 %219, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %cond33.i = select i1 %tobool32.not.i, ptr @.str.33, ptr @.str.137
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %221, ptr noundef nonnull @.str.133, i32 noundef %219, i32 noundef %and12.i, i32 noundef %conv.i, i32 noundef %conv14.i, i32 noundef %conv16.i, ptr noundef %229, i32 noundef %and20.i, ptr noundef %231, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond30.i, ptr noundef nonnull %cond33.i) #13
  br label %for.inc.i296

do.end36.i:                                       ; preds = %for.body.i291
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i91.i = lshr i32 %219, 16
  %and.i92.i = and i32 %shr.i91.i, 3
  %arrayidx.i93.i = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i92.i
  %234 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx.i93.i, align 1
  %conv42.i = zext i8 %235 to i32
  %shr.i94.i = lshr i32 %219, 14
  %and.i95.i = and i32 %shr.i94.i, 3
  %arrayidx.i96.i = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i95.i
  %236 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx.i96.i, align 1
  %conv44.i = zext i8 %237 to i32
  %shr.i97.i = lshr i32 %219, 12
  %and.i98.i295 = and i32 %shr.i97.i, 3
  %arrayidx.i99.i = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i98.i295
  %238 = ptrtoint ptr %arrayidx.i99.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx.i99.i, align 1
  %conv46.i = zext i8 %239 to i32
  %shr.i100.i = lshr i32 %219, 10
  %and.i101.i = and i32 %shr.i100.i, 3
  %arrayidx.i102.i = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i101.i
  %240 = ptrtoint ptr %arrayidx.i102.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx.i102.i, align 1
  %conv48.i = zext i8 %241 to i32
  %shr.i103.i = lshr i32 %219, 8
  %and.i104.i = and i32 %shr.i103.i, 3
  %arrayidx.i105.i = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i104.i
  %242 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx.i105.i, align 1
  %conv50.i = zext i8 %243 to i32
  %shr.i106.i = lshr i32 %219, 6
  %and.i107.i = and i32 %shr.i106.i, 3
  %arrayidx.i108.i = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i107.i
  %244 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx.i108.i, align 1
  %conv52.i = zext i8 %245 to i32
  %shr.i109.i = lshr i32 %219, 4
  %and.i110.i = and i32 %shr.i109.i, 3
  %arrayidx.i111.i = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i110.i
  %246 = ptrtoint ptr %arrayidx.i111.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx.i111.i, align 1
  %conv54.i = zext i8 %247 to i32
  %shr.i112.i = lshr i32 %219, 2
  %and.i113.i = and i32 %shr.i112.i, 3
  %arrayidx.i114.i = getelementptr [4 x i8], ptr @port, i32 0, i32 %and.i113.i
  %248 = ptrtoint ptr %arrayidx.i114.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx.i114.i, align 1
  %conv56.i = zext i8 %249 to i32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %221, ptr noundef nonnull @.str.139, i32 noundef %219, i32 noundef %and12.i, i32 noundef %conv42.i, i32 noundef %conv44.i, i32 noundef %conv46.i, i32 noundef %conv48.i, i32 noundef %conv50.i, i32 noundef %conv52.i, i32 noundef %conv54.i, i32 noundef %conv56.i) #13
  br label %for.inc.i296

for.inc.i296:                                     ; preds = %do.end36.i, %do.end9.i
  %incdec.ptr.i = getelementptr i32, ptr %s.0117.i, i32 1
  %tobool4.not.i = icmp eq i32 %dec118.i, 0
  br i1 %tobool4.not.i, label %for.inc.i296.log_selfids.exit_crit_edge, label %for.inc.i296.for.body.i291_crit_edge

for.inc.i296.for.body.i291_crit_edge:             ; preds = %for.inc.i296
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i291

for.inc.i296.log_selfids.exit_crit_edge:          ; preds = %for.inc.i296
  call void @__sanitizer_cov_trace_pc() #12
  br label %log_selfids.exit

log_selfids.exit:                                 ; preds = %for.inc.i296.log_selfids.exit_crit_edge, %if.end132.log_selfids.exit_crit_edge
  %250 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %node_id, align 4
  %self_id_buffer135 = getelementptr i8, ptr %work, i32 44
  %csr_state_setclear_abdicate = getelementptr i8, ptr %work, i32 -546
  %252 = ptrtoint ptr %csr_state_setclear_abdicate to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %csr_state_setclear_abdicate, align 2, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool136 = icmp ne i8 %253, 0
  tail call void @fw_core_handle_bus_reset(ptr noundef %add.ptr, i32 noundef %251, i32 noundef %and39, i32 noundef %self_id_count.3393, ptr noundef %self_id_buffer135, i1 noundef zeroext %tobool136) #10
  %254 = ptrtoint ptr %csr_state_setclear_abdicate to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %csr_state_setclear_abdicate, align 2
  br label %cleanup138

cleanup138:                                       ; preds = %log_selfids.exit, %do.end92, %do.end81, %do.end72, %cleanup.thread, %do.end34, %do.end25, %do.end5, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ar_context_init(ptr noundef %ctx, ptr noundef %ohci, i32 noundef %descriptors_offset, i32 noundef %regs) unnamed_addr #2 align 64 {
entry:
  %dma_addr = alloca i32, align 4
  %pages = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #10
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_addr, align 4, !annotation !432
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pages) #10
  %3 = call ptr @memset(ptr %pages, i32 255, i32 40)
  %regs1 = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 7
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %regs, ptr %regs1, align 4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ohci, ptr %ctx, align 4
  %tasklet = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 8
  %6 = ptrtoint ptr %ctx to i32
  tail call void @tasklet_init(ptr noundef %tasklet, ptr noundef nonnull @ar_context_tasklet, i32 noundef %6) #10
  %call = call ptr @dma_alloc_pages(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 2, i32 noundef 3264) #10
  %arrayidx = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_of_memory_crit_edge, label %if.end

entry.out_of_memory_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_memory

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 4
  %private1.i = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %private1.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %9, i32 noundef 4096, i32 noundef 2) #10
  %call.1 = call ptr @dma_alloc_pages(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 2, i32 noundef 3264) #10
  %arrayidx.1 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.1, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %if.end.out_of_memory_crit_edge, label %if.end.1

if.end.out_of_memory_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_memory

if.end.1:                                         ; preds = %if.end
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 4
  %private1.i.1 = getelementptr inbounds %struct.page, ptr %call.1, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %private1.i.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %private1.i.1, align 4
  call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %13, i32 noundef 4096, i32 noundef 2) #10
  %call.2 = call ptr @dma_alloc_pages(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 2, i32 noundef 3264) #10
  %arrayidx.2 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.2, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %if.end.1.out_of_memory_crit_edge, label %if.end.2

if.end.1.out_of_memory_crit_edge:                 ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_memory

if.end.2:                                         ; preds = %if.end.1
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 4
  %private1.i.2 = getelementptr inbounds %struct.page, ptr %call.2, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %private1.i.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %private1.i.2, align 4
  call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %17, i32 noundef 4096, i32 noundef 2) #10
  %call.3 = call ptr @dma_alloc_pages(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 2, i32 noundef 3264) #10
  %arrayidx.3 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.3, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %if.end.2.out_of_memory_crit_edge, label %if.end.3

if.end.2.out_of_memory_crit_edge:                 ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_memory

if.end.3:                                         ; preds = %if.end.2
  %20 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_addr, align 4
  %private1.i.3 = getelementptr inbounds %struct.page, ptr %call.3, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private1.i.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %private1.i.3, align 4
  call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %21, i32 noundef 4096, i32 noundef 2) #10
  %call.4 = call ptr @dma_alloc_pages(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 2, i32 noundef 3264) #10
  %arrayidx.4 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.4, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool.not.4, label %if.end.3.out_of_memory_crit_edge, label %if.end.4

if.end.3.out_of_memory_crit_edge:                 ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_memory

if.end.4:                                         ; preds = %if.end.3
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr, align 4
  %private1.i.4 = getelementptr inbounds %struct.page, ptr %call.4, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %private1.i.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %private1.i.4, align 4
  call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %25, i32 noundef 4096, i32 noundef 2) #10
  %call.5 = call ptr @dma_alloc_pages(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 2, i32 noundef 3264) #10
  %arrayidx.5 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.5, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %call.5, null
  br i1 %tobool.not.5, label %if.end.4.out_of_memory_crit_edge, label %if.end.5

if.end.4.out_of_memory_crit_edge:                 ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_memory

if.end.5:                                         ; preds = %if.end.4
  %28 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr, align 4
  %private1.i.5 = getelementptr inbounds %struct.page, ptr %call.5, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %private1.i.5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %private1.i.5, align 4
  call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %29, i32 noundef 4096, i32 noundef 2) #10
  %call.6 = call ptr @dma_alloc_pages(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 2, i32 noundef 3264) #10
  %arrayidx.6 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 6
  %31 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.6, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %call.6, null
  br i1 %tobool.not.6, label %if.end.5.out_of_memory_crit_edge, label %if.end.6

if.end.5.out_of_memory_crit_edge:                 ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_memory

if.end.6:                                         ; preds = %if.end.5
  %32 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_addr, align 4
  %private1.i.6 = getelementptr inbounds %struct.page, ptr %call.6, i32 0, i32 1, i32 0, i32 3
  %34 = ptrtoint ptr %private1.i.6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %private1.i.6, align 4
  call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %33, i32 noundef 4096, i32 noundef 2) #10
  %call.7 = call ptr @dma_alloc_pages(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 2, i32 noundef 3264) #10
  %arrayidx.7 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 7
  %35 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.7, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %call.7, null
  br i1 %tobool.not.7, label %if.end.6.out_of_memory_crit_edge, label %if.end.7

if.end.6.out_of_memory_crit_edge:                 ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_memory

if.end.7:                                         ; preds = %if.end.6
  %36 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_addr, align 4
  %private1.i.7 = getelementptr inbounds %struct.page, ptr %call.7, i32 0, i32 1, i32 0, i32 3
  %38 = ptrtoint ptr %private1.i.7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %private1.i.7, align 4
  call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %37, i32 noundef 4096, i32 noundef 2) #10
  %39 = call ptr @memcpy(ptr %pages, ptr %arrayidx, i32 32)
  %uglygep93 = getelementptr inbounds i8, ptr %pages, i32 32
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %uglygep93 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %uglygep93, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %43 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %43, 512
  %call26 = call ptr @vmap(ptr noundef nonnull %pages, i32 noundef 10, i32 noundef 4, i32 noundef %or) #10
  %buffer = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 2
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call26, ptr %buffer, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end.7.out_of_memory_crit_edge, label %if.end30

if.end.7.out_of_memory_crit_edge:                 ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_memory

if.end30:                                         ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  %misc_buffer = getelementptr inbounds %struct.fw_ohci, ptr %ohci, i32 0, i32 15
  %45 = ptrtoint ptr %misc_buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %misc_buffer, align 8
  %add.ptr = getelementptr i8, ptr %46, i32 %descriptors_offset
  %descriptors = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 3
  %47 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr, ptr %descriptors, align 4
  %misc_buffer_bus = getelementptr inbounds %struct.fw_ohci, ptr %ohci, i32 0, i32 16
  %48 = ptrtoint ptr %misc_buffer_bus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %misc_buffer_bus, align 4
  %add31 = add i32 %49, %descriptors_offset
  %descriptors_bus = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 4
  %50 = ptrtoint ptr %descriptors_bus to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add31, ptr %descriptors_bus, align 4
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 16, ptr %add.ptr, align 16
  %control = getelementptr %struct.descriptor, ptr %add.ptr, i32 0, i32 1
  %52 = ptrtoint ptr %control to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 3112, ptr %control, align 2
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx, align 4
  %private.i = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1, i32 0, i32 3
  %55 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %private.i, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %data_address = getelementptr %struct.descriptor, ptr %add.ptr, i32 0, i32 2
  %58 = ptrtoint ptr %data_address to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %data_address, align 4
  %59 = ptrtoint ptr %descriptors_bus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %descriptors_bus, align 4
  %add40 = add i32 %60, 16
  %61 = call i32 @llvm.bswap.i32(i32 %add40)
  %branch_address = getelementptr %struct.descriptor, ptr %add.ptr, i32 0, i32 3
  %62 = ptrtoint ptr %branch_address to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %branch_address, align 8
  %63 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %descriptors, align 4
  %arrayidx36.1 = getelementptr %struct.descriptor, ptr %64, i32 1
  %65 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 16, ptr %arrayidx36.1, align 16
  %control.1 = getelementptr %struct.descriptor, ptr %64, i32 1, i32 1
  %66 = ptrtoint ptr %control.1 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 3112, ptr %control.1, align 2
  %67 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.1, align 4
  %private.i.1 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 1, i32 0, i32 3
  %69 = ptrtoint ptr %private.i.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %private.i.1, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %data_address.1 = getelementptr %struct.descriptor, ptr %64, i32 1, i32 2
  %72 = ptrtoint ptr %data_address.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %data_address.1, align 4
  %73 = ptrtoint ptr %descriptors_bus to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %descriptors_bus, align 4
  %add40.1 = add i32 %74, 32
  %75 = call i32 @llvm.bswap.i32(i32 %add40.1)
  %branch_address.1 = getelementptr %struct.descriptor, ptr %64, i32 1, i32 3
  %76 = ptrtoint ptr %branch_address.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %branch_address.1, align 8
  %77 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %descriptors, align 4
  %arrayidx36.2 = getelementptr %struct.descriptor, ptr %78, i32 2
  %79 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 16, ptr %arrayidx36.2, align 16
  %control.2 = getelementptr %struct.descriptor, ptr %78, i32 2, i32 1
  %80 = ptrtoint ptr %control.2 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 3112, ptr %control.2, align 2
  %81 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.2, align 4
  %private.i.2 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 1, i32 0, i32 3
  %83 = ptrtoint ptr %private.i.2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %private.i.2, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  %data_address.2 = getelementptr %struct.descriptor, ptr %78, i32 2, i32 2
  %86 = ptrtoint ptr %data_address.2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %data_address.2, align 4
  %87 = ptrtoint ptr %descriptors_bus to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %descriptors_bus, align 4
  %add40.2 = add i32 %88, 48
  %89 = call i32 @llvm.bswap.i32(i32 %add40.2)
  %branch_address.2 = getelementptr %struct.descriptor, ptr %78, i32 2, i32 3
  %90 = ptrtoint ptr %branch_address.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %branch_address.2, align 8
  %91 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %descriptors, align 4
  %arrayidx36.3 = getelementptr %struct.descriptor, ptr %92, i32 3
  %93 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 16, ptr %arrayidx36.3, align 16
  %control.3 = getelementptr %struct.descriptor, ptr %92, i32 3, i32 1
  %94 = ptrtoint ptr %control.3 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 3112, ptr %control.3, align 2
  %95 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.3, align 4
  %private.i.3 = getelementptr inbounds %struct.page, ptr %96, i32 0, i32 1, i32 0, i32 3
  %97 = ptrtoint ptr %private.i.3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %private.i.3, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %data_address.3 = getelementptr %struct.descriptor, ptr %92, i32 3, i32 2
  %100 = ptrtoint ptr %data_address.3 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %data_address.3, align 4
  %101 = ptrtoint ptr %descriptors_bus to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %descriptors_bus, align 4
  %add40.3 = add i32 %102, 64
  %103 = call i32 @llvm.bswap.i32(i32 %add40.3)
  %branch_address.3 = getelementptr %struct.descriptor, ptr %92, i32 3, i32 3
  %104 = ptrtoint ptr %branch_address.3 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %branch_address.3, align 8
  %105 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %descriptors, align 4
  %arrayidx36.4 = getelementptr %struct.descriptor, ptr %106, i32 4
  %107 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 16, ptr %arrayidx36.4, align 16
  %control.4 = getelementptr %struct.descriptor, ptr %106, i32 4, i32 1
  %108 = ptrtoint ptr %control.4 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 3112, ptr %control.4, align 2
  %109 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.4, align 4
  %private.i.4 = getelementptr inbounds %struct.page, ptr %110, i32 0, i32 1, i32 0, i32 3
  %111 = ptrtoint ptr %private.i.4 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %private.i.4, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112)
  %data_address.4 = getelementptr %struct.descriptor, ptr %106, i32 4, i32 2
  %114 = ptrtoint ptr %data_address.4 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %data_address.4, align 4
  %115 = ptrtoint ptr %descriptors_bus to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %descriptors_bus, align 4
  %add40.4 = add i32 %116, 80
  %117 = call i32 @llvm.bswap.i32(i32 %add40.4)
  %branch_address.4 = getelementptr %struct.descriptor, ptr %106, i32 4, i32 3
  %118 = ptrtoint ptr %branch_address.4 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %branch_address.4, align 8
  %119 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %descriptors, align 4
  %arrayidx36.5 = getelementptr %struct.descriptor, ptr %120, i32 5
  %121 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 16, ptr %arrayidx36.5, align 16
  %control.5 = getelementptr %struct.descriptor, ptr %120, i32 5, i32 1
  %122 = ptrtoint ptr %control.5 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 3112, ptr %control.5, align 2
  %123 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.5, align 4
  %private.i.5 = getelementptr inbounds %struct.page, ptr %124, i32 0, i32 1, i32 0, i32 3
  %125 = ptrtoint ptr %private.i.5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %private.i.5, align 4
  %127 = call i32 @llvm.bswap.i32(i32 %126)
  %data_address.5 = getelementptr %struct.descriptor, ptr %120, i32 5, i32 2
  %128 = ptrtoint ptr %data_address.5 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %data_address.5, align 4
  %129 = ptrtoint ptr %descriptors_bus to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %descriptors_bus, align 4
  %add40.5 = add i32 %130, 96
  %131 = call i32 @llvm.bswap.i32(i32 %add40.5)
  %branch_address.5 = getelementptr %struct.descriptor, ptr %120, i32 5, i32 3
  %132 = ptrtoint ptr %branch_address.5 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %branch_address.5, align 8
  %133 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %descriptors, align 4
  %arrayidx36.6 = getelementptr %struct.descriptor, ptr %134, i32 6
  %135 = ptrtoint ptr %arrayidx36.6 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 16, ptr %arrayidx36.6, align 16
  %control.6 = getelementptr %struct.descriptor, ptr %134, i32 6, i32 1
  %136 = ptrtoint ptr %control.6 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 3112, ptr %control.6, align 2
  %137 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.6, align 4
  %private.i.6 = getelementptr inbounds %struct.page, ptr %138, i32 0, i32 1, i32 0, i32 3
  %139 = ptrtoint ptr %private.i.6 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %private.i.6, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %140)
  %data_address.6 = getelementptr %struct.descriptor, ptr %134, i32 6, i32 2
  %142 = ptrtoint ptr %data_address.6 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %data_address.6, align 4
  %143 = ptrtoint ptr %descriptors_bus to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %descriptors_bus, align 4
  %add40.6 = add i32 %144, 112
  %145 = call i32 @llvm.bswap.i32(i32 %add40.6)
  %branch_address.6 = getelementptr %struct.descriptor, ptr %134, i32 6, i32 3
  %146 = ptrtoint ptr %branch_address.6 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %branch_address.6, align 8
  %147 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %descriptors, align 4
  %arrayidx36.7 = getelementptr %struct.descriptor, ptr %148, i32 7
  %149 = ptrtoint ptr %arrayidx36.7 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 16, ptr %arrayidx36.7, align 16
  %control.7 = getelementptr %struct.descriptor, ptr %148, i32 7, i32 1
  %150 = ptrtoint ptr %control.7 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 3112, ptr %control.7, align 2
  %151 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.7, align 4
  %private.i.7 = getelementptr inbounds %struct.page, ptr %152, i32 0, i32 1, i32 0, i32 3
  %153 = ptrtoint ptr %private.i.7 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %private.i.7, align 4
  %155 = call i32 @llvm.bswap.i32(i32 %154)
  %data_address.7 = getelementptr %struct.descriptor, ptr %148, i32 7, i32 2
  %156 = ptrtoint ptr %data_address.7 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %data_address.7, align 4
  %157 = ptrtoint ptr %descriptors_bus to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %descriptors_bus, align 4
  %159 = call i32 @llvm.bswap.i32(i32 %158)
  %branch_address.7 = getelementptr %struct.descriptor, ptr %148, i32 7, i32 3
  %160 = ptrtoint ptr %branch_address.7 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %branch_address.7, align 8
  br label %cleanup

out_of_memory:                                    ; preds = %if.end.7.out_of_memory_crit_edge, %if.end.6.out_of_memory_crit_edge, %if.end.5.out_of_memory_crit_edge, %if.end.4.out_of_memory_crit_edge, %if.end.3.out_of_memory_crit_edge, %if.end.2.out_of_memory_crit_edge, %if.end.1.out_of_memory_crit_edge, %if.end.out_of_memory_crit_edge, %entry.out_of_memory_crit_edge
  call fastcc void @ar_context_release(ptr noundef %ctx)
  br label %cleanup

cleanup:                                          ; preds = %out_of_memory, %if.end30
  %retval.0 = phi i32 [ -12, %out_of_memory ], [ 0, %if.end30 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pages) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @context_init(ptr noundef %ctx, ptr noundef %ohci, i32 noundef %regs, ptr noundef %callback) unnamed_addr #2 align 64 {
if.end.i:
  %bus_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ohci, ptr %ctx, align 4
  %regs2 = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %regs2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %regs, ptr %regs2, align 4
  %total_allocation = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %total_allocation to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %total_allocation, align 4
  %buffer_list = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 6
  %3 = ptrtoint ptr %buffer_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %buffer_list, ptr %buffer_list, align 4
  %prev.i = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buffer_list, ptr %prev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_addr.i) #10
  %5 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %bus_addr.i, align 4, !annotation !432
  %device.i = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef 4096, ptr noundef nonnull %bus_addr.i, i32 noundef 2592, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %context_add_buffer.exit.thread, label %if.end2.i

context_add_buffer.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_addr.i) #10
  br label %return

if.end2.i:                                        ; preds = %if.end.i
  %buffer_size.i = getelementptr inbounds %struct.descriptor_buffer, ptr %call.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4048, ptr %buffer_size.i, align 4
  %9 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_addr.i, align 4
  %add.i = add i32 %10, 32
  %buffer_bus.i = getelementptr inbounds %struct.descriptor_buffer, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %buffer_bus.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %buffer_bus.i, align 8
  %used.i = getelementptr inbounds %struct.descriptor_buffer, ptr %call.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %used.i, align 16
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %14, ptr noundef %buffer_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end2.i.if.end_crit_edge

if.end2.i.if.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %prev.i, align 4
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buffer_list, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call.i.i, ptr %14, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.end2.i.if.end_crit_edge
  %19 = ptrtoint ptr %total_allocation to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_allocation, align 4
  %add5.i = add i32 %20, 4096
  store i32 %add5.i, ptr %total_allocation, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_addr.i) #10
  %21 = ptrtoint ptr %buffer_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer_list, align 4
  %buffer_tail = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 7
  %23 = ptrtoint ptr %buffer_tail to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %buffer_tail, align 4
  %tasklet = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 12
  %24 = ptrtoint ptr %ctx to i32
  call void @tasklet_init(ptr noundef %tasklet, ptr noundef nonnull @context_tasklet, i32 noundef %24) #10
  %callback4 = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 11
  %25 = ptrtoint ptr %callback4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %callback, ptr %callback4, align 4
  %26 = ptrtoint ptr %buffer_tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer_tail, align 4
  %buffer = getelementptr inbounds %struct.descriptor_buffer, ptr %27, i32 0, i32 5
  %28 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  %29 = load ptr, ptr %buffer_tail, align 4
  %buffer7 = getelementptr inbounds %struct.descriptor_buffer, ptr %29, i32 0, i32 5
  %control = getelementptr inbounds %struct.descriptor, ptr %buffer7, i32 0, i32 1
  %30 = ptrtoint ptr %control to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 16, ptr %control, align 2
  %31 = load ptr, ptr %buffer_tail, align 4
  %buffer10 = getelementptr inbounds %struct.descriptor_buffer, ptr %31, i32 0, i32 5
  %transfer_status = getelementptr inbounds %struct.descriptor, ptr %buffer10, i32 0, i32 5
  %32 = ptrtoint ptr %transfer_status to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 4480, ptr %transfer_status, align 2
  %33 = load ptr, ptr %buffer_tail, align 4
  %used = getelementptr inbounds %struct.descriptor_buffer, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %used, align 16
  %add = add i32 %35, 16
  store i32 %add, ptr %used, align 16
  %36 = load ptr, ptr %buffer_tail, align 4
  %buffer14 = getelementptr inbounds %struct.descriptor_buffer, ptr %36, i32 0, i32 5
  %last = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 8
  %37 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buffer14, ptr %last, align 4
  %prev = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 9
  %38 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buffer14, ptr %prev, align 4
  %prev_z = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 10
  %39 = ptrtoint ptr %prev_z to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %prev_z, align 4
  br label %return

return:                                           ; preds = %if.end, %context_add_buffer.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %context_add_buffer.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_at_packet(ptr nocapture noundef readonly %context, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %last) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_status = getelementptr inbounds %struct.descriptor, ptr %last, i32 0, i32 5
  %2 = ptrtoint ptr %transfer_status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transfer_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flushing = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 5
  %4 = ptrtoint ptr %flushing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flushing, align 1, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %packet3 = getelementptr %struct.descriptor, ptr %d, i32 3, i32 3
  %6 = ptrtoint ptr %packet3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %packet3, align 4
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %payload_mapped = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %payload_mapped to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %payload_mapped, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %payload_bus = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %payload_bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %payload_bus, align 4
  %payload_length = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %payload_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %payload_length, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 1, i32 noundef 0) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %16 = ptrtoint ptr %transfer_status to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %transfer_status, align 2
  %18 = lshr i16 %17, 8
  %19 = and i16 %18, 31
  %and = zext i16 %19 to i32
  %res_count = getelementptr inbounds %struct.descriptor, ptr %last, i32 0, i32 4
  %20 = ptrtoint ptr %res_count to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %res_count, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv13 = zext i16 %22 to i32
  %timestamp = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 8
  %23 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv13, ptr %timestamp, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %header = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 2
  tail call fastcc void @log_ar_at_event(ptr noundef %1, i8 noundef zeroext 84, i32 noundef %25, ptr noundef %header, i32 noundef %and)
  %26 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end10.sw.default_crit_edge [
    i32 10, label %sw.bb
    i32 15, label %sw.bb14
    i32 3, label %sw.bb16
    i32 17, label %if.end10.sw.bb23_crit_edge
    i32 18, label %if.end10.sw.bb23_crit_edge62
    i32 20, label %if.end10.sw.bb23_crit_edge63
    i32 21, label %if.end10.sw.bb23_crit_edge64
    i32 22, label %if.end10.sw.bb23_crit_edge65
    i32 29, label %if.end10.sw.bb23_crit_edge66
    i32 30, label %if.end10.sw.bb23_crit_edge67
    i32 0, label %sw.bb25
  ]

if.end10.sw.bb23_crit_edge67:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end10.sw.bb23_crit_edge66:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end10.sw.bb23_crit_edge65:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end10.sw.bb23_crit_edge64:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end10.sw.bb23_crit_edge63:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end10.sw.bb23_crit_edge62:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end10.sw.bb23_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end10.sw.default_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %ack = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 10
  %27 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 17, ptr %ack, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %ack15 = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 10
  %28 = ptrtoint ptr %ack15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %ack15, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end10
  %flushing17 = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 5
  %29 = ptrtoint ptr %flushing17 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flushing17, align 1, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool18.not = icmp eq i8 %30, 0
  %ack21 = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 10
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %ack21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 19, ptr %ack21, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %ack21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 20, ptr %ack21, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end10.sw.bb23_crit_edge, %if.end10.sw.bb23_crit_edge62, %if.end10.sw.bb23_crit_edge63, %if.end10.sw.bb23_crit_edge64, %if.end10.sw.bb23_crit_edge65, %if.end10.sw.bb23_crit_edge66, %if.end10.sw.bb23_crit_edge67
  %sub = add nsw i32 %and, -16
  %ack24 = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 10
  %33 = ptrtoint ptr %ack24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %ack24, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end10
  %flushing26 = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 5
  %34 = ptrtoint ptr %flushing26 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flushing26, align 1, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool27.not = icmp eq i8 %35, 0
  br i1 %tobool27.not, label %sw.bb25.sw.default_crit_edge, label %if.then28

sw.bb25.sw.default_crit_edge:                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.then28:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %ack29 = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 10
  %36 = ptrtoint ptr %ack29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 19, ptr %ack29, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb25.sw.default_crit_edge, %if.end10.sw.default_crit_edge
  %ack31 = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 10
  %37 = ptrtoint ptr %ack31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %ack31, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then28, %sw.bb23, %if.else, %if.then19, %sw.bb14, %sw.bb
  %callback = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 9
  %38 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %callback, align 4
  %ack33 = getelementptr inbounds %struct.fw_packet, ptr %7, i32 0, i32 10
  %40 = ptrtoint ptr %ack33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ack33, align 4
  tail call void %39(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %41) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !421
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %3, label %if.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 -1, label %entry.cleanup_crit_edge250
  ]

entry.cleanup_crit_edge250:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, -131329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %6 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %registers.i, align 8
  %add.ptr.i190 = getelementptr i8, ptr %7, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %5) #10, !srcloc !420
  %8 = load i32, ptr @param_debug, align 4
  %and.i = and i32 %8, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.log_irqs.exit_crit_edge, label %if.end.i, !prof !431

if.end.log_irqs.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %log_irqs.exit

if.end.i:                                         ; preds = %if.end
  %and4.i = and i32 %8, 4
  %and6.i = and i32 %3, 131072
  %9 = or i32 %and4.i, %and6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end.i.log_irqs.exit_crit_edge, label %do.end.i

if.end.i.log_irqs.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %log_irqs.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %device.i = getelementptr inbounds %struct.fw_card, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i, align 4
  %and10.i = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %cond.i = select i1 %tobool11.not.i, ptr @.str.33, ptr @.str.172
  %and12.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %cond14.i = select i1 %tobool13.not.i, ptr @.str.33, ptr @.str.173
  %and15.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.33, ptr @.str.174
  %and18.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %cond20.i = select i1 %tobool19.not.i, ptr @.str.33, ptr @.str.175
  %and21.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cond23.i = select i1 %tobool22.not.i, ptr @.str.33, ptr @.str.176
  %and24.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %cond26.i = select i1 %tobool25.not.i, ptr @.str.33, ptr @.str.177
  %and27.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.33, ptr @.str.178
  %and30.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %cond32.i = select i1 %tobool31.not.i, ptr @.str.33, ptr @.str.179
  %and33.i = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  %cond35.i = select i1 %tobool34.not.i, ptr @.str.33, ptr @.str.180
  %and36.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %cond38.i = select i1 %tobool37.not.i, ptr @.str.33, ptr @.str.181
  %and39.i = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %cond41.i = select i1 %tobool40.not.i, ptr @.str.33, ptr @.str.182
  %and42.i = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  %cond44.i = select i1 %tobool43.not.i, ptr @.str.33, ptr @.str.183
  %and45.i = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  %cond47.i = select i1 %tobool46.not.i, ptr @.str.33, ptr @.str.184
  %cond50.i = select i1 %tobool7.not.i, ptr @.str.33, ptr @.str.185
  %and51.i = and i32 %3, -44499444
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  %cond53.i = select i1 %tobool52.not.i, ptr @.str.33, ptr @.str.186
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %12, ptr noundef nonnull @.str.170, i32 noundef %3, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond14.i, ptr noundef nonnull %cond17.i, ptr noundef nonnull %cond20.i, ptr noundef nonnull %cond23.i, ptr noundef nonnull %cond26.i, ptr noundef nonnull %cond29.i, ptr noundef nonnull %cond32.i, ptr noundef nonnull %cond35.i, ptr noundef nonnull %cond38.i, ptr noundef nonnull %cond41.i, ptr noundef nonnull %cond44.i, ptr noundef nonnull %cond47.i, ptr noundef nonnull %cond50.i, ptr noundef nonnull %cond53.i) #13
  br label %log_irqs.exit

log_irqs.exit:                                    ; preds = %do.end.i, %if.end.i.log_irqs.exit_crit_edge, %if.end.log_irqs.exit_crit_edge
  %and2 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %log_irqs.exit.if.end6_crit_edge, label %if.then4

log_irqs.exit.if.end6_crit_edge:                  ; preds = %log_irqs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %log_irqs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = load ptr, ptr @selfid_workqueue, align 4
  %bus_reset_work = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 37
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %bus_reset_work) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %log_irqs.exit.if.end6_crit_edge
  %and7 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  %state.i = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 17, i32 8, i32 1
  %call.i191 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool.not.i192 = icmp eq i32 %call.i191, 0
  br i1 %tobool.not.i192, label %if.then.i, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 17, i32 8
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then9.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %and11 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  %state.i194 = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 18, i32 8, i32 1
  %call.i195 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i194) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool.not.i196 = icmp eq i32 %call.i195, 0
  br i1 %tobool.not.i196, label %if.then.i197, label %if.then13.if.end15_crit_edge

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then.i197:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet14 = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 18, i32 8
  tail call void @__tasklet_schedule(ptr noundef %tasklet14) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then.i197, %if.then13.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %and16 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  %state.i200 = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 19, i32 12, i32 1
  %call.i201 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i200) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool.not.i202 = icmp eq i32 %call.i201, 0
  br i1 %tobool.not.i202, label %if.then.i203, label %if.then18.if.end20_crit_edge

if.then18.if.end20_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then.i203:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet19 = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 19, i32 12
  tail call void @__tasklet_schedule(ptr noundef %tasklet19) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then.i203, %if.then18.if.end20_crit_edge, %if.end15.if.end20_crit_edge
  %and21 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  %state.i206 = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 20, i32 12, i32 1
  %call.i207 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i206) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %tobool.not.i208 = icmp eq i32 %call.i207, 0
  br i1 %tobool.not.i208, label %if.then.i209, label %if.then23.if.end25_crit_edge

if.then23.if.end25_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then.i209:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet24 = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 20, i32 12
  tail call void @__tasklet_schedule(ptr noundef %tasklet24) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then.i209, %if.then23.if.end25_crit_edge, %if.end20.if.end25_crit_edge
  %and26 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end34_crit_edge, label %if.then28

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then28:                                        ; preds = %if.end25
  %14 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %registers.i, align 8
  %add.ptr.i213 = getelementptr i8, ptr %15, i32 164
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %registers.i, align 8
  %add.ptr.i215 = getelementptr i8, ptr %18, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 %16) #10, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool30.not246 = icmp eq i32 %16, 0
  br i1 %tobool30.not246, label %if.then28.if.end34_crit_edge, label %while.body.lr.ph

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

while.body.lr.ph:                                 ; preds = %if.then28
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %ir_context_list = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 27
  br label %while.body

while.body:                                       ; preds = %tasklet_schedule.exit221.while.body_crit_edge, %while.body.lr.ph
  %iso_event.0247 = phi i32 [ %19, %while.body.lr.ph ], [ %and33, %tasklet_schedule.exit221.while.body_crit_edge ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %iso_event.0247, i1 true), !range !433
  %21 = ptrtoint ptr %ir_context_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ir_context_list, align 8
  %state.i216 = getelementptr %struct.iso_context, ptr %22, i32 %20, i32 1, i32 12, i32 1
  %call.i217 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i216) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool.not.i218 = icmp eq i32 %call.i217, 0
  br i1 %tobool.not.i218, label %if.then.i219, label %while.body.tasklet_schedule.exit221_crit_edge

while.body.tasklet_schedule.exit221_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit221

if.then.i219:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet31 = getelementptr %struct.iso_context, ptr %22, i32 %20, i32 1, i32 12
  tail call void @__tasklet_schedule(ptr noundef %tasklet31) #10
  br label %tasklet_schedule.exit221

tasklet_schedule.exit221:                         ; preds = %if.then.i219, %while.body.tasklet_schedule.exit221_crit_edge
  %shl = shl nuw i32 1, %20
  %neg32 = xor i32 %shl, -1
  %and33 = and i32 %iso_event.0247, %neg32
  %tobool30.not = icmp eq i32 %and33, 0
  br i1 %tobool30.not, label %tasklet_schedule.exit221.if.end34_crit_edge, label %tasklet_schedule.exit221.while.body_crit_edge

tasklet_schedule.exit221.while.body_crit_edge:    ; preds = %tasklet_schedule.exit221
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

tasklet_schedule.exit221.if.end34_crit_edge:      ; preds = %tasklet_schedule.exit221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.end34:                                         ; preds = %tasklet_schedule.exit221.if.end34_crit_edge, %if.then28.if.end34_crit_edge, %if.end25.if.end34_crit_edge
  %and35 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end52_crit_edge, label %if.then37

if.end34.if.end52_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then37:                                        ; preds = %if.end34
  %23 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %registers.i, align 8
  %add.ptr.i223 = getelementptr i8, ptr %24, i32 148
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %registers.i, align 8
  %add.ptr.i225 = getelementptr i8, ptr %27, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %25) #10, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool40.not248 = icmp eq i32 %25, 0
  br i1 %tobool40.not248, label %if.then37.if.end52_crit_edge, label %while.body41.lr.ph

if.then37.if.end52_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

while.body41.lr.ph:                               ; preds = %if.then37
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  %it_context_list = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 23
  br label %while.body41

while.body41:                                     ; preds = %tasklet_schedule.exit231.while.body41_crit_edge, %while.body41.lr.ph
  %iso_event.1249 = phi i32 [ %28, %while.body41.lr.ph ], [ %and50, %tasklet_schedule.exit231.while.body41_crit_edge ]
  %29 = tail call i32 @llvm.cttz.i32(i32 %iso_event.1249, i1 true), !range !433
  %30 = ptrtoint ptr %it_context_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %it_context_list, align 8
  %state.i226 = getelementptr %struct.iso_context, ptr %31, i32 %29, i32 1, i32 12, i32 1
  %call.i227 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i226) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool.not.i228 = icmp eq i32 %call.i227, 0
  br i1 %tobool.not.i228, label %if.then.i229, label %while.body41.tasklet_schedule.exit231_crit_edge

while.body41.tasklet_schedule.exit231_crit_edge:  ; preds = %while.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit231

if.then.i229:                                     ; preds = %while.body41
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet47 = getelementptr %struct.iso_context, ptr %31, i32 %29, i32 1, i32 12
  tail call void @__tasklet_schedule(ptr noundef %tasklet47) #10
  br label %tasklet_schedule.exit231

tasklet_schedule.exit231:                         ; preds = %if.then.i229, %while.body41.tasklet_schedule.exit231_crit_edge
  %shl48 = shl nuw i32 1, %29
  %neg49 = xor i32 %shl48, -1
  %and50 = and i32 %iso_event.1249, %neg49
  %tobool40.not = icmp eq i32 %and50, 0
  br i1 %tobool40.not, label %tasklet_schedule.exit231.if.end52_crit_edge, label %tasklet_schedule.exit231.while.body41_crit_edge

tasklet_schedule.exit231.while.body41_crit_edge:  ; preds = %tasklet_schedule.exit231
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body41

tasklet_schedule.exit231.if.end52_crit_edge:      ; preds = %tasklet_schedule.exit231
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.end52:                                         ; preds = %tasklet_schedule.exit231.if.end52_crit_edge, %if.then37.if.end52_crit_edge, %if.end34.if.end52_crit_edge
  %and53 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end58_crit_edge, label %do.end, !prof !431

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.end:                                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fw_card, ptr %data, i32 0, i32 1
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.159) #13
  br label %if.end58

if.end58:                                         ; preds = %do.end, %if.end52.if.end58_crit_edge
  %and59 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end79_crit_edge, label %if.then67, !prof !431

if.end58.if.end79_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then67:                                        ; preds = %if.end58
  %34 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %registers.i, align 8
  %add.ptr.i233 = getelementptr i8, ptr %35, i32 60
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %37 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %registers.i, align 8
  %add.ptr.i235 = getelementptr i8, ptr %38, i32 56
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i235) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %registers.i, align 8
  %add.ptr.i237 = getelementptr i8, ptr %41, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 65536) #10, !srcloc !420
  %call70 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.160) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then67.if.end79_crit_edge, label %do.end75

if.then67.if.end79_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.end75:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  %device77 = getelementptr inbounds %struct.fw_card, ptr %data, i32 0, i32 1
  %42 = ptrtoint ptr %device77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device77, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.162) #13
  br label %if.end79

if.end79:                                         ; preds = %do.end75, %if.then67.if.end79_crit_edge, %if.end58.if.end79_crit_edge
  %and80 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end98_crit_edge, label %if.then88, !prof !431

if.end79.if.end98_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then88:                                        ; preds = %if.end79
  %call89 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.160) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then88.if.end97_crit_edge, label %do.end94

if.then88.if.end97_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

do.end94:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  %device96 = getelementptr inbounds %struct.fw_card, ptr %data, i32 0, i32 1
  %44 = ptrtoint ptr %device96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device96, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %45, ptr noundef nonnull @.str.165) #13
  br label %if.end97

if.end97:                                         ; preds = %do.end94, %if.then88.if.end97_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %registers.i, align 8
  %add.ptr.i239 = getelementptr i8, ptr %47, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i239, i32 8192) #10, !srcloc !420
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end79.if.end98_crit_edge
  %and99 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.if.end117_crit_edge, label %if.then107, !prof !431

if.end98.if.end117_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then107:                                       ; preds = %if.end98
  %call108 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.160) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then107.if.end117_crit_edge, label %do.end113

if.then107.if.end117_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

do.end113:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  %device115 = getelementptr inbounds %struct.fw_card, ptr %data, i32 0, i32 1
  %48 = ptrtoint ptr %device115 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device115, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %49, ptr noundef nonnull @.str.168) #13
  br label %if.end117

if.end117:                                        ; preds = %do.end113, %if.then107.if.end117_crit_edge, %if.end98.if.end117_crit_edge
  %and118 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end127_crit_edge, label %if.then126, !prof !431

if.end117.if.end127_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then126:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @handle_dead_contexts(ptr noundef %data)
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.end117.if.end127_crit_edge
  %and128 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.else, label %if.then130

if.then130:                                       ; preds = %if.end127
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %call.i240 = tail call fastcc i32 @get_cycle_time(ptr noundef %data) #10
  %shr.i = lshr i32 %call.i240, 25
  %bus_time_running.i = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 8
  %50 = ptrtoint ptr %bus_time_running.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bus_time_running.i, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i241 = icmp eq i8 %51, 0
  br i1 %tobool.not.i241, label %if.then.i243, label %if.then130.if.end.i244_crit_edge, !prof !434

if.then130.if.end.i244_crit_edge:                 ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i244

if.then.i243:                                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %registers.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8192) #10, !srcloc !420
  %call4.i = tail call i64 @ktime_get_seconds() #10
  %conv.i = trunc i64 %call4.i to i32
  %and5.i = and i32 %conv.i, -128
  %and6.i242 = and i32 %shr.i, 64
  %or.i = or i32 %and5.i, %and6.i242
  %bus_time.i = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 7
  %54 = ptrtoint ptr %bus_time.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or.i, ptr %bus_time.i, align 8
  %55 = ptrtoint ptr %bus_time_running.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %bus_time_running.i, align 4
  br label %if.end.i244

if.end.i244:                                      ; preds = %if.then.i243, %if.then130.if.end.i244_crit_edge
  %bus_time8.i = getelementptr inbounds %struct.fw_ohci, ptr %data, i32 0, i32 7
  %56 = ptrtoint ptr %bus_time8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bus_time8.i, align 8
  %58 = xor i32 %57, %shr.i
  %59 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i = icmp eq i32 %59, 0
  br i1 %cmp.not.i, label %if.end.i244.update_bus_time.exit_crit_edge, label %if.then12.i

if.end.i244.update_bus_time.exit_crit_edge:       ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_bus_time.exit

if.then12.i:                                      ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %57, 64
  %60 = ptrtoint ptr %bus_time8.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i, ptr %bus_time8.i, align 8
  br label %update_bus_time.exit

update_bus_time.exit:                             ; preds = %if.then12.i, %if.end.i244.update_bus_time.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

if.else:                                          ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %registers.i, align 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %cleanup

cleanup:                                          ; preds = %if.else, %update_bus_time.exit, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge250
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge250 ], [ 1, %if.else ], [ 1, %update_bus_time.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_card_add(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar_context_release(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %device = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %buffer = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void @vunmap(ptr noundef %5) #10
  %arrayidx = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private.i = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private.i, align 4
  tail call void @dma_free_pages(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %7, i32 noundef %9, i32 noundef 2) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %private.i.1 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %private.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %private.i.1, align 4
  tail call void @dma_free_pages(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %11, i32 noundef %13, i32 noundef 2) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %private.i.2 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %private.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private.i.2, align 4
  tail call void @dma_free_pages(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %15, i32 noundef %17, i32 noundef 2) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %19, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %private.i.3 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %private.i.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %private.i.3, align 4
  tail call void @dma_free_pages(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %19, i32 noundef %21, i32 noundef 2) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %23, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %private.i.4 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %private.i.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %private.i.4, align 4
  tail call void @dma_free_pages(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %23, i32 noundef %25, i32 noundef 2) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %27, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %private.i.5 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %private.i.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %private.i.5, align 4
  tail call void @dma_free_pages(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %27, i32 noundef %29, i32 noundef 2) #10
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 6
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %31, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %private.i.6 = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %private.i.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %private.i.6, align 4
  tail call void @dma_free_pages(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %31, i32 noundef %33, i32 noundef 2) #10
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.ar_context, ptr %ctx, i32 0, i32 1, i32 7
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %35, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %private.i.7 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %private.i.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %private.i.7, align 4
  tail call void @dma_free_pages(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %35, i32 noundef %37, i32 noundef 2) #10
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_enable(ptr noundef %card, ptr noundef readonly %config_rom, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %0 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 256) #10, !srcloc !420
  br label %for.body.i

for.body.i:                                       ; preds = %if.end3.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end3.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not.i = icmp eq i32 %4, -1
  br i1 %tobool.not.i, label %for.body.i.do.end_crit_edge, label %if.end.i

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %for.body.i
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.end, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 1) #10
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 500
  br i1 %exitcond.not.i, label %if.end3.i.do.end_crit_edge, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end3.i.do.end_crit_edge, %for.body.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -16, %if.end3.i.do.end_crit_edge ], [ -19, %for.body.i.do.end_crit_edge ]
  %device = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 3072) #10, !srcloc !420
  %10 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %registers.i.i, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  tail call void @msleep(i32 noundef 50) #10
  %13 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i163 = getelementptr i8, ptr %14, i32 80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %16 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %for.body.1, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %if.end
  tail call void @msleep(i32 noundef 50) #10
  %17 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i163.1 = getelementptr i8, ptr %18, i32 80
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163.1) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %20 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1 = icmp eq i32 %20, 0
  br i1 %tobool.not.1, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  %21 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i163.2 = getelementptr i8, ptr %22, i32 80
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163.2) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %24 = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.2 = icmp eq i32 %24, 0
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %if.end.for.end_crit_edge
  %tobool.not.lcssa = phi i1 [ %tobool.not, %if.end.for.end_crit_edge ], [ %tobool.not.1, %for.body.1.for.end_crit_edge ], [ %tobool.not.2, %for.body.2 ]
  br i1 %tobool.not.lcssa, label %do.end9, label %if.end12

do.end9:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %device11 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %25 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end12:                                         ; preds = %for.end
  %quirks = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 5
  %27 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quirks, align 8
  %and13 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end30_crit_edge, label %if.then15

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then15:                                        ; preds = %if.end12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 8519680) #10, !srcloc !420
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then15
  %i.019.i.i = phi i32 [ 0, %if.then15 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i17.i.i = getelementptr i8, ptr %32, i32 236
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, -1
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup_crit_edge, label %if.end.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.i.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool1.not.i.i = icmp sgt i32 %34, -1
  br i1 %tobool1.not.i.i, label %if.end4.i.i, label %read_phy_reg.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i.i)
  %cmp5.i.i = icmp ugt i32 %i.019.i.i, 2
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end4.i.i.for.inc.i.i_crit_edge

if.end4.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then6.i.i, %if.end4.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 103
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %35 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.42, i32 noundef 2) #13
  tail call void @dump_stack() #13
  br label %cleanup

read_phy_reg.exit.i:                              ; preds = %if.end.i.i
  %37 = and i32 %34, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 14680064, i32 %37)
  %cmp1.not.i = icmp eq i32 %37, 14680064
  br i1 %cmp1.not.i, label %for.body.preheader.i, label %read_phy_reg.exit.i.if.else_crit_edge

read_phy_reg.exit.i.if.else_crit_edge:            ; preds = %read_phy_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.body.preheader.i:                             ; preds = %read_phy_reg.exit.i
  %call5.i = tail call fastcc i32 @read_paged_phy_reg(ptr noundef %card, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %for.body.preheader.i.cleanup_crit_edge, label %if.end8.i

for.body.preheader.i.cleanup_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.i:                                       ; preds = %if.end8.i
  %call5.1.i = tail call fastcc i32 @read_paged_phy_reg(ptr noundef %card, i32 noundef 14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1.i)
  %cmp6.1.i = icmp slt i32 %call5.1.i, 0
  br i1 %cmp6.1.i, label %for.cond.i.cleanup_crit_edge, label %if.end8.1.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.1.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %call5.1.i)
  %cmp9.not.1.i = icmp eq i32 %call5.1.i, 48
  br i1 %cmp9.not.1.i, label %for.cond.1.i, label %if.end8.1.i.if.else_crit_edge

if.end8.1.i.if.else_crit_edge:                    ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.cond.1.i:                                     ; preds = %if.end8.1.i
  %call5.2.i = tail call fastcc i32 @read_paged_phy_reg(ptr noundef %card, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2.i)
  %cmp6.2.i = icmp slt i32 %call5.2.i, 0
  br i1 %cmp6.2.i, label %for.cond.1.i.cleanup_crit_edge, label %if.end8.2.i

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.2.i:                                      ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131, i32 %call5.2.i)
  %cmp9.not.2.i = icmp eq i32 %call5.2.i, 131
  br i1 %cmp9.not.2.i, label %for.cond.2.i, label %if.end8.2.i.if.else_crit_edge

if.end8.2.i.if.else_crit_edge:                    ; preds = %if.end8.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.cond.2.i:                                     ; preds = %if.end8.2.i
  %call5.3.i = tail call fastcc i32 @read_paged_phy_reg(ptr noundef %card, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3.i)
  %cmp6.3.i = icmp slt i32 %call5.3.i, 0
  br i1 %cmp6.3.i, label %for.cond.2.i.cleanup_crit_edge, label %if.end8.3.i

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.3.i:                                      ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call5.3.i)
  %cmp9.not.3.i = icmp eq i32 %call5.3.i, 40
  br i1 %cmp9.not.3.i, label %for.cond.3.i, label %if.end8.3.i.if.else_crit_edge

if.end8.3.i.if.else_crit_edge:                    ; preds = %if.end8.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.cond.3.i:                                     ; preds = %if.end8.3.i
  %call5.4.i = tail call fastcc i32 @read_paged_phy_reg(ptr noundef %card, i32 noundef 11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4.i)
  %cmp6.4.i = icmp slt i32 %call5.4.i, 0
  br i1 %cmp6.4.i, label %for.cond.3.i.cleanup_crit_edge, label %if.end8.4.i

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.4.i:                                      ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4.i)
  %cmp9.not.4.i = icmp eq i32 %call5.4.i, 0
  br i1 %cmp9.not.4.i, label %for.cond.4.i, label %if.end8.4.i.if.else_crit_edge

if.end8.4.i.if.else_crit_edge:                    ; preds = %if.end8.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.cond.4.i:                                     ; preds = %if.end8.4.i
  %call5.5.i = tail call fastcc i32 @read_paged_phy_reg(ptr noundef %card, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5.i)
  %cmp6.5.i = icmp slt i32 %call5.5.i, 0
  br i1 %cmp6.5.i, label %for.cond.4.i.cleanup_crit_edge, label %if.end19

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call5.i)
  %cmp9.not.i = icmp eq i32 %call5.i, 5
  br i1 %cmp9.not.i, label %for.cond.i, label %if.end8.i.if.else_crit_edge

if.end8.i.if.else_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end19:                                         ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call5.5.i)
  %cmp9.not.5.i.not = icmp eq i32 %call5.5.i, 8
  br i1 %cmp9.not.5.i.not, label %do.end24, label %if.end19.if.else_crit_edge

if.end19.if.else_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %device26 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %38 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device26, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %39, ptr noundef nonnull @.str.40) #13
  br label %if.end30

if.else:                                          ; preds = %if.end19.if.else_crit_edge, %if.end8.i.if.else_crit_edge, %if.end8.4.i.if.else_crit_edge, %if.end8.3.i.if.else_crit_edge, %if.end8.2.i.if.else_crit_edge, %if.end8.1.i.if.else_crit_edge, %read_phy_reg.exit.i.if.else_crit_edge
  %40 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quirks, align 8
  %and28 = and i32 %41, -33
  store i32 %and28, ptr %quirks, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %do.end24, %if.end12.if.end30_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i166 = getelementptr i8, ptr %43, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 64) #10, !srcloc !420
  %self_id_bus = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 36
  %44 = ptrtoint ptr %self_id_bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %self_id_bus, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  %47 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i168 = getelementptr i8, ptr %48, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %46) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i170 = getelementptr i8, ptr %50, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 12288) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i172 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 789104640) #10, !srcloc !420
  %bus_time_running = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 8
  %53 = ptrtoint ptr %bus_time_running to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %bus_time_running, align 4
  %ir_context_support = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 25
  br label %for.body33

for.body33:                                       ; preds = %for.inc38.for.body33_crit_edge, %if.end30
  %i.1267 = phi i32 [ 0, %if.end30 ], [ %inc39, %for.inc38.for.body33_crit_edge ]
  %54 = ptrtoint ptr %ir_context_support to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ir_context_support, align 8
  %shl = shl nuw i32 1, %i.1267
  %and34 = and i32 %55, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %for.body33.for.inc38_crit_edge, label %if.then36

for.body33.for.inc38_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc38

if.then36:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i32 %i.1267, 5
  %add = add nuw nsw i32 %mul, 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i174 = getelementptr i8, ptr %57, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 16) #10, !srcloc !420
  br label %for.inc38

for.inc38:                                        ; preds = %if.then36, %for.body33.for.inc38_crit_edge
  %inc39 = add nuw nsw i32 %i.1267, 1
  %exitcond.not = icmp eq i32 %inc39, 32
  br i1 %exitcond.not, label %for.end40, label %for.inc38.for.body33_crit_edge

for.inc38.for.body33_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33

for.end40:                                        ; preds = %for.inc38
  %58 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %registers.i.i, align 8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %61 = and i32 %60, -268370176
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65551, i32 %62)
  %cmp43 = icmp ugt i32 %62, 65551
  br i1 %cmp43, label %if.then44, label %for.end40.if.end45_crit_edge

for.end40.if.end45_crit_edge:                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then44:                                        ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i177 = getelementptr i8, ptr %64, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 -16777217) #10, !srcloc !420
  %broadcast_channel_auto_allocated = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 36
  %65 = ptrtoint ptr %broadcast_channel_auto_allocated to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %broadcast_channel_auto_allocated, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %for.end40.if.end45_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %66 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i179 = getelementptr i8, ptr %67, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 1056964608) #10, !srcloc !420
  %68 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i181 = getelementptr i8, ptr %69, i32 220
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #10, !srcloc !421
  %71 = lshr i32 %70, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and47 = and i32 %71, 63
  %pri_req_max = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 6
  %72 = ptrtoint ptr %pri_req_max to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and47, ptr %pri_req_max, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i183 = getelementptr i8, ptr %74, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 0) #10, !srcloc !420
  %75 = ptrtoint ptr %pri_req_max to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pri_req_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp49 = icmp ne i32 %76, 0
  %priority_budget_implemented = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 35
  %frombool = zext i1 %cmp49 to i8
  %77 = ptrtoint ptr %priority_budget_implemented to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %frombool, ptr %priority_budget_implemented, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %78 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i185 = getelementptr i8, ptr %79, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 256) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %80 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i187 = getelementptr i8, ptr %81, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 -1) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %82 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i189 = getelementptr i8, ptr %83, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189, i32 -1) #10, !srcloc !420
  %84 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i191 = getelementptr i8, ptr %85, i32 80
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i191) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %87 = and i32 %86, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i192 = icmp eq i32 %87, 0
  br i1 %tobool.not.i192, label %if.end45.if.end53_crit_edge, label %if.end.i194

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end.i194:                                      ; preds = %if.end45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %88 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i.i193 = getelementptr i8, ptr %89, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i193, i32 8519680) #10, !srcloc !420
  br label %for.body.i.i198

for.body.i.i198:                                  ; preds = %for.inc.i.i206.for.body.i.i198_crit_edge, %if.end.i194
  %i.019.i.i195 = phi i32 [ 0, %if.end.i194 ], [ %inc.i.i204, %for.inc.i.i206.for.body.i.i198_crit_edge ]
  %90 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i17.i.i196 = getelementptr i8, ptr %91, i32 236
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i196) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %tobool.not.i.i197 = icmp eq i32 %92, -1
  br i1 %tobool.not.i.i197, label %for.body.i.i198.cleanup_crit_edge, label %if.end.i.i200

for.body.i.i198.cleanup_crit_edge:                ; preds = %for.body.i.i198
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i200:                                    ; preds = %for.body.i.i198
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %tobool1.not.i.i199 = icmp sgt i32 %93, -1
  br i1 %tobool1.not.i.i199, label %if.end4.i.i202, label %read_phy_reg.exit.i209

if.end4.i.i202:                                   ; preds = %if.end.i.i200
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i.i195)
  %cmp5.i.i201 = icmp ugt i32 %i.019.i.i195, 2
  br i1 %cmp5.i.i201, label %if.then6.i.i203, label %if.end4.i.i202.for.inc.i.i206_crit_edge

if.end4.i.i202.for.inc.i.i206_crit_edge:          ; preds = %if.end4.i.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i206

if.then6.i.i203:                                  ; preds = %if.end4.i.i202
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i.i206

for.inc.i.i206:                                   ; preds = %if.then6.i.i203, %if.end4.i.i202.for.inc.i.i206_crit_edge
  %inc.i.i204 = add nuw nsw i32 %i.019.i.i195, 1
  %exitcond.not.i.i205 = icmp eq i32 %inc.i.i204, 103
  br i1 %exitcond.not.i.i205, label %do.end.i.i208, label %for.inc.i.i206.for.body.i.i198_crit_edge

for.inc.i.i206.for.body.i.i198_crit_edge:         ; preds = %for.inc.i.i206
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i198

do.end.i.i208:                                    ; preds = %for.inc.i.i206
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i207 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %94 = ptrtoint ptr %device.i.i207 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device.i.i207, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.42, i32 noundef 2) #13
  tail call void @dump_stack() #13
  br label %cleanup

read_phy_reg.exit.i209:                           ; preds = %if.end.i.i200
  %96 = and i32 %93, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 14680064, i32 %96)
  %cmp5.i = icmp eq i32 %96, 14680064
  br i1 %cmp5.i, label %if.then6.i, label %read_phy_reg.exit.i209.if.end14.i_crit_edge

read_phy_reg.exit.i209.if.end14.i_crit_edge:      ; preds = %read_phy_reg.exit.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then6.i:                                       ; preds = %read_phy_reg.exit.i209
  %call7.i = tail call fastcc i32 @read_paged_phy_reg(ptr noundef %card, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then6.i.cleanup_crit_edge, label %if.end10.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp11.not.i = icmp ne i32 %call7.i, 0
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end10.i, %read_phy_reg.exit.i209.if.end14.i_crit_edge
  %enable_1394a.0.off0.i = phi i1 [ false, %read_phy_reg.exit.i209.if.end14.i_crit_edge ], [ %cmp11.not.i, %if.end10.i ]
  %97 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %quirks, align 8
  %and15.i = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %spec.select48.i = select i1 %tobool16.not.i, i1 %enable_1394a.0.off0.i, i1 false
  %set.0.i = select i1 %spec.select48.i, i32 3, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %99 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i56.i = getelementptr i8, ptr %100, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56.i, i32 8716288) #10, !srcloc !420
  br label %for.body.i60.i

for.body.i60.i:                                   ; preds = %for.inc.i71.i.for.body.i60.i_crit_edge, %if.end14.i
  %i.019.i57.i = phi i32 [ 0, %if.end14.i ], [ %inc.i69.i, %for.inc.i71.i.for.body.i60.i_crit_edge ]
  %101 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i17.i58.i = getelementptr i8, ptr %102, i32 236
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i58.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %tobool.not.i59.i = icmp eq i32 %103, -1
  br i1 %tobool.not.i59.i, label %for.body.i60.i.cleanup_crit_edge, label %if.end.i62.i

for.body.i60.i.cleanup_crit_edge:                 ; preds = %for.body.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i62.i:                                     ; preds = %for.body.i60.i
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %tobool1.not.i61.i = icmp sgt i32 %104, -1
  br i1 %tobool1.not.i61.i, label %if.end4.i67.i, label %read_phy_reg.exit75.i

if.end4.i67.i:                                    ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i57.i)
  %cmp5.i66.i = icmp ugt i32 %i.019.i57.i, 2
  br i1 %cmp5.i66.i, label %if.then6.i68.i, label %if.end4.i67.i.for.inc.i71.i_crit_edge

if.end4.i67.i.for.inc.i71.i_crit_edge:            ; preds = %if.end4.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i71.i

if.then6.i68.i:                                   ; preds = %if.end4.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i71.i

for.inc.i71.i:                                    ; preds = %if.then6.i68.i, %if.end4.i67.i.for.inc.i71.i_crit_edge
  %inc.i69.i = add nuw nsw i32 %i.019.i57.i, 1
  %exitcond.not.i70.i = icmp eq i32 %inc.i69.i, 103
  br i1 %exitcond.not.i70.i, label %do.end.i73.i, label %for.inc.i71.i.for.body.i60.i_crit_edge

for.inc.i71.i.for.body.i60.i_crit_edge:           ; preds = %for.inc.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i60.i

do.end.i73.i:                                     ; preds = %for.inc.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i72.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %105 = ptrtoint ptr %device.i72.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device.i72.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.42, i32 noundef 5) #13
  tail call void @dump_stack() #13
  br label %cleanup

read_phy_reg.exit75.i:                            ; preds = %if.end.i62.i
  %and3.i63.i = lshr i32 %104, 16
  %neg.i.i = select i1 %spec.select48.i, i32 195, i32 192
  %and.i.i = and i32 %and3.i63.i, %neg.i.i
  %or4.i.i = or i32 %and.i.i, %set.0.i
  %call5.i.i = tail call fastcc i32 @write_phy_reg(ptr noundef %card, i32 noundef 5, i32 noundef %or4.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp23.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp23.i, label %read_phy_reg.exit75.i.cleanup_crit_edge, label %if.end25.i

read_phy_reg.exit75.i.cleanup_crit_edge:          ; preds = %read_phy_reg.exit75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25.i:                                       ; preds = %read_phy_reg.exit75.i
  call void @__sanitizer_cov_trace_pc() #12
  %..i = select i1 %spec.select48.i, i32 80, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %107 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i52.i = getelementptr i8, ptr %108, i32 %..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 16384) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %109 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %110, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 32768) #10, !srcloc !420
  br label %if.end53

if.end53:                                         ; preds = %if.end25.i, %if.end45.if.end53_crit_edge
  %phy_reg_mutex.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %phy_reg_mutex.i, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %111 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i231 = getelementptr i8, ptr %112, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i231, i32 8650752) #10, !srcloc !420
  br label %for.body.i233

for.body.i233:                                    ; preds = %for.inc.i.for.body.i233_crit_edge, %if.end53
  %i.019.i = phi i32 [ 0, %if.end53 ], [ %inc.i238, %for.inc.i.for.body.i233_crit_edge ]
  %113 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %114, i32 236
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %tobool.not.i232 = icmp eq i32 %115, -1
  br i1 %tobool.not.i232, label %for.body.i233.ohci_update_phy_reg.exit.thread_crit_edge, label %if.end.i235

for.body.i233.ohci_update_phy_reg.exit.thread_crit_edge: ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #12
  br label %ohci_update_phy_reg.exit.thread

if.end.i235:                                      ; preds = %for.body.i233
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %116)
  %tobool1.not.i234 = icmp sgt i32 %116, -1
  br i1 %tobool1.not.i234, label %if.end4.i, label %read_phy_reg.exit

if.end4.i:                                        ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i)
  %cmp5.i236 = icmp ugt i32 %i.019.i, 2
  br i1 %cmp5.i236, label %if.then6.i237, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then6.i237:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i237, %if.end4.i.for.inc.i_crit_edge
  %inc.i238 = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i239 = icmp eq i32 %inc.i238, 103
  br i1 %exitcond.not.i239, label %do.end.i, label %for.inc.i.for.body.i233_crit_edge

for.inc.i.for.body.i233_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i233

do.end.i:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %117 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.42, i32 noundef 4) #13
  tail call void @dump_stack() #13
  br label %ohci_update_phy_reg.exit.thread

ohci_update_phy_reg.exit.thread:                  ; preds = %do.end.i, %for.body.i233.ohci_update_phy_reg.exit.thread_crit_edge
  %retval.0.i240.ph = phi i32 [ -16, %do.end.i ], [ -19, %for.body.i233.ohci_update_phy_reg.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i) #10
  br label %cleanup

read_phy_reg.exit:                                ; preds = %if.end.i235
  %and3.i = lshr i32 %116, 16
  %shr.i = and i32 %and3.i, 63
  %or4.i.i211 = or i32 %shr.i, 192
  %call5.i.i212 = tail call fastcc i32 @write_phy_reg(ptr noundef %card, i32 noundef 4, i32 noundef %or4.i.i211) #10
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i212)
  %cmp55 = icmp slt i32 %call5.i.i212, 0
  br i1 %cmp55, label %read_phy_reg.exit.cleanup_crit_edge, label %if.end57

read_phy_reg.exit.cleanup_crit_edge:              ; preds = %read_phy_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57:                                         ; preds = %read_phy_reg.exit
  %tobool58.not = icmp eq ptr %config_rom, null
  br i1 %tobool58.not, label %if.else68, label %if.then59

if.then59:                                        ; preds = %if.end57
  %device61 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %119 = ptrtoint ptr %device61 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device61, align 4
  %next_config_rom_bus = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 33
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %120, i32 noundef 1024, ptr noundef %next_config_rom_bus, i32 noundef 3264, i32 noundef 0) #10
  %next_config_rom = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 32
  %121 = ptrtoint ptr %next_config_rom to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i, ptr %next_config_rom, align 4
  %cmp64 = icmp eq ptr %call.i, null
  br i1 %cmp64, label %if.then59.cleanup_crit_edge, label %if.end66

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %if.then59
  %mul.i = shl i32 %length, 2
  %122 = call ptr @memcpy(ptr %call.i, ptr %config_rom, i32 %mul.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 1024
  br i1 %cmp.i, label %if.then.i, label %if.end66.if.end72_crit_edge

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i32, ptr %call.i, i32 %length
  %sub.i = sub nuw nsw i32 1024, %mul.i
  %123 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 %sub.i)
  br label %if.end72

if.else68:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %config_rom69 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 30
  %124 = ptrtoint ptr %config_rom69 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %config_rom69, align 4
  %next_config_rom70 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 32
  %126 = ptrtoint ptr %next_config_rom70 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %next_config_rom70, align 4
  %config_rom_bus = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 31
  %127 = ptrtoint ptr %config_rom_bus to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %config_rom_bus, align 8
  %next_config_rom_bus71 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 33
  %129 = ptrtoint ptr %next_config_rom_bus71 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %next_config_rom_bus71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.else68, %if.then.i, %if.end66.if.end72_crit_edge
  %next_config_rom73 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 32
  %130 = ptrtoint ptr %next_config_rom73 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %next_config_rom73, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %next_header = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 34
  %134 = ptrtoint ptr %next_header to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %next_header, align 4
  store i32 0, ptr %131, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %135 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i216 = getelementptr i8, ptr %136, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 0) #10, !srcloc !420
  %137 = ptrtoint ptr %next_config_rom73 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %next_config_rom73, align 4
  %arrayidx77 = getelementptr i32, ptr %138, i32 2
  %139 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx77, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #10
  %142 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i218 = getelementptr i8, ptr %143, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %141) #10, !srcloc !420
  %next_config_rom_bus78 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 33
  %144 = ptrtoint ptr %next_config_rom_bus78 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %next_config_rom_bus78, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #10
  %147 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i220 = getelementptr i8, ptr %148, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220, i32 %146) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %149 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i222 = getelementptr i8, ptr %150, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 128) #10, !srcloc !420
  %151 = load i32, ptr @param_debug, align 4
  %and79 = and i32 %151, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %spec.select = select i1 %tobool80.not, i32 -2088435213, i32 -2088304141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %152 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #10
  %153 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i224 = getelementptr i8, ptr %154, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 %152) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %155 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i226 = getelementptr i8, ptr %156, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 640) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %157 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i228 = getelementptr i8, ptr %158, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228, i32 393216) #10, !srcloc !420
  %ar_request_ctx = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 17
  tail call fastcc void @ar_context_run(ptr noundef %ar_request_ctx)
  %ar_response_ctx = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 18
  tail call fastcc void @ar_context_run(ptr noundef %ar_response_ctx)
  %159 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %registers.i.i, align 8
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  tail call void @fw_schedule_bus_reset(ptr noundef %card, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then59.cleanup_crit_edge, %read_phy_reg.exit.cleanup_crit_edge, %ohci_update_phy_reg.exit.thread, %read_phy_reg.exit75.i.cleanup_crit_edge, %do.end.i73.i, %for.body.i60.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %do.end.i.i208, %for.body.i.i198.cleanup_crit_edge, %for.cond.4.i.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.body.preheader.i.cleanup_crit_edge, %do.end.i.i, %for.body.i.i.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end72 ], [ -5, %do.end9 ], [ %call5.i.i212, %read_phy_reg.exit.cleanup_crit_edge ], [ -12, %if.then59.cleanup_crit_edge ], [ %retval.0.i240.ph, %ohci_update_phy_reg.exit.thread ], [ %call5.5.i, %for.cond.4.i.cleanup_crit_edge ], [ %call5.4.i, %for.cond.3.i.cleanup_crit_edge ], [ %call5.3.i, %for.cond.2.i.cleanup_crit_edge ], [ %call5.2.i, %for.cond.1.i.cleanup_crit_edge ], [ %call5.1.i, %for.cond.i.cleanup_crit_edge ], [ %call5.i, %for.body.preheader.i.cleanup_crit_edge ], [ -16, %do.end.i.i ], [ -16, %do.end.i73.i ], [ -16, %do.end.i.i208 ], [ %call5.i.i, %read_phy_reg.exit75.i.cleanup_crit_edge ], [ %call7.i, %if.then6.i.cleanup_crit_edge ], [ -19, %for.body.i60.i.cleanup_crit_edge ], [ -19, %for.body.i.i198.cleanup_crit_edge ], [ -19, %for.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_read_phy_reg(ptr noundef %card, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_reg_mutex = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %phy_reg_mutex, i32 noundef 0) #10
  %call1 = tail call fastcc i32 @read_phy_reg(ptr noundef %card, i32 noundef %addr)
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_update_phy_reg(ptr noundef %card, i32 noundef %addr, i32 noundef %clear_bits, i32 noundef %set_bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_reg_mutex = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %phy_reg_mutex, i32 noundef 0) #10
  %call.i = tail call fastcc i32 @read_phy_reg(ptr noundef %card, i32 noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.update_phy_reg.exit_crit_edge, label %if.end.i

entry.update_phy_reg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_phy_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %addr)
  %cmp1.i = icmp eq i32 %addr, 5
  %or.i = or i32 %clear_bits, 60
  %spec.select.i = select i1 %cmp1.i, i32 %or.i, i32 %clear_bits
  %neg.i = xor i32 %spec.select.i, -1
  %and.i = and i32 %call.i, %neg.i
  %or4.i = or i32 %and.i, %set_bits
  %call5.i = tail call fastcc i32 @write_phy_reg(ptr noundef %card, i32 noundef %addr, i32 noundef %or4.i) #10
  br label %update_phy_reg.exit

update_phy_reg.exit:                              ; preds = %if.end.i, %entry.update_phy_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ %call.i, %entry.update_phy_reg.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %phy_reg_mutex) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_set_config_rom(ptr noundef %card, ptr nocapture noundef readonly %config_rom, i32 noundef %length) #2 align 64 {
entry:
  %next_config_rom_bus = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_config_rom_bus) #10
  %0 = ptrtoint ptr %next_config_rom_bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %next_config_rom_bus, align 4, !annotation !432
  %device = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef 1024, ptr noundef nonnull %next_config_rom_bus, i32 noundef 3264, i32 noundef 0) #10
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 13
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %next_config_rom3 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 32
  %3 = ptrtoint ptr %next_config_rom3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next_config_rom3, align 4
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %next_config_rom3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %next_config_rom3, align 4
  %6 = ptrtoint ptr %next_config_rom_bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_config_rom_bus, align 4
  %next_config_rom_bus7 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 33
  %8 = ptrtoint ptr %next_config_rom_bus7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %next_config_rom_bus7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %next_config_rom.0 = phi ptr [ null, %if.then5 ], [ %call.i, %if.end.if.end8_crit_edge ]
  %9 = ptrtoint ptr %next_config_rom3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next_config_rom3, align 4
  %mul.i = shl i32 %length, 2
  %11 = call ptr @memcpy(ptr %10, ptr %config_rom, i32 %mul.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 1024
  br i1 %cmp.i, label %if.then.i, label %if.end8.copy_config_rom.exit_crit_edge

if.end8.copy_config_rom.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_config_rom.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i32, ptr %10, i32 %length
  %sub.i = sub nuw nsw i32 1024, %mul.i
  %12 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 %sub.i)
  br label %copy_config_rom.exit

copy_config_rom.exit:                             ; preds = %if.then.i, %if.end8.copy_config_rom.exit_crit_edge
  %13 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config_rom, align 4
  %next_header = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 34
  %15 = ptrtoint ptr %next_header to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %next_header, align 4
  %16 = ptrtoint ptr %next_config_rom3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next_config_rom3, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %next_config_rom_bus12 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 33
  %19 = ptrtoint ptr %next_config_rom_bus12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next_config_rom_bus12, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  call void @arm_heavy_mb() #10
  %21 = call i32 @llvm.bswap.i32(i32 %20) #10
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %22 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #10, !srcloc !420
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %cmp14.not = icmp eq ptr %next_config_rom.0, null
  br i1 %cmp14.not, label %copy_config_rom.exit.if.end18_crit_edge, label %if.then15

copy_config_rom.exit.if.end18_crit_edge:          ; preds = %copy_config_rom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %copy_config_rom.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %26 = ptrtoint ptr %next_config_rom_bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %next_config_rom_bus, align 4
  call void @dma_free_attrs(ptr noundef %25, i32 noundef 1024, ptr noundef nonnull %next_config_rom.0, i32 noundef %27, i32 noundef 0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %copy_config_rom.exit.if.end18_crit_edge
  call void @fw_schedule_bus_reset(ptr noundef %card, i1 noundef zeroext true, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_config_rom_bus) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ohci_send_request(ptr noundef %card, ptr noundef %packet) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %at_request_ctx = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 19
  tail call fastcc void @at_context_transmit(ptr noundef %at_request_ctx, ptr noundef %packet)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ohci_send_response(ptr noundef %card, ptr noundef %packet) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %at_response_ctx = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 20
  tail call fastcc void @at_context_transmit(ptr noundef %at_response_ctx, ptr noundef %packet)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_cancel_packet(ptr noundef %card, ptr noundef %packet) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data1 = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 12
  %0 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data1, align 4
  %tasklet = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 19, i32 12
  %count.i.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 19, i32 12, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !426
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !427
  tail call void @tasklet_unlock_spin_wait(ptr noundef %tasklet) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !435
  %ack = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 10
  %3 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %payload_mapped = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 7
  %5 = ptrtoint ptr %payload_mapped to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %payload_mapped, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %payload_bus = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 6
  %9 = ptrtoint ptr %payload_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %payload_bus, align 4
  %payload_length = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 5
  %11 = ptrtoint ptr %payload_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %payload_length, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 1, i32 noundef 0) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %13 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %packet, align 4
  %header = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 2
  tail call fastcc void @log_ar_at_event(ptr noundef %card, i8 noundef zeroext 84, i32 noundef %14, ptr noundef %header, i32 noundef 32)
  %packet5 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %packet5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %packet5, align 4
  %16 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 17, ptr %ack, align 4
  %callback = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 9
  %17 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %callback, align 4
  tail call void %18(ptr noundef %packet, ptr noundef %card, i32 noundef 17) #10
  br label %out

out:                                              ; preds = %if.end4, %entry.out_crit_edge
  %ret.0 = phi i32 [ -2, %entry.out_crit_edge ], [ 0, %if.end4 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !429
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !430
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_enable_phys_dma(ptr noundef %card, i32 noundef %node_id, i32 noundef %generation) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @param_remote_dma, align 1, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %generation6 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 3
  %1 = ptrtoint ptr %generation6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %generation6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %generation)
  %cmp7.not = icmp eq i32 %2, %generation
  br i1 %cmp7.not, label %if.end10, label %do.body1.out_crit_edge

do.body1.out_crit_edge:                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %do.body1
  %and = and i32 %node_id, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 65472, i32 %and)
  %cmp11 = icmp eq i32 %and, 65472
  %and13 = and i32 %node_id, 63
  %spec.select = select i1 %cmp11, i32 %and13, i32 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %spec.select)
  %cmp14 = icmp ult i32 %spec.select, 32
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw i32 1, %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %4 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #10, !srcloc !420
  br label %if.end18

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add nsw i32 %spec.select, -32
  %shl17 = shl nuw i32 1, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl17) #10
  %registers.i31 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %7 = ptrtoint ptr %registers.i31 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %registers.i31, align 8
  %add.ptr.i32 = getelementptr i8, ptr %8, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %6) #10, !srcloc !420
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %9 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %registers.i.i, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %out

out:                                              ; preds = %if.end18, %do.body1.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end18 ], [ -116, %do.body1.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_read_csr(ptr noundef %card, i32 noundef %csr_offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %csr_offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %csr_offset, label %do.end33 [
    i32 0, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge69
    i32 8, label %sw.bb6
    i32 512, label %sw.bb8
    i32 516, label %do.body11
    i32 528, label %sw.bb18
    i32 536, label %sw.bb21
  ]

entry.sw.bb_crit_edge69:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge69
  %is_root = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 9
  %1 = ptrtoint ptr %is_root to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_root, align 1, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %3 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 224
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %value.0 = phi i32 [ 0, %if.else ], [ 256, %land.lhs.true.if.end_crit_edge ]
  %csr_state_setclear_abdicate = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 10
  %7 = ptrtoint ptr %csr_state_setclear_abdicate to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %csr_state_setclear_abdicate, align 2, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  %or = or i32 %value.0, 1024
  %spec.select = select i1 %tobool3.not, i32 %value.0, i32 %or
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %registers.i63 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %9 = ptrtoint ptr %registers.i63 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %registers.i63, align 8
  %add.ptr.i64 = getelementptr i8, ptr %10, i32 232
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #10, !srcloc !421
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %shl = shl i32 %12, 16
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call fastcc i32 @get_cycle_time(ptr noundef %card)
  br label %cleanup

do.body11:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 13
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call.i = tail call fastcc i32 @get_cycle_time(ptr noundef %card) #10
  %shr.i = lshr i32 %call.i, 25
  %bus_time_running.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 8
  %13 = ptrtoint ptr %bus_time_running.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bus_time_running.i, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body11.if.end.i_crit_edge, !prof !434

do.body11.if.end.i_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %15 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8192) #10, !srcloc !420
  %call4.i = tail call i64 @ktime_get_seconds() #10
  %conv.i = trunc i64 %call4.i to i32
  %and5.i = and i32 %conv.i, -128
  %and6.i = and i32 %shr.i, 64
  %or.i = or i32 %and5.i, %and6.i
  %bus_time.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 7
  %17 = ptrtoint ptr %bus_time.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %bus_time.i, align 8
  %18 = ptrtoint ptr %bus_time_running.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %bus_time_running.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body11.if.end.i_crit_edge
  %bus_time8.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 7
  %19 = ptrtoint ptr %bus_time8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bus_time8.i, align 8
  %21 = xor i32 %20, %shr.i
  %22 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i, label %if.end.i.update_bus_time.exit_crit_edge, label %if.then12.i

if.end.i.update_bus_time.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_bus_time.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %20, 64
  %23 = ptrtoint ptr %bus_time8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %bus_time8.i, align 8
  br label %update_bus_time.exit

update_bus_time.exit:                             ; preds = %if.then12.i, %if.end.i.update_bus_time.exit_crit_edge
  %24 = ptrtoint ptr %bus_time8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_time8.i, align 8
  %or16.i = or i32 %25, %shr.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #10
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %registers.i65 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %26 = ptrtoint ptr %registers.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %registers.i65, align 8
  %add.ptr.i66 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #10, !srcloc !421
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %shr = lshr i32 %29, 4
  %and20 = and i32 %shr, 268431375
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %registers.i67 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %30 = ptrtoint ptr %registers.i67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %registers.i67, align 8
  %add.ptr.i68 = getelementptr i8, ptr %31, i32 220
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #10, !srcloc !421
  %33 = lshr i32 %32, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and23 = and i32 %33, 63
  %pri_req_max = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 6
  %34 = ptrtoint ptr %pri_req_max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pri_req_max, align 4
  %shl24 = shl i32 %35, 8
  %or25 = or i32 %shl24, %and23
  br label %cleanup

do.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2654, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %sw.bb21, %sw.bb18, %update_bus_time.exit, %sw.bb8, %sw.bb6, %if.end
  %retval.0 = phi i32 [ 0, %do.end33 ], [ %or25, %sw.bb21 ], [ %and20, %sw.bb18 ], [ %or16.i, %update_bus_time.exit ], [ %call9, %sw.bb8 ], [ %shl, %sw.bb6 ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ohci_write_csr(ptr noundef %card, i32 noundef %csr_offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %csr_offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %csr_offset, label %do.end50 [
    i32 0, label %sw.bb
    i32 4, label %sw.bb6
    i32 8, label %sw.bb19
    i32 512, label %sw.bb20
    i32 516, label %do.body22
    i32 528, label %sw.bb31
    i32 536, label %sw.bb41
  ]

sw.bb:                                            ; preds = %entry
  %and = and i32 %value, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %land.lhs.true

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %is_root = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 9
  %1 = ptrtoint ptr %is_root to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_root, align 1, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %3 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8192) #10, !srcloc !420
  %5 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %registers.i, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %and2 = and i32 %value, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.sw.epilog_crit_edge, label %if.then4

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %csr_state_setclear_abdicate = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 10
  %8 = ptrtoint ptr %csr_state_setclear_abdicate to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %csr_state_setclear_abdicate, align 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %and7 = and i32 %value, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %sw.bb6.if.end13_crit_edge, label %land.lhs.true9

sw.bb6.if.end13_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true9:                                   ; preds = %sw.bb6
  %is_root10 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 9
  %9 = ptrtoint ptr %is_root10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_root10, align 1, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end13_crit_edge, label %if.then12

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i97 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %11 = ptrtoint ptr %registers.i97 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i97, align 8
  %add.ptr.i98 = getelementptr i8, ptr %12, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 8192) #10, !srcloc !420
  %13 = ptrtoint ptr %registers.i97 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers.i97, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true9.if.end13_crit_edge, %sw.bb6.if.end13_crit_edge
  %and14 = and i32 %value, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.sw.epilog_crit_edge, label %if.then16

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %csr_state_setclear_abdicate17 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 10
  %16 = ptrtoint ptr %csr_state_setclear_abdicate17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %csr_state_setclear_abdicate17, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %value)
  %18 = shl i32 %17, 16
  %registers.i100 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %19 = ptrtoint ptr %registers.i100 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %registers.i100, align 8
  %add.ptr.i101 = getelementptr i8, ptr %20, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %18) #10, !srcloc !420
  %21 = ptrtoint ptr %registers.i100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %registers.i100, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %value) #10
  %registers.i103 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %25 = ptrtoint ptr %registers.i103 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %registers.i103, align 8
  %add.ptr.i104 = getelementptr i8, ptr %26, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %24) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %registers.i103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %registers.i103, align 8
  %add.ptr.i106 = getelementptr i8, ptr %28, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 32768) #10, !srcloc !420
  %29 = ptrtoint ptr %registers.i103 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %registers.i103, align 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %sw.epilog

do.body22:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 13
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call.i = tail call fastcc i32 @get_cycle_time(ptr noundef %card) #10
  %shr.i = lshr i32 %call.i, 25
  %bus_time_running.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 8
  %32 = ptrtoint ptr %bus_time_running.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bus_time_running.i, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body22.if.end.i_crit_edge, !prof !434

do.body22.if.end.i_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i108 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %34 = ptrtoint ptr %registers.i.i108 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %registers.i.i108, align 8
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8192) #10, !srcloc !420
  %call4.i = tail call i64 @ktime_get_seconds() #10
  %conv.i = trunc i64 %call4.i to i32
  %and5.i = and i32 %conv.i, -128
  %and6.i = and i32 %shr.i, 64
  %or.i = or i32 %and5.i, %and6.i
  %bus_time.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 7
  %36 = ptrtoint ptr %bus_time.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i, ptr %bus_time.i, align 8
  %37 = ptrtoint ptr %bus_time_running.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %bus_time_running.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body22.if.end.i_crit_edge
  %bus_time8.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 7
  %38 = ptrtoint ptr %bus_time8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bus_time8.i, align 8
  %40 = xor i32 %39, %shr.i
  %41 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.not.i = icmp eq i32 %41, 0
  br i1 %cmp.not.i, label %if.end.i.update_bus_time.exit_crit_edge, label %if.then12.i

if.end.i.update_bus_time.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_bus_time.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %39, 64
  %42 = ptrtoint ptr %bus_time8.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i, ptr %bus_time8.i, align 8
  br label %update_bus_time.exit

update_bus_time.exit:                             ; preds = %if.then12.i, %if.end.i.update_bus_time.exit_crit_edge
  %43 = ptrtoint ptr %bus_time8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bus_time8.i, align 8
  %or16.i = or i32 %44, %shr.i
  %and28 = and i32 %or16.i, 64
  %and29 = and i32 %value, -128
  %or = or i32 %and28, %and29
  store i32 %or, ptr %bus_time8.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #10
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and32 = and i32 %value, 15
  %or37 = mul nuw nsw i32 %and32, 273
  %and38 = shl i32 %value, 4
  %shl39 = and i32 %and38, -65536
  %or40 = or i32 %or37, %shl39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %45 = tail call i32 @llvm.bswap.i32(i32 %or40) #10
  %registers.i109 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %46 = ptrtoint ptr %registers.i109 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %registers.i109, align 8
  %add.ptr.i110 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %45) #10, !srcloc !420
  %48 = ptrtoint ptr %registers.i109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %registers.i109, align 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %and42 = shl i32 %value, 24
  %51 = and i32 %and42, 1056964608
  %registers.i112 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %52 = ptrtoint ptr %registers.i112 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %registers.i112, align 8
  %add.ptr.i113 = getelementptr i8, ptr %53, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %51) #10, !srcloc !420
  %54 = ptrtoint ptr %registers.i112 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %registers.i112, align 8
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %sw.epilog

do.end50:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2717, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end50, %sw.bb41, %sw.bb31, %update_bus_time.exit, %sw.bb20, %sw.bb19, %if.then16, %if.end13.sw.epilog_crit_edge, %if.then4, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ohci_allocate_iso_context(ptr noundef %card, i32 noundef %type, i32 noundef %channel, i32 noundef %header_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %type, label %entry.if.then43_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb20
  ]

entry.if.then43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

sw.bb:                                            ; preds = %entry
  %it_context_mask = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 22
  %1 = ptrtoint ptr %it_context_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %it_context_mask, align 4
  %3 = tail call i32 @llvm.cttz.i32(i32 %2, i1 true), !range !433
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %iszero = icmp eq i32 %2, 0
  %sub = select i1 %iszero, i32 -1, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %sw.epilog, label %sw.bb.if.then43_crit_edge

sw.bb.if.then43_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

sw.bb1:                                           ; preds = %entry
  %ir_context_channels = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 24
  %ir_context_mask = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 26
  %4 = ptrtoint ptr %ir_context_channels to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ir_context_channels, align 8
  %sh_prom = zext i32 %channel to i64
  %shl2 = shl nuw i64 1, %sh_prom
  %and3 = and i64 %5, %shl2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool.not = icmp eq i64 %and3, 0
  br i1 %tobool.not, label %sw.bb1.if.then43_crit_edge, label %cond.true

sw.bb1.if.then43_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

cond.true:                                        ; preds = %sw.bb1
  %6 = ptrtoint ptr %ir_context_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ir_context_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %iszero4 = icmp eq i32 %7, 0
  br i1 %iszero4, label %cond.true.if.then43_crit_edge, label %if.then8

cond.true.if.then43_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.then8:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.cttz.i32(i32 %7, i1 true), !range !433
  %neg11 = xor i64 %shl2, -1
  %and12 = and i64 %5, %neg11
  %9 = ptrtoint ptr %ir_context_channels to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and12, ptr %ir_context_channels, align 8
  br label %sw.epilog.thread141

sw.bb20:                                          ; preds = %entry
  %ir_context_mask21 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 26
  %mc_allocated = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 29
  %10 = ptrtoint ptr %mc_allocated to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mc_allocated, align 8, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not = icmp eq i8 %11, 0
  br i1 %tobool22.not, label %cond.true23, label %sw.bb20.if.then43_crit_edge

sw.bb20.if.then43_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

cond.true23:                                      ; preds = %sw.bb20
  %12 = ptrtoint ptr %ir_context_mask21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ir_context_mask21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %iszero24 = icmp eq i32 %13, 0
  br i1 %iszero24, label %cond.true23.if.then43_crit_edge, label %if.then31

cond.true23.if.then43_crit_edge:                  ; preds = %cond.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.then31:                                        ; preds = %cond.true23
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true), !range !433
  %15 = ptrtoint ptr %mc_allocated to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %mc_allocated, align 8
  br label %sw.epilog.thread141

sw.epilog.thread141:                              ; preds = %if.then31, %if.then8
  %.sink = phi i32 [ %14, %if.then31 ], [ %8, %if.then8 ]
  %ir_context_mask21.sink162 = phi ptr [ %ir_context_mask21, %if.then31 ], [ %ir_context_mask, %if.then8 ]
  %callback.0.ph = phi ptr [ @handle_ir_buffer_fill, %if.then31 ], [ @handle_ir_packet_per_buffer, %if.then8 ]
  %channels.0.ph = phi ptr [ inttoptr (i32 -1 to ptr), %if.then31 ], [ %ir_context_channels, %if.then8 ]
  %shl33 = shl nuw i32 1, %.sink
  %neg34 = xor i32 %shl33, -1
  %16 = ptrtoint ptr %ir_context_mask21.sink162 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ir_context_mask21.sink162, align 4
  %and35 = and i32 %17, %neg34
  store i32 %and35, ptr %ir_context_mask21.sink162, align 4
  %ir_context_list38 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 27
  %18 = ptrtoint ptr %ir_context_list38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ir_context_list38, align 8
  %arrayidx39 = getelementptr %struct.iso_context, ptr %19, i32 %.sink
  %regs.0.ph.in = shl nuw nsw i32 %.sink, 5
  %regs.0.ph = or i32 %regs.0.ph.in, 1024
  br label %if.end45

sw.epilog:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  %20 = ptrtoint ptr %it_context_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %it_context_mask, align 4
  %mul = shl nuw nsw i32 %sub, 4
  %add = add nuw nsw i32 %mul, 512
  %it_context_list = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 23
  %21 = ptrtoint ptr %it_context_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %it_context_list, align 8
  %arrayidx = getelementptr %struct.iso_context, ptr %22, i32 %sub
  br label %if.end45

if.then43:                                        ; preds = %cond.true23.if.then43_crit_edge, %sw.bb20.if.then43_crit_edge, %cond.true.if.then43_crit_edge, %sw.bb1.if.then43_crit_edge, %sw.bb.if.then43_crit_edge, %entry.if.then43_crit_edge
  %ret.0139 = phi ptr [ inttoptr (i32 -16 to ptr), %sw.bb.if.then43_crit_edge ], [ inttoptr (i32 -38 to ptr), %entry.if.then43_crit_edge ], [ inttoptr (i32 -16 to ptr), %sw.bb1.if.then43_crit_edge ], [ inttoptr (i32 -16 to ptr), %cond.true.if.then43_crit_edge ], [ inttoptr (i32 -16 to ptr), %sw.bb20.if.then43_crit_edge ], [ inttoptr (i32 -16 to ptr), %cond.true23.if.then43_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %cleanup

if.end45:                                         ; preds = %sw.epilog, %sw.epilog.thread141
  %index.0155 = phi i32 [ %.sink, %sw.epilog.thread141 ], [ %3, %sw.epilog ]
  %regs.0154 = phi i32 [ %regs.0.ph, %sw.epilog.thread141 ], [ %add, %sw.epilog ]
  %mask.0153 = phi ptr [ %ir_context_mask21.sink162, %sw.epilog.thread141 ], [ %it_context_mask, %sw.epilog ]
  %channels.0152 = phi ptr [ %channels.0.ph, %sw.epilog.thread141 ], [ inttoptr (i32 -1 to ptr), %sw.epilog ]
  %callback.0151 = phi ptr [ %callback.0.ph, %sw.epilog.thread141 ], [ @handle_it_packet, %sw.epilog ]
  %ctx.0150 = phi ptr [ %arrayidx39, %sw.epilog.thread141 ], [ %arrayidx, %sw.epilog ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %23 = call ptr @memset(ptr %ctx.0150, i32 0, i32 128)
  %call46 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %24 = inttoptr i32 %call46 to ptr
  %header = getelementptr inbounds %struct.iso_context, ptr %ctx.0150, i32 0, i32 2
  %25 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp48 = icmp eq i32 %call46, 0
  br i1 %cmp48, label %if.end45.out_crit_edge, label %if.end50

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end50:                                         ; preds = %if.end45
  %context = getelementptr inbounds %struct.iso_context, ptr %ctx.0150, i32 0, i32 1
  %call51 = tail call fastcc i32 @context_init(ptr noundef %context, ptr noundef %card, i32 noundef %regs.0154, ptr noundef nonnull %callback.0151)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %out_with_header, label %if.end54

if.end54:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp55 = icmp eq i32 %type, 2
  br i1 %cmp55, label %if.then56, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 1
  %26 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %29, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 -1) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %31, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i16.i = getelementptr i8, ptr %33, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 0) #10, !srcloc !420
  %mc_channels.i = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 28
  %34 = ptrtoint ptr %mc_channels.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %mc_channels.i, align 8
  %mc_completed = getelementptr inbounds %struct.iso_context, ptr %ctx.0150, i32 0, i32 6
  %35 = ptrtoint ptr %mc_completed to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %mc_completed, align 4
  br label %cleanup

out_with_header:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %header, align 4
  %38 = ptrtoint ptr %37 to i32
  tail call void @free_pages(i32 noundef %38, i32 noundef 0) #10
  %phi.cast = inttoptr i32 %call51 to ptr
  br label %out

out:                                              ; preds = %out_with_header, %if.end45.out_crit_edge
  %ret.1 = phi ptr [ %phi.cast, %out_with_header ], [ inttoptr (i32 -12 to ptr), %if.end45.out_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %39 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %type, label %out.sw.epilog65_crit_edge [
    i32 1, label %sw.bb60
    i32 2, label %sw.bb63
  ]

out.sw.epilog65_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog65

sw.bb60:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom61 = zext i32 %channel to i64
  %shl62 = shl nuw i64 1, %sh_prom61
  %40 = ptrtoint ptr %channels.0152 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %channels.0152, align 8
  %or = or i64 %41, %shl62
  store i64 %or, ptr %channels.0152, align 8
  br label %sw.epilog65

sw.bb63:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %mc_allocated64 = getelementptr inbounds %struct.fw_ohci, ptr %card, i32 0, i32 29
  %42 = ptrtoint ptr %mc_allocated64 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %mc_allocated64, align 8
  br label %sw.epilog65

sw.epilog65:                                      ; preds = %sw.bb63, %sw.bb60, %out.sw.epilog65_crit_edge
  %shl66 = shl nuw i32 1, %index.0155
  %43 = ptrtoint ptr %mask.0153 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mask.0153, align 4
  %or67 = or i32 %44, %shl66
  store i32 %or67, ptr %mask.0153, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog65, %if.then56, %if.end54.cleanup_crit_edge, %if.then43
  %retval.0 = phi ptr [ %ret.0139, %if.then43 ], [ %ret.1, %sw.epilog65 ], [ %ctx.0150, %if.then56 ], [ %ctx.0150, %if.end54.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ohci_free_iso_context(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %call1 = tail call i32 @ohci_stop_iso(ptr noundef %base)
  %buffer_list.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %buffer_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_list.i, align 4
  %cmp.not22.i = icmp eq ptr %3, %buffer_list.i
  br i1 %cmp.not22.i, label %entry.context_release.exit_crit_edge, label %for.body.lr.ph.i

entry.context_release.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_release.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %context = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  %device.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %desc.023.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %desc.023.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0.i = load ptr, ptr %desc.023.i, align 16
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %buffer_bus.i = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.023.i, i32 0, i32 1
  %9 = ptrtoint ptr %buffer_bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_bus.i, align 8
  %sub.i = add i32 %10, -32
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef 4096, ptr noundef %desc.023.i, i32 noundef %sub.i, i32 noundef 0) #10
  %cmp.not.i = icmp eq ptr %tmp.0.i, %buffer_list.i
  br i1 %cmp.not.i, label %for.body.i.context_release.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.context_release.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_release.exit

context_release.exit:                             ; preds = %for.body.i.context_release.exit_crit_edge, %entry.context_release.exit_crit_edge
  %header = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 2
  %11 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %header, align 4
  %13 = ptrtoint ptr %12 to i32
  tail call void @free_pages(i32 noundef %13, i32 noundef 0) #10
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 13
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %type = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %15, label %context_release.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb17
  ]

context_release.exit.sw.epilog_crit_edge:         ; preds = %context_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %context_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  %it_context_list = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 23
  %17 = ptrtoint ptr %it_context_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %it_context_list, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %base to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 7
  %shl = shl nuw i32 1, %sub.ptr.div
  %it_context_mask = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %it_context_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %it_context_mask, align 4
  %or = or i32 %shl, %20
  store i32 %or, ptr %it_context_mask, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %context_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ir_context_list = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 27
  %21 = ptrtoint ptr %ir_context_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ir_context_list, align 8
  %sub.ptr.lhs.cast9 = ptrtoint ptr %base to i32
  %sub.ptr.rhs.cast10 = ptrtoint ptr %22 to i32
  %sub.ptr.sub11 = sub i32 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %sub.ptr.div12 = ashr exact i32 %sub.ptr.sub11, 7
  %shl13 = shl nuw i32 1, %sub.ptr.div12
  %ir_context_mask = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 26
  %23 = ptrtoint ptr %ir_context_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ir_context_mask, align 4
  %or14 = or i32 %shl13, %24
  store i32 %or14, ptr %ir_context_mask, align 4
  %channel = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 2
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel, align 4
  %sh_prom = zext i32 %26 to i64
  %shl15 = shl nuw i64 1, %sh_prom
  %ir_context_channels = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 24
  %27 = ptrtoint ptr %ir_context_channels to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ir_context_channels, align 8
  %or16 = or i64 %shl15, %28
  store i64 %or16, ptr %ir_context_channels, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %context_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ir_context_list18 = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 27
  %29 = ptrtoint ptr %ir_context_list18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ir_context_list18, align 8
  %sub.ptr.lhs.cast19 = ptrtoint ptr %base to i32
  %sub.ptr.rhs.cast20 = ptrtoint ptr %30 to i32
  %sub.ptr.sub21 = sub i32 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %sub.ptr.div22 = ashr exact i32 %sub.ptr.sub21, 7
  %shl23 = shl nuw i32 1, %sub.ptr.div22
  %ir_context_mask24 = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 26
  %31 = ptrtoint ptr %ir_context_mask24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ir_context_mask24, align 4
  %or25 = or i32 %shl23, %32
  store i32 %or25, ptr %ir_context_mask24, align 4
  %mc_channels = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 28
  %33 = ptrtoint ptr %mc_channels to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %mc_channels, align 8
  %ir_context_channels26 = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 24
  %35 = ptrtoint ptr %ir_context_channels26 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ir_context_channels26, align 8
  %or27 = or i64 %36, %34
  store i64 %or27, ptr %ir_context_channels26, align 8
  store i64 0, ptr %mc_channels, align 8
  %mc_allocated = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 29
  %37 = ptrtoint ptr %mc_allocated to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %mc_allocated, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb8, %sw.bb, %context_release.exit.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_start_iso(ptr noundef %base, i32 noundef %cycle, i32 noundef %sync, i32 noundef %tags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %last = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last, align 4
  %branch_address = getelementptr inbounds %struct.descriptor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %branch_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %branch_address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb10
    i32 1, label %if.end.sw.bb12_crit_edge
  ]

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %it_context_list = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %it_context_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %it_context_list, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %base to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 7
  %and = shl i32 %cycle, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cycle)
  %cmp4.inv = icmp slt i32 %cycle, 0
  %shl7 = shl nuw i32 1, %sub.ptr.div
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl7) #10
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %registers.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %15, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %11) #10, !srcloc !420
  %16 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %context, align 4
  %regs.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %regs.i, align 4
  %add.i = add i32 %19, 12
  %20 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %last, align 4
  %branch_address.i = getelementptr inbounds %struct.descriptor, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %branch_address.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %branch_address.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %17, i32 0, i32 1
  %24 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #10, !srcloc !420
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regs.i, align 4
  %add3.i = add i32 %27, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %29, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 -1) #10, !srcloc !420
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %regs.i, align 4
  %or.op = or i32 %and, -2147450880
  %or.i = select i1 %cmp4.inv, i32 32768, i32 %or.op
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %33 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i16.i = getelementptr i8, ptr %34, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %32) #10, !srcloc !420
  %running.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %running.i, align 4
  %36 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %registers.i.i, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb10, %if.end.sw.bb12_crit_edge
  %control.0 = phi i32 [ 1073741824, %if.end.sw.bb12_crit_edge ], [ -805306368, %sw.bb10 ]
  %ir_context_list = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 27
  %39 = ptrtoint ptr %ir_context_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ir_context_list, align 8
  %sub.ptr.lhs.cast13 = ptrtoint ptr %base to i32
  %sub.ptr.rhs.cast14 = ptrtoint ptr %40 to i32
  %sub.ptr.sub15 = sub i32 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %sub.ptr.div16 = ashr exact i32 %sub.ptr.sub15, 7
  %shl17 = shl i32 %tags, 28
  %shl18 = shl i32 %sync, 8
  %or19 = or i32 %shl17, %shl18
  %channel = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 2
  %41 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cycle)
  %cmp22 = icmp sgt i32 %cycle, -1
  %and24 = shl i32 %cycle, 12
  %shl25 = and i32 %and24, 134213632
  %or27 = or i32 %control.0, 536870912
  %control.1 = select i1 %cmp22, i32 %or27, i32 %control.0
  %or26 = select i1 %cmp22, i32 %shl25, i32 0
  %or21 = or i32 %or19, %or26
  %match.1 = or i32 %or21, %42
  %shl29 = shl nuw i32 1, %sub.ptr.div16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %shl29) #10
  %registers.i70 = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %registers.i70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %registers.i70, align 8
  %add.ptr.i71 = getelementptr i8, ptr %45, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %43) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %registers.i70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %registers.i70, align 8
  %add.ptr.i73 = getelementptr i8, ptr %47, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %43) #10, !srcloc !420
  %regs = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %regs, align 4
  %add = add i32 %49, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %50 = tail call i32 @llvm.bswap.i32(i32 %match.1) #10
  %51 = ptrtoint ptr %registers.i70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %registers.i70, align 8
  %add.ptr.i75 = getelementptr i8, ptr %52, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %50) #10, !srcloc !420
  %53 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %context, align 4
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %regs, align 4
  %add.i77 = add i32 %56, 12
  %57 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %last, align 4
  %branch_address.i79 = getelementptr inbounds %struct.descriptor, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %branch_address.i79 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %branch_address.i79, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i80 = getelementptr inbounds %struct.fw_ohci, ptr %54, i32 0, i32 1
  %61 = ptrtoint ptr %registers.i.i80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %registers.i.i80, align 8
  %add.ptr.i.i81 = getelementptr i8, ptr %62, i32 %add.i77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81, i32 %60) #10, !srcloc !420
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %regs, align 4
  %add3.i82 = add i32 %64, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %registers.i.i80 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %registers.i.i80, align 8
  %add.ptr.i14.i83 = getelementptr i8, ptr %66, i32 %add3.i82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i83, i32 -1) #10, !srcloc !420
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %regs, align 4
  %or.i84 = or i32 %control.1, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.i84) #10
  %70 = ptrtoint ptr %registers.i.i80 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %registers.i.i80, align 8
  %add.ptr.i16.i85 = getelementptr i8, ptr %71, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i85, i32 %69) #10, !srcloc !420
  %running.i86 = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 4
  %72 = ptrtoint ptr %running.i86 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %running.i86, align 4
  %73 = ptrtoint ptr %registers.i.i80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %registers.i.i80, align 8
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %conv = trunc i32 %sync to i8
  %sync33 = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 8
  %76 = ptrtoint ptr %sync33 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv, ptr %sync33, align 4
  %conv34 = trunc i32 %tags to i8
  %tags35 = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 9
  %77 = ptrtoint ptr %tags35 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv34, ptr %tags35, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb12 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_set_iso_channels(ptr nocapture noundef readonly %base, ptr nocapture noundef %channels) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %type = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  br i1 %cond, label %do.body1, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %ir_context_channels = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %ir_context_channels to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ir_context_channels, align 8
  %mc_channels = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %mc_channels to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mc_channels, align 8
  %and.demorgan = or i64 %7, %5
  %and = xor i64 %and.demorgan, -1
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %channels, align 8
  %and7 = and i64 %9, %and
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool.not = icmp eq i64 %and7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %5, ptr %channels, align 8
  br label %if.end

if.else:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i64 %9, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = trunc i64 %9 to i32
  %neg.i = xor i32 %conv.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #10
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #10, !srcloc !420
  %neg2.i = xor i32 %conv1.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %neg2.i) #10
  %15 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %16, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %14) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #10
  %18 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %19, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %17) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #10
  %21 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i16.i = getelementptr i8, ptr %22, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %20) #10, !srcloc !420
  %23 = ptrtoint ptr %mc_channels to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %9, ptr %mc_channels, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ -16, %if.then ], [ 0, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %entry.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_queue_iso(ptr noundef %base, ptr nocapture noundef readonly %packet, ptr nocapture noundef readonly %buffer, i32 noundef %payload) #2 align 64 {
entry:
  %d_bus.i77 = alloca i32, align 4
  %d_bus.i25 = alloca i32, align 4
  %d_bus.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %type = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d_bus.i) #10
  %5 = ptrtoint ptr %d_bus.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %d_bus.i, align 4, !annotation !432
  %skip.i = getelementptr inbounds %struct.fw_iso_packet, ptr %packet, i32 0, i32 1
  %6 = ptrtoint ptr %skip.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %skip.i, align 2
  %7 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  %..i = select i1 %tobool.not.i, i32 2, i32 1
  %bf.clear2.i = and i16 %bf.load.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear2.i)
  %cmp.not.i = icmp ne i16 %bf.clear2.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %z.1.i = add nuw nsw i32 %..i, %inc.i
  %8 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %packet, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp9.not.i = icmp eq i16 %9, 0
  %conv.i = zext i16 %9 to i32
  %add.i = add i32 %payload, 4095
  %add6.i = add i32 %add.i, %conv.i
  %shr.i = lshr i32 %add6.i, 12
  %shr12.i = lshr i32 %payload, 12
  %sub.i = sub nsw i32 %shr.i, %shr12.i
  %payload_z.0.i = select i1 %cmp9.not.i, i32 0, i32 %sub.i
  %add15.i = add nsw i32 %payload_z.0.i, %z.1.i
  %10 = add nuw nsw i16 %bf.clear2.i, 15
  %11 = lshr i16 %10, 4
  %div.i = zext i16 %11 to i32
  %add22.i = add nsw i32 %add15.i, %div.i
  %call.i = call fastcc ptr @context_get_descriptors(ptr noundef %context, i32 noundef %add22.i, ptr noundef nonnull %d_bus.i) #10
  %cmp23.i = icmp eq ptr %call.i, null
  br i1 %cmp23.i, label %sw.bb.queue_iso_transmit.exit_crit_edge, label %if.end26.i

sw.bb.queue_iso_transmit.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_iso_transmit.exit

if.end26.i:                                       ; preds = %sw.bb
  %12 = ptrtoint ptr %skip.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load28.i = load i16, ptr %skip.i, align 2
  %13 = and i16 %bf.load28.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool32.not.i = icmp eq i16 %13, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %if.end26.i.if.end63.i_crit_edge

if.end26.i.if.end63.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then33.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %control.i = getelementptr inbounds %struct.descriptor, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %control.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %control.i, align 2
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2048, ptr %call.i, align 16
  %16 = ptrtoint ptr %d_bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_bus.i, align 4
  %or.i = or i32 %17, %add15.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %branch_address.i = getelementptr inbounds %struct.descriptor, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %branch_address.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %branch_address.i, align 8
  %arrayidx36.i = getelementptr %struct.descriptor, ptr %call.i, i32 1
  %20 = ptrtoint ptr %skip.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load37.i = load i16, ptr %skip.i, align 2
  %bf.lshr38.i = lshr i16 %bf.load37.i, 8
  %bf.clear39.i = and i16 %bf.lshr38.i, 15
  %21 = shl i16 %bf.load37.i, 2
  %22 = and i16 %21, -16384
  %or46211.i = or i16 %bf.clear39.i, %22
  %23 = or i16 %or46211.i, 160
  %or47.i = zext i16 %23 to i32
  %channel.i = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 2
  %24 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel.i, align 4
  %shl48.i = shl i32 %25, 8
  %speed.i = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 3
  %26 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed.i, align 4
  %shl51.i = shl i32 %27, 16
  %or49.i = or i32 %shl51.i, %shl48.i
  %or52.i = or i32 %or49.i, %or47.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %or52.i) #10
  %29 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx36.i, align 4
  %30 = ptrtoint ptr %skip.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load55.i = load i16, ptr %skip.i, align 2
  %bf.clear56.i = and i16 %bf.load55.i, 255
  %bf.cast57.i = zext i16 %bf.clear56.i to i32
  %31 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %packet, align 4
  %conv59.i = zext i16 %32 to i32
  %add60.i = add nuw nsw i32 %bf.cast57.i, %conv59.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %add60.i) #10
  %34 = lshr i32 %33, 16
  %arrayidx62.i = getelementptr %struct.descriptor, ptr %call.i, i32 1, i32 2
  %35 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx62.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then33.i, %if.end26.i.if.end63.i_crit_edge
  %36 = ptrtoint ptr %skip.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load65.i = load i16, ptr %skip.i, align 2
  %bf.clear66.i = and i16 %bf.load65.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear66.i)
  %cmp68.not.i = icmp eq i16 %bf.clear66.i, 0
  br i1 %cmp68.not.i, label %if.end63.i.if.end86.i_crit_edge, label %if.then70.i

if.end63.i.if.end86.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

if.then70.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = shl nuw i16 %bf.clear66.i, 8
  %arrayidx76.i = getelementptr %struct.descriptor, ptr %call.i, i32 2
  %38 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %arrayidx76.i, align 16
  %39 = ptrtoint ptr %d_bus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %d_bus.i, align 4
  %mul.i = shl nsw i32 %add15.i, 4
  %add78.i = add i32 %40, %mul.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %add78.i) #10
  %data_address.i = getelementptr %struct.descriptor, ptr %call.i, i32 2, i32 2
  %42 = ptrtoint ptr %data_address.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %data_address.i, align 4
  %arrayidx80.i = getelementptr %struct.descriptor, ptr %call.i, i32 %add15.i
  %header81.i = getelementptr inbounds %struct.fw_iso_packet, ptr %packet, i32 0, i32 2
  %43 = ptrtoint ptr %skip.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load83.i = load i16, ptr %skip.i, align 2
  %bf.clear84.i = and i16 %bf.load83.i, 255
  %bf.cast85.i = zext i16 %bf.clear84.i to i32
  %44 = call ptr @memcpy(ptr %arrayidx80.i, ptr %header81.i, i32 %bf.cast85.i)
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then70.i, %if.end63.i.if.end86.i_crit_edge
  %add.ptr.i = getelementptr %struct.descriptor, ptr %call.i, i32 %add15.i
  %add.ptr87.i = getelementptr %struct.descriptor, ptr %call.i, i32 %z.1.i
  %45 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %packet, align 4
  %conv89.i = zext i16 %46 to i32
  %add90.i = add i32 %conv89.i, %payload
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload_z.0.i)
  %cmp91215.not.i = icmp eq i32 %payload_z.0.i, 0
  br i1 %cmp91215.not.i, label %if.end86.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end86.i.for.end.i_crit_edge:                   ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end86.i
  %pages.i = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0217.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc109.i, %for.body.i.for.body.i_crit_edge ]
  %payload_index.0216.i = phi i32 [ %payload, %for.body.lr.ph.i ], [ %48, %for.body.i.for.body.i_crit_edge ]
  %shr93.i = lshr i32 %payload_index.0216.i, 12
  %and94.i = and i32 %payload_index.0216.i, 4095
  %47 = add i32 %payload_index.0216.i, 4096
  %shl96.i = and i32 %47, -4096
  %48 = tail call i32 @llvm.umin.i32(i32 %shl96.i, i32 %add90.i) #10
  %sub99.i = sub i32 %48, %payload_index.0216.i
  %conv100.i = trunc i32 %sub99.i to i16
  %49 = tail call i16 @llvm.bswap.i16(i16 %conv100.i) #10
  %arrayidx101.i = getelementptr %struct.descriptor, ptr %add.ptr87.i, i32 %i.0217.i
  %50 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %arrayidx101.i, align 16
  %51 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pages.i, align 4
  %arrayidx103.i = getelementptr ptr, ptr %52, i32 %shr93.i
  %53 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx103.i, align 4
  %private.i = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1, i32 0, i32 3
  %55 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %private.i, align 4
  %add104.i = add i32 %56, %and94.i
  %57 = tail call i32 @llvm.bswap.i32(i32 %add104.i) #10
  %data_address106.i = getelementptr inbounds %struct.descriptor, ptr %arrayidx101.i, i32 0, i32 2
  %58 = ptrtoint ptr %data_address106.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %data_address106.i, align 4
  %59 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %context, align 4
  %device.i = getelementptr inbounds %struct.fw_card, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %62, i32 noundef %add104.i, i32 noundef %sub99.i, i32 noundef 1) #10
  %inc109.i = add nuw i32 %i.0217.i, 1
  %exitcond.not.i = icmp eq i32 %inc109.i, %payload_z.0.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end86.i.for.end.i_crit_edge
  %63 = ptrtoint ptr %skip.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load110.i = load i16, ptr %skip.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load110.i)
  %tobool113.not.i = icmp sgt i16 %bf.load110.i, -1
  %.213.i = select i1 %tobool113.not.i, i16 6156, i16 6204
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add15.i)
  %cmp117.i = icmp eq i32 %add15.i, 2
  %add.ptr122.i = getelementptr %struct.descriptor, ptr %add.ptr.i, i32 -1
  %cond124.i = select i1 %cmp117.i, ptr %call.i, ptr %add.ptr122.i
  %64 = tail call i16 @llvm.bswap.i16(i16 %.213.i) #10
  %control128.i = getelementptr inbounds %struct.descriptor, ptr %cond124.i, i32 0, i32 1
  %65 = ptrtoint ptr %control128.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %control128.i, align 2
  %or130212.i = or i16 %64, %66
  store i16 %or130212.i, ptr %control128.i, align 2
  %buffer_tail.i.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 7
  %67 = ptrtoint ptr %buffer_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buffer_tail.i.i, align 4
  %buffer_bus.i.i = getelementptr inbounds %struct.descriptor_buffer, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %buffer_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %buffer_bus.i.i, align 8
  %buffer.i.i = getelementptr inbounds %struct.descriptor_buffer, ptr %68, i32 0, i32 5
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %buffer.i.i to i32
  %sub.ptr.sub.i.i = add i32 %70, %sub.ptr.lhs.cast.i.i
  %add.i214.i = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  %mul2.i.i = shl nsw i32 %add22.i, 4
  %used.i.i = getelementptr inbounds %struct.descriptor_buffer, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used.i.i, align 16
  %add3.i.i = add i32 %72, %mul2.i.i
  store i32 %add3.i.i, ptr %used.i.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !436
  tail call void @arm_heavy_mb() #10
  %prev.i.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 9
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i, align 4
  %prev_z.i.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 10
  %75 = ptrtoint ptr %prev_z.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %prev_z.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp.i.i.i = icmp eq i32 %76, 2
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %for.end.i.if.else.i.i.i_crit_edge

for.end.i.if.else.i.i.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.end.i
  %control.i.i.i = getelementptr inbounds %struct.descriptor, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %control.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %control.i.i.i, align 2
  %79 = and i16 %78, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %79)
  %cmp4.i.i.i = icmp eq i16 %79, 3072
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i.find_branch_descriptor.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i

land.lhs.true.i.i.i.find_branch_descriptor.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_branch_descriptor.exit.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, %for.end.i.if.else.i.i.i_crit_edge
  %add.ptr.i.i.i = getelementptr %struct.descriptor, ptr %74, i32 %76
  %add.ptr6.i.i.i = getelementptr %struct.descriptor, ptr %add.ptr.i.i.i, i32 -1
  br label %find_branch_descriptor.exit.i.i

find_branch_descriptor.exit.i.i:                  ; preds = %if.else.i.i.i, %land.lhs.true.i.i.i.find_branch_descriptor.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr6.i.i.i, %if.else.i.i.i ], [ %74, %land.lhs.true.i.i.i.find_branch_descriptor.exit.i.i_crit_edge ]
  %or.i.i = or i32 %add.i214.i, %add15.i
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %branch_address.i.i = getelementptr inbounds %struct.descriptor, ptr %retval.0.i.i.i, i32 0, i32 3
  %81 = ptrtoint ptr %branch_address.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %branch_address.i.i, align 8
  %82 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %context, align 4
  %quirks.i.i = getelementptr inbounds %struct.fw_ohci, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %quirks.i.i, align 8
  %and.i.i = and i32 %85, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %find_branch_descriptor.exit.i.i.context_append.exit.i_crit_edge, label %land.lhs.true.i.i, !prof !431

find_branch_descriptor.exit.i.i.context_append.exit.i_crit_edge: ; preds = %find_branch_descriptor.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i

land.lhs.true.i.i:                                ; preds = %find_branch_descriptor.exit.i.i
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %retval.0.i.i.i, %87
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.context_append.exit.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.context_append.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %control.i.i = getelementptr inbounds %struct.descriptor, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %control.i.i, align 2
  %90 = and i16 %89, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %90)
  %cmp10.i.i = icmp eq i16 %90, 32
  br i1 %cmp10.i.i, label %if.then.i.i, label %land.lhs.true7.i.i.context_append.exit.i_crit_edge

land.lhs.true7.i.i.context_append.exit.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %branch_address14.i.i = getelementptr inbounds %struct.descriptor, ptr %87, i32 0, i32 3
  %91 = ptrtoint ptr %branch_address14.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %80, ptr %branch_address14.i.i, align 8
  br label %context_append.exit.i

context_append.exit.i:                            ; preds = %if.then.i.i, %land.lhs.true7.i.i.context_append.exit.i_crit_edge, %land.lhs.true.i.i.context_append.exit.i_crit_edge, %find_branch_descriptor.exit.i.i.context_append.exit.i_crit_edge
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i, ptr %prev.i.i, align 4
  %93 = ptrtoint ptr %prev_z.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add15.i, ptr %prev_z.i.i, align 4
  br label %queue_iso_transmit.exit

queue_iso_transmit.exit:                          ; preds = %context_append.exit.i, %sw.bb.queue_iso_transmit.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %context_append.exit.i ], [ -12, %sw.bb.queue_iso_transmit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_bus.i) #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %94 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %context, align 4
  %device1.i = getelementptr inbounds %struct.fw_card, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d_bus.i25) #10
  %98 = ptrtoint ptr %d_bus.i25 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %d_bus.i25, align 4, !annotation !432
  %header_length.i = getelementptr inbounds %struct.fw_iso_packet, ptr %packet, i32 0, i32 1
  %99 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load.i27 = load i16, ptr %header_length.i, align 2
  %bf.clear.i = and i16 %bf.load.i27, 255
  %bf.cast.i = zext i16 %bf.clear.i to i32
  %header_size2.i = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 5
  %100 = ptrtoint ptr %header_size2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %header_size2.i, align 4
  %div.i28 = udiv i32 %bf.cast.i, %101
  %102 = tail call i32 @llvm.umax.i32(i32 %101, i32 8) #10
  %sub.i29 = add i32 %102, 15
  %div5143.i = lshr i32 %sub.i29, 4
  %103 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %packet, align 4
  %div6.rhs.trunc.i = trunc i32 %div.i28 to i16
  %div6148.i = udiv i16 %104, %div6.rhs.trunc.i
  %div6.zext.i = zext i16 %div6148.i to i32
  %add9.i = add nuw nsw i32 %div6.zext.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %bf.cast.i)
  %cmp7157.not.i = icmp ugt i32 %101, %bf.cast.i
  br i1 %cmp7157.not.i, label %sw.bb7.queue_iso_packet_per_buffer.exit_crit_edge, label %for.body.lr.ph.i35

sw.bb7.queue_iso_packet_per_buffer.exit_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_iso_packet_per_buffer.exit

for.body.lr.ph.i35:                               ; preds = %sw.bb7
  %and.i = and i32 %payload, 4095
  %shr.i30 = lshr i32 %payload, 12
  %conv28.i = trunc i32 %102 to i16
  %105 = tail call i16 @llvm.bswap.i16(i16 %conv28.i) #10
  %pages.i31 = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  %sub63.i = add nsw i32 %div.i28, -1
  %buffer_tail.i.i32 = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 7
  %prev.i.i33 = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 9
  %prev_z.i.i34 = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 10
  %smax.i = tail call i32 @llvm.smax.i32(i32 %div.i28, i32 1) #10
  br label %for.body.i38

for.body.i38:                                     ; preds = %context_append.exit.i75.for.body.i38_crit_edge, %for.body.lr.ph.i35
  %offset.0160.i = phi i32 [ %and.i, %for.body.lr.ph.i35 ], [ %offset.1.lcssa.i, %context_append.exit.i75.for.body.i38_crit_edge ]
  %page.0159.i = phi i32 [ %shr.i30, %for.body.lr.ph.i35 ], [ %page.1.lcssa.i, %context_append.exit.i75.for.body.i38_crit_edge ]
  %i.0158.i = phi i32 [ 0, %for.body.lr.ph.i35 ], [ %inc74.i, %context_append.exit.i75.for.body.i38_crit_edge ]
  %sub11.i = add i32 %add9.i, %offset.0160.i
  %div12144.i = lshr i32 %sub11.i, 12
  %add13.i = add nuw nsw i32 %div12144.i, 1
  %add15.i36 = add nuw nsw i32 %add13.i, %div5143.i
  %call.i37 = call fastcc ptr @context_get_descriptors(ptr noundef %context, i32 noundef %add15.i36, ptr noundef nonnull %d_bus.i25) #10
  %cmp16.i = icmp eq ptr %call.i37, null
  br i1 %cmp16.i, label %for.body.i38.queue_iso_packet_per_buffer.exit_crit_edge, label %if.end.i

for.body.i38.queue_iso_packet_per_buffer.exit_crit_edge: ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_iso_packet_per_buffer.exit

if.end.i:                                         ; preds = %for.body.i38
  %control.i39 = getelementptr inbounds %struct.descriptor, ptr %call.i37, i32 0, i32 1
  %106 = ptrtoint ptr %control.i39 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 40, ptr %control.i39, align 2
  %107 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load18.i = load i16, ptr %header_length.i, align 2
  %108 = and i16 %bf.load18.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool.not.i40 = icmp ne i16 %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0158.i)
  %cmp21.i = icmp eq i32 %i.0158.i, 0
  %or.cond.i = select i1 %tobool.not.i40, i1 %cmp21.i, i1 false
  %spec.store.select.i = select i1 %or.cond.i, i16 808, i16 40
  %109 = ptrtoint ptr %control.i39 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %spec.store.select.i, ptr %control.i39, align 2
  %110 = ptrtoint ptr %call.i37 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %105, ptr %call.i37, align 16
  %res_count.i = getelementptr inbounds %struct.descriptor, ptr %call.i37, i32 0, i32 4
  %111 = ptrtoint ptr %res_count.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %105, ptr %res_count.i, align 4
  %transfer_status.i = getelementptr inbounds %struct.descriptor, ptr %call.i37, i32 0, i32 5
  %112 = ptrtoint ptr %transfer_status.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %transfer_status.i, align 2
  %113 = ptrtoint ptr %d_bus.i25 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %d_bus.i25, align 4
  %mul.i41 = shl nuw nsw i32 %add13.i, 4
  %add30.i = add i32 %114, %mul.i41
  %115 = tail call i32 @llvm.bswap.i32(i32 %add30.i) #10
  %data_address.i42 = getelementptr inbounds %struct.descriptor, ptr %call.i37, i32 0, i32 2
  %116 = ptrtoint ptr %data_address.i42 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %data_address.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub11.i)
  %cmp32.not149.i = icmp ult i32 %sub11.i, 4096
  br i1 %cmp32.not149.i, label %if.end.i.for.end.i54_crit_edge, label %for.body34.preheader.i

if.end.i.for.end.i54_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i54

for.body34.preheader.i:                           ; preds = %if.end.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %add13.i, i32 2) #10
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %for.body34.preheader.i
  %offset.1154.i = phi i32 [ %and50.i, %for.body34.i.for.body34.i_crit_edge ], [ %offset.0160.i, %for.body34.preheader.i ]
  %page.1153.i = phi i32 [ %page.2.i, %for.body34.i.for.body34.i_crit_edge ], [ %page.0159.i, %for.body34.preheader.i ]
  %j.0152.i = phi i32 [ %inc56.i, %for.body34.i.for.body34.i_crit_edge ], [ 1, %for.body34.preheader.i ]
  %rest.0151.i = phi i32 [ %sub51.i, %for.body34.i.for.body34.i_crit_edge ], [ %div6.zext.i, %for.body34.preheader.i ]
  %pd.0150.i = phi ptr [ %incdec.ptr.i, %for.body34.i.for.body34.i_crit_edge ], [ %call.i37, %for.body34.preheader.i ]
  %incdec.ptr.i = getelementptr %struct.descriptor, ptr %pd.0150.i, i32 1
  %control35.i = getelementptr %struct.descriptor, ptr %pd.0150.i, i32 1, i32 1
  %117 = ptrtoint ptr %control35.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 40, ptr %control35.i, align 2
  %add36.i = add i32 %rest.0151.i, %offset.1154.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add36.i)
  %cmp37.i = icmp ult i32 %add36.i, 4096
  %sub40.i = sub i32 4096, %offset.1154.i
  %length.0.i = select i1 %cmp37.i, i32 %rest.0151.i, i32 %sub40.i
  %conv42.i = trunc i32 %length.0.i to i16
  %118 = tail call i16 @llvm.bswap.i16(i16 %conv42.i) #10
  %119 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %incdec.ptr.i, align 16
  %res_count45.i = getelementptr %struct.descriptor, ptr %pd.0150.i, i32 1, i32 4
  %120 = ptrtoint ptr %res_count45.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %118, ptr %res_count45.i, align 4
  %transfer_status46.i = getelementptr %struct.descriptor, ptr %pd.0150.i, i32 1, i32 5
  %121 = ptrtoint ptr %transfer_status46.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %transfer_status46.i, align 2
  %122 = ptrtoint ptr %pages.i31 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pages.i31, align 4
  %arrayidx.i = getelementptr ptr, ptr %123, i32 %page.1153.i
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i, align 4
  %private.i43 = getelementptr inbounds %struct.page, ptr %125, i32 0, i32 1, i32 0, i32 3
  %126 = ptrtoint ptr %private.i43 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %private.i43, align 4
  %add47.i = add i32 %127, %offset.1154.i
  %128 = tail call i32 @llvm.bswap.i32(i32 %add47.i) #10
  %data_address48.i = getelementptr %struct.descriptor, ptr %pd.0150.i, i32 1, i32 2
  %129 = ptrtoint ptr %data_address48.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %data_address48.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %97, i32 noundef %add47.i, i32 noundef %length.0.i, i32 noundef 2) #10
  %add49.i = add i32 %length.0.i, %offset.1154.i
  %and50.i = and i32 %add49.i, 4095
  %sub51.i = sub i32 %rest.0151.i, %length.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %cmp52.i = icmp eq i32 %and50.i, 0
  %inc.i44 = zext i1 %cmp52.i to i32
  %page.2.i = add i32 %page.1153.i, %inc.i44
  %inc56.i = add nuw nsw i32 %j.0152.i, 1
  %exitcond.i = icmp eq i32 %inc56.i, %umax.i
  br i1 %exitcond.i, label %for.body34.i.for.end.i54_crit_edge, label %for.body34.i.for.body34.i_crit_edge

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34.i

for.body34.i.for.end.i54_crit_edge:               ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i54

for.end.i54:                                      ; preds = %for.body34.i.for.end.i54_crit_edge, %if.end.i.for.end.i54_crit_edge
  %pd.0.lcssa.i = phi ptr [ %call.i37, %if.end.i.for.end.i54_crit_edge ], [ %incdec.ptr.i, %for.body34.i.for.end.i54_crit_edge ]
  %page.1.lcssa.i = phi i32 [ %page.0159.i, %if.end.i.for.end.i54_crit_edge ], [ %page.2.i, %for.body34.i.for.end.i54_crit_edge ]
  %offset.1.lcssa.i = phi i32 [ %offset.0160.i, %if.end.i.for.end.i54_crit_edge ], [ %and50.i, %for.body34.i.for.end.i54_crit_edge ]
  %control57.i = getelementptr inbounds %struct.descriptor, ptr %pd.0.lcssa.i, i32 0, i32 1
  %130 = ptrtoint ptr %control57.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 3128, ptr %control57.i, align 2
  %131 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %bf.load58.i = load i16, ptr %header_length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load58.i)
  %tobool61.not.i = icmp slt i16 %bf.load58.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0158.i, i32 %sub63.i)
  %cmp64.i = icmp eq i32 %i.0158.i, %sub63.i
  %or.cond145.i = select i1 %tobool61.not.i, i1 %cmp64.i, i1 false
  %spec.store.select146.i = select i1 %or.cond145.i, i16 15416, i16 3128
  %132 = ptrtoint ptr %control57.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %spec.store.select146.i, ptr %control57.i, align 2
  %133 = ptrtoint ptr %buffer_tail.i.i32 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %buffer_tail.i.i32, align 4
  %buffer_bus.i.i45 = getelementptr inbounds %struct.descriptor_buffer, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %buffer_bus.i.i45 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %buffer_bus.i.i45, align 8
  %buffer.i.i46 = getelementptr inbounds %struct.descriptor_buffer, ptr %134, i32 0, i32 5
  %sub.ptr.lhs.cast.i.i47 = ptrtoint ptr %call.i37 to i32
  %sub.ptr.rhs.cast.i.i48 = ptrtoint ptr %buffer.i.i46 to i32
  %sub.ptr.sub.i.i49 = add i32 %136, %sub.ptr.lhs.cast.i.i47
  %add.i147.i = sub i32 %sub.ptr.sub.i.i49, %sub.ptr.rhs.cast.i.i48
  %mul2.i.i50 = shl i32 %add15.i36, 4
  %used.i.i51 = getelementptr inbounds %struct.descriptor_buffer, ptr %134, i32 0, i32 3
  %137 = ptrtoint ptr %used.i.i51 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %used.i.i51, align 16
  %add3.i.i52 = add i32 %138, %mul2.i.i50
  store i32 %add3.i.i52, ptr %used.i.i51, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !436
  tail call void @arm_heavy_mb() #10
  %139 = ptrtoint ptr %prev.i.i33 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i.i33, align 4
  %141 = ptrtoint ptr %prev_z.i.i34 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %prev_z.i.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %142)
  %cmp.i.i.i53 = icmp eq i32 %142, 2
  br i1 %cmp.i.i.i53, label %land.lhs.true.i.i.i57, label %for.end.i54.if.else.i.i.i60_crit_edge

for.end.i54.if.else.i.i.i60_crit_edge:            ; preds = %for.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i60

land.lhs.true.i.i.i57:                            ; preds = %for.end.i54
  %control.i.i.i55 = getelementptr inbounds %struct.descriptor, ptr %140, i32 0, i32 1
  %143 = ptrtoint ptr %control.i.i.i55 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %control.i.i.i55, align 2
  %145 = and i16 %144, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %145)
  %cmp4.i.i.i56 = icmp eq i16 %145, 3072
  br i1 %cmp4.i.i.i56, label %land.lhs.true.i.i.i57.find_branch_descriptor.exit.i.i67_crit_edge, label %land.lhs.true.i.i.i57.if.else.i.i.i60_crit_edge

land.lhs.true.i.i.i57.if.else.i.i.i60_crit_edge:  ; preds = %land.lhs.true.i.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i60

land.lhs.true.i.i.i57.find_branch_descriptor.exit.i.i67_crit_edge: ; preds = %land.lhs.true.i.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_branch_descriptor.exit.i.i67

if.else.i.i.i60:                                  ; preds = %land.lhs.true.i.i.i57.if.else.i.i.i60_crit_edge, %for.end.i54.if.else.i.i.i60_crit_edge
  %add.ptr.i.i.i58 = getelementptr %struct.descriptor, ptr %140, i32 -1
  %add.ptr6.i.i.i59 = getelementptr %struct.descriptor, ptr %add.ptr.i.i.i58, i32 %142
  br label %find_branch_descriptor.exit.i.i67

find_branch_descriptor.exit.i.i67:                ; preds = %if.else.i.i.i60, %land.lhs.true.i.i.i57.find_branch_descriptor.exit.i.i67_crit_edge
  %retval.0.i.i.i61 = phi ptr [ %add.ptr6.i.i.i59, %if.else.i.i.i60 ], [ %140, %land.lhs.true.i.i.i57.find_branch_descriptor.exit.i.i67_crit_edge ]
  %or.i.i62 = or i32 %add.i147.i, %add13.i
  %146 = tail call i32 @llvm.bswap.i32(i32 %or.i.i62) #10
  %branch_address.i.i63 = getelementptr inbounds %struct.descriptor, ptr %retval.0.i.i.i61, i32 0, i32 3
  %147 = ptrtoint ptr %branch_address.i.i63 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %branch_address.i.i63, align 8
  %148 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %context, align 4
  %quirks.i.i64 = getelementptr inbounds %struct.fw_ohci, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %quirks.i.i64 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %quirks.i.i64, align 8
  %and.i.i65 = and i32 %151, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %and.i.i65, 0
  br i1 %tobool.not.i.i66, label %find_branch_descriptor.exit.i.i67.context_append.exit.i75_crit_edge, label %land.lhs.true.i.i69, !prof !431

find_branch_descriptor.exit.i.i67.context_append.exit.i75_crit_edge: ; preds = %find_branch_descriptor.exit.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i75

land.lhs.true.i.i69:                              ; preds = %find_branch_descriptor.exit.i.i67
  %152 = ptrtoint ptr %prev.i.i33 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i33, align 4
  %cmp.not.i.i68 = icmp eq ptr %retval.0.i.i.i61, %153
  br i1 %cmp.not.i.i68, label %land.lhs.true.i.i69.context_append.exit.i75_crit_edge, label %land.lhs.true7.i.i72

land.lhs.true.i.i69.context_append.exit.i75_crit_edge: ; preds = %land.lhs.true.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i75

land.lhs.true7.i.i72:                             ; preds = %land.lhs.true.i.i69
  %control.i.i70 = getelementptr inbounds %struct.descriptor, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %control.i.i70 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %control.i.i70, align 2
  %156 = and i16 %155, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %156)
  %cmp10.i.i71 = icmp eq i16 %156, 32
  br i1 %cmp10.i.i71, label %if.then.i.i74, label %land.lhs.true7.i.i72.context_append.exit.i75_crit_edge

land.lhs.true7.i.i72.context_append.exit.i75_crit_edge: ; preds = %land.lhs.true7.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i75

if.then.i.i74:                                    ; preds = %land.lhs.true7.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  %branch_address14.i.i73 = getelementptr inbounds %struct.descriptor, ptr %153, i32 0, i32 3
  %157 = ptrtoint ptr %branch_address14.i.i73 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %146, ptr %branch_address14.i.i73, align 8
  br label %context_append.exit.i75

context_append.exit.i75:                          ; preds = %if.then.i.i74, %land.lhs.true7.i.i72.context_append.exit.i75_crit_edge, %land.lhs.true.i.i69.context_append.exit.i75_crit_edge, %find_branch_descriptor.exit.i.i67.context_append.exit.i75_crit_edge
  %158 = ptrtoint ptr %prev.i.i33 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i37, ptr %prev.i.i33, align 4
  %159 = ptrtoint ptr %prev_z.i.i34 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add13.i, ptr %prev_z.i.i34, align 4
  %inc74.i = add nuw nsw i32 %i.0158.i, 1
  %exitcond163.not.i = icmp eq i32 %inc74.i, %smax.i
  br i1 %exitcond163.not.i, label %context_append.exit.i75.queue_iso_packet_per_buffer.exit_crit_edge, label %context_append.exit.i75.for.body.i38_crit_edge

context_append.exit.i75.for.body.i38_crit_edge:   ; preds = %context_append.exit.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i38

context_append.exit.i75.queue_iso_packet_per_buffer.exit_crit_edge: ; preds = %context_append.exit.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_iso_packet_per_buffer.exit

queue_iso_packet_per_buffer.exit:                 ; preds = %context_append.exit.i75.queue_iso_packet_per_buffer.exit_crit_edge, %for.body.i38.queue_iso_packet_per_buffer.exit_crit_edge, %sw.bb7.queue_iso_packet_per_buffer.exit_crit_edge
  %retval.0.i76 = phi i32 [ 0, %sw.bb7.queue_iso_packet_per_buffer.exit_crit_edge ], [ -12, %for.body.i38.queue_iso_packet_per_buffer.exit_crit_edge ], [ 0, %context_append.exit.i75.queue_iso_packet_per_buffer.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_bus.i25) #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d_bus.i77) #10
  %and.i78 = and i32 %payload, 4095
  %160 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %packet, align 4
  %conv.i79 = zext i16 %161 to i32
  %add.i80 = add nuw nsw i32 %and.i78, 4095
  %sub.i81 = add nuw nsw i32 %add.i80, %conv.i79
  %div113.i = lshr i32 %sub.i81, 12
  %and2.i = and i32 %payload, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i82 = icmp eq i32 %and2.i, 0
  %and3.i = and i32 %conv.i79, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i83 = select i1 %tobool.not.i82, i1 %tobool4.not.i, i1 false
  br i1 %or.cond.i83, label %lor.rhs.i, label %sw.bb9.do.end.i_crit_edge

sw.bb9.do.end.i_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.rhs.i:                                        ; preds = %sw.bb9
  %shr.i84 = lshr i32 %payload, 12
  %add5.i = add nuw nsw i32 %div113.i, %shr.i84
  %page_count.i = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 2
  %162 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %page_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %163)
  %cmp.i = icmp sgt i32 %add5.i, %163
  br i1 %cmp.i, label %lor.rhs.i.do.end.i_crit_edge, label %for.cond.preheader.i, !prof !434

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.cond.preheader.i:                             ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i81)
  %cmp29117.not.i = icmp ult i32 %sub.i81, 4096
  br i1 %cmp29117.not.i, label %for.cond.preheader.i.queue_iso_buffer_fill.exit_crit_edge, label %for.body.lr.ph.i92

for.cond.preheader.i.queue_iso_buffer_fill.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_iso_buffer_fill.exit

for.body.lr.ph.i92:                               ; preds = %for.cond.preheader.i
  %skip.i86 = getelementptr inbounds %struct.fw_iso_packet, ptr %packet, i32 0, i32 1
  %sub48.i = add nsw i32 %div113.i, -1
  %pages.i87 = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  %buffer_tail.i.i88 = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 7
  %prev.i.i89 = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 9
  %prev_z.i.i90 = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 10
  %umax.i91 = tail call i32 @llvm.umax.i32(i32 %div113.i, i32 1) #10
  br label %for.body.i94

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %sw.bb9.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3389, i32 noundef 9, ptr noundef null) #10
  br label %queue_iso_buffer_fill.exit

for.body.i94:                                     ; preds = %context_append.exit.i135.for.body.i94_crit_edge, %for.body.lr.ph.i92
  %i.0121.i = phi i32 [ 0, %for.body.lr.ph.i92 ], [ %inc69.i, %context_append.exit.i135.for.body.i94_crit_edge ]
  %rest.0120.i = phi i32 [ %conv.i79, %for.body.lr.ph.i92 ], [ %sub67.i, %context_append.exit.i135.for.body.i94_crit_edge ]
  %offset.0119.i = phi i32 [ %and.i78, %for.body.lr.ph.i92 ], [ 0, %context_append.exit.i135.for.body.i94_crit_edge ]
  %page.0118.i = phi i32 [ %shr.i84, %for.body.lr.ph.i92 ], [ %inc.i105, %context_append.exit.i135.for.body.i94_crit_edge ]
  %call.i93 = call fastcc ptr @context_get_descriptors(ptr noundef %context, i32 noundef 1, ptr noundef nonnull %d_bus.i77) #10
  %cmp31.i = icmp eq ptr %call.i93, null
  br i1 %cmp31.i, label %for.body.i94.queue_iso_buffer_fill.exit_crit_edge, label %if.end34.i

for.body.i94.queue_iso_buffer_fill.exit_crit_edge: ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_iso_buffer_fill.exit

if.end34.i:                                       ; preds = %for.body.i94
  %control.i95 = getelementptr inbounds %struct.descriptor, ptr %call.i93, i32 0, i32 1
  %164 = ptrtoint ptr %control.i95 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 3104, ptr %control.i95, align 2
  %165 = ptrtoint ptr %skip.i86 to i32
  call void @__asan_load2_noabort(i32 %165)
  %bf.load.i96 = load i16, ptr %skip.i86, align 2
  %166 = and i16 %bf.load.i96, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool35.not.i = icmp ne i16 %166, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0121.i)
  %cmp36.i = icmp eq i32 %i.0121.i, 0
  %or.cond114.i = select i1 %tobool35.not.i, i1 %cmp36.i, i1 false
  %spec.store.select.i97 = select i1 %or.cond114.i, i16 3872, i16 3104
  %167 = ptrtoint ptr %control.i95 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %spec.store.select.i97, ptr %control.i95, align 2
  %168 = ptrtoint ptr %skip.i86 to i32
  call void @__asan_load2_noabort(i32 %168)
  %bf.load43.i = load i16, ptr %skip.i86, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load43.i)
  %tobool46.not.i = icmp slt i16 %bf.load43.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0121.i, i32 %sub48.i)
  %cmp49.i = icmp eq i32 %i.0121.i, %sub48.i
  %or.cond115.i = select i1 %tobool46.not.i, i1 %cmp49.i, i1 false
  br i1 %or.cond115.i, label %if.then51.i, label %if.end34.i.if.end56.i_crit_edge

if.end34.i.if.end56.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

if.then51.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %169 = or i16 %spec.store.select.i97, 12288
  %170 = ptrtoint ptr %control.i95 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %control.i95, align 2
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then51.i, %if.end34.i.if.end56.i_crit_edge
  %add57.i = add i32 %offset.0119.i, %rest.0120.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add57.i)
  %cmp58.i = icmp ult i32 %add57.i, 4096
  %sub61.i = sub nuw nsw i32 4096, %offset.0119.i
  %length.0.i98 = select i1 %cmp58.i, i32 %rest.0120.i, i32 %sub61.i
  %conv63.i = trunc i32 %length.0.i98 to i16
  %171 = tail call i16 @llvm.bswap.i16(i16 %conv63.i) #10
  %172 = ptrtoint ptr %call.i93 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %call.i93, align 16
  %res_count.i99 = getelementptr inbounds %struct.descriptor, ptr %call.i93, i32 0, i32 4
  %173 = ptrtoint ptr %res_count.i99 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %171, ptr %res_count.i99, align 4
  %transfer_status.i100 = getelementptr inbounds %struct.descriptor, ptr %call.i93, i32 0, i32 5
  %174 = ptrtoint ptr %transfer_status.i100 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 0, ptr %transfer_status.i100, align 2
  %175 = ptrtoint ptr %pages.i87 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pages.i87, align 4
  %arrayidx.i101 = getelementptr ptr, ptr %176, i32 %page.0118.i
  %177 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.i101, align 4
  %private.i102 = getelementptr inbounds %struct.page, ptr %178, i32 0, i32 1, i32 0, i32 3
  %179 = ptrtoint ptr %private.i102 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %private.i102, align 4
  %add65.i = add i32 %180, %offset.0119.i
  %181 = tail call i32 @llvm.bswap.i32(i32 %add65.i) #10
  %data_address.i103 = getelementptr inbounds %struct.descriptor, ptr %call.i93, i32 0, i32 2
  %182 = ptrtoint ptr %data_address.i103 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %data_address.i103, align 4
  %183 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %context, align 4
  %device.i104 = getelementptr inbounds %struct.fw_card, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %device.i104 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %device.i104, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %186, i32 noundef %add65.i, i32 noundef %length.0.i98, i32 noundef 2) #10
  %sub67.i = sub i32 %rest.0120.i, %length.0.i98
  %inc.i105 = add nuw nsw i32 %page.0118.i, 1
  %187 = ptrtoint ptr %buffer_tail.i.i88 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %buffer_tail.i.i88, align 4
  %buffer_bus.i.i106 = getelementptr inbounds %struct.descriptor_buffer, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %buffer_bus.i.i106 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %buffer_bus.i.i106, align 8
  %buffer.i.i107 = getelementptr inbounds %struct.descriptor_buffer, ptr %188, i32 0, i32 5
  %sub.ptr.lhs.cast.i.i108 = ptrtoint ptr %call.i93 to i32
  %sub.ptr.rhs.cast.i.i109 = ptrtoint ptr %buffer.i.i107 to i32
  %sub.ptr.sub.i.i110 = add i32 %190, %sub.ptr.lhs.cast.i.i108
  %add.i116.i = sub i32 %sub.ptr.sub.i.i110, %sub.ptr.rhs.cast.i.i109
  %used.i.i111 = getelementptr inbounds %struct.descriptor_buffer, ptr %188, i32 0, i32 3
  %191 = ptrtoint ptr %used.i.i111 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %used.i.i111, align 16
  %add3.i.i112 = add i32 %192, 16
  store i32 %add3.i.i112, ptr %used.i.i111, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !436
  tail call void @arm_heavy_mb() #10
  %193 = ptrtoint ptr %prev.i.i89 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %prev.i.i89, align 4
  %195 = ptrtoint ptr %prev_z.i.i90 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %prev_z.i.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %196)
  %cmp.i.i.i113 = icmp eq i32 %196, 2
  br i1 %cmp.i.i.i113, label %land.lhs.true.i.i.i116, label %if.end56.i.if.else.i.i.i119_crit_edge

if.end56.i.if.else.i.i.i119_crit_edge:            ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i119

land.lhs.true.i.i.i116:                           ; preds = %if.end56.i
  %control.i.i.i114 = getelementptr inbounds %struct.descriptor, ptr %194, i32 0, i32 1
  %197 = ptrtoint ptr %control.i.i.i114 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %control.i.i.i114, align 2
  %199 = and i16 %198, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %199)
  %cmp4.i.i.i115 = icmp eq i16 %199, 3072
  br i1 %cmp4.i.i.i115, label %land.lhs.true.i.i.i116.find_branch_descriptor.exit.i.i126_crit_edge, label %land.lhs.true.i.i.i116.if.else.i.i.i119_crit_edge

land.lhs.true.i.i.i116.if.else.i.i.i119_crit_edge: ; preds = %land.lhs.true.i.i.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i119

land.lhs.true.i.i.i116.find_branch_descriptor.exit.i.i126_crit_edge: ; preds = %land.lhs.true.i.i.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_branch_descriptor.exit.i.i126

if.else.i.i.i119:                                 ; preds = %land.lhs.true.i.i.i116.if.else.i.i.i119_crit_edge, %if.end56.i.if.else.i.i.i119_crit_edge
  %add.ptr.i.i.i117 = getelementptr %struct.descriptor, ptr %194, i32 -1
  %add.ptr6.i.i.i118 = getelementptr %struct.descriptor, ptr %add.ptr.i.i.i117, i32 %196
  br label %find_branch_descriptor.exit.i.i126

find_branch_descriptor.exit.i.i126:               ; preds = %if.else.i.i.i119, %land.lhs.true.i.i.i116.find_branch_descriptor.exit.i.i126_crit_edge
  %retval.0.i.i.i120 = phi ptr [ %add.ptr6.i.i.i118, %if.else.i.i.i119 ], [ %194, %land.lhs.true.i.i.i116.find_branch_descriptor.exit.i.i126_crit_edge ]
  %or.i.i121 = or i32 %add.i116.i, 1
  %200 = tail call i32 @llvm.bswap.i32(i32 %or.i.i121) #10
  %branch_address.i.i122 = getelementptr inbounds %struct.descriptor, ptr %retval.0.i.i.i120, i32 0, i32 3
  %201 = ptrtoint ptr %branch_address.i.i122 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %branch_address.i.i122, align 8
  %202 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %context, align 4
  %quirks.i.i123 = getelementptr inbounds %struct.fw_ohci, ptr %203, i32 0, i32 5
  %204 = ptrtoint ptr %quirks.i.i123 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %quirks.i.i123, align 8
  %and.i.i124 = and i32 %205, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool.not.i.i125 = icmp eq i32 %and.i.i124, 0
  br i1 %tobool.not.i.i125, label %find_branch_descriptor.exit.i.i126.context_append.exit.i135_crit_edge, label %land.lhs.true.i.i128, !prof !431

find_branch_descriptor.exit.i.i126.context_append.exit.i135_crit_edge: ; preds = %find_branch_descriptor.exit.i.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i135

land.lhs.true.i.i128:                             ; preds = %find_branch_descriptor.exit.i.i126
  %206 = ptrtoint ptr %prev.i.i89 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %prev.i.i89, align 4
  %cmp.not.i.i127 = icmp eq ptr %retval.0.i.i.i120, %207
  br i1 %cmp.not.i.i127, label %land.lhs.true.i.i128.context_append.exit.i135_crit_edge, label %land.lhs.true7.i.i131

land.lhs.true.i.i128.context_append.exit.i135_crit_edge: ; preds = %land.lhs.true.i.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i135

land.lhs.true7.i.i131:                            ; preds = %land.lhs.true.i.i128
  %control.i.i129 = getelementptr inbounds %struct.descriptor, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %control.i.i129 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %control.i.i129, align 2
  %210 = and i16 %209, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %210)
  %cmp10.i.i130 = icmp eq i16 %210, 32
  br i1 %cmp10.i.i130, label %if.then.i.i133, label %land.lhs.true7.i.i131.context_append.exit.i135_crit_edge

land.lhs.true7.i.i131.context_append.exit.i135_crit_edge: ; preds = %land.lhs.true7.i.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i135

if.then.i.i133:                                   ; preds = %land.lhs.true7.i.i131
  call void @__sanitizer_cov_trace_pc() #12
  %branch_address14.i.i132 = getelementptr inbounds %struct.descriptor, ptr %207, i32 0, i32 3
  %211 = ptrtoint ptr %branch_address14.i.i132 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %200, ptr %branch_address14.i.i132, align 8
  br label %context_append.exit.i135

context_append.exit.i135:                         ; preds = %if.then.i.i133, %land.lhs.true7.i.i131.context_append.exit.i135_crit_edge, %land.lhs.true.i.i128.context_append.exit.i135_crit_edge, %find_branch_descriptor.exit.i.i126.context_append.exit.i135_crit_edge
  %212 = ptrtoint ptr %prev.i.i89 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %call.i93, ptr %prev.i.i89, align 4
  %213 = ptrtoint ptr %prev_z.i.i90 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 1, ptr %prev_z.i.i90, align 4
  %inc69.i = add nuw nsw i32 %i.0121.i, 1
  %exitcond.not.i134 = icmp eq i32 %inc69.i, %umax.i91
  br i1 %exitcond.not.i134, label %context_append.exit.i135.queue_iso_buffer_fill.exit_crit_edge, label %context_append.exit.i135.for.body.i94_crit_edge

context_append.exit.i135.for.body.i94_crit_edge:  ; preds = %context_append.exit.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i94

context_append.exit.i135.queue_iso_buffer_fill.exit_crit_edge: ; preds = %context_append.exit.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_iso_buffer_fill.exit

queue_iso_buffer_fill.exit:                       ; preds = %context_append.exit.i135.queue_iso_buffer_fill.exit_crit_edge, %for.body.i94.queue_iso_buffer_fill.exit_crit_edge, %do.end.i, %for.cond.preheader.i.queue_iso_buffer_fill.exit_crit_edge
  %retval.0.i136 = phi i32 [ -14, %do.end.i ], [ 0, %for.cond.preheader.i.queue_iso_buffer_fill.exit_crit_edge ], [ 0, %context_append.exit.i135.queue_iso_buffer_fill.exit_crit_edge ], [ -12, %for.body.i94.queue_iso_buffer_fill.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_bus.i77) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %queue_iso_buffer_fill.exit, %queue_iso_packet_per_buffer.exit, %queue_iso_transmit.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -38, %entry.sw.epilog_crit_edge ], [ %retval.0.i136, %queue_iso_buffer_fill.exit ], [ %retval.0.i76, %queue_iso_packet_per_buffer.exit ], [ %retval.0.i, %queue_iso_transmit.exit ]
  %214 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %context, align 4
  %lock13 = getelementptr inbounds %struct.fw_ohci, ptr %215, i32 0, i32 13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13, i32 noundef %call3) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ohci_flush_queue_iso(ptr nocapture noundef readonly %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %regs = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1048576) #10, !srcloc !420
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_flush_iso_completions(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tasklet = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 12
  %count.i.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 12, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !426
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !427
  tail call void @tasklet_unlock_spin_wait(ptr noundef %tasklet) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !435
  %flushing_completions = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flushing_completions, i32 noundef 4) #10
  %1 = ptrtoint ptr %flushing_completions to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flushing_completions, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

test_and_set_bit_lock.exit:                       ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %flushing_completions, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flushing_completions, ptr %flushing_completions, i32 1, ptr elementtype(i32) %flushing_completions) #10, !srcloc !437
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !438
  %and1.i.i = and i32 %asmresult.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %phi.cmp.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %phi.cmp.i.not, label %if.then, label %test_and_set_bit_lock.exit.if.end12_crit_edge

test_and_set_bit_lock.exit.if.end12_crit_edge:    ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %test_and_set_bit_lock.exit
  %context = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1
  %4 = ptrtoint ptr %context to i32
  tail call void @context_tasklet(i32 noundef %4)
  %type = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %6, label %if.then.sw.epilog_crit_edge [
    i32 0, label %if.then.sw.bb_crit_edge
    i32 1, label %if.then.sw.bb_crit_edge29
    i32 2, label %sw.bb3
  ]

if.then.sw.bb_crit_edge29:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge29
  %header_length = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 3
  %8 = ptrtoint ptr %header_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %header_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %if.then2

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %callback.i = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 6
  %10 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %callback.i, align 4
  %last_timestamp.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 7
  %12 = ptrtoint ptr %last_timestamp.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %last_timestamp.i, align 2
  %conv.i = zext i16 %13 to i32
  %header.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 2
  %14 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %header.i, align 4
  %callback_data.i = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 7
  %16 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %callback_data.i, align 4
  tail call void %11(ptr noundef %base, i32 noundef %conv.i, i32 noundef %9, ptr noundef %15, ptr noundef %17) #10
  %18 = ptrtoint ptr %header_length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %header_length, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  %mc_completed = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 6
  %19 = ptrtoint ptr %mc_completed to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mc_completed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp4.not = icmp eq i16 %20, 0
  br i1 %cmp4.not, label %sw.bb3.sw.epilog_crit_edge, label %if.then6

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %context, align 4
  %device.i = getelementptr inbounds %struct.fw_card, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i, align 4
  %mc_buffer_bus.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 5
  %25 = ptrtoint ptr %mc_buffer_bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mc_buffer_bus.i, align 4
  %conv.i24 = zext i16 %20 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %24, i32 noundef %26, i32 noundef %conv.i24, i32 noundef 2) #10
  %callback.i25 = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 6
  %27 = ptrtoint ptr %callback.i25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %callback.i25, align 4
  %29 = ptrtoint ptr %mc_buffer_bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mc_buffer_bus.i, align 4
  %31 = ptrtoint ptr %mc_completed to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mc_completed, align 4
  %conv6.i = zext i16 %32 to i32
  %add.i = add i32 %30, %conv6.i
  %callback_data.i26 = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 7
  %33 = ptrtoint ptr %callback_data.i26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %callback_data.i26, align 4
  tail call void %28(ptr noundef %base, i32 noundef %add.i, ptr noundef %34) #10
  %35 = ptrtoint ptr %mc_completed to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %mc_completed, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %sw.bb3.sw.epilog_crit_edge, %if.then2, %sw.bb.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.then6 ], [ 0, %sw.bb3.sw.epilog_crit_edge ], [ 0, %if.then2 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ -38, %if.then.sw.epilog_crit_edge ]
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %flushing_completions, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !439
  tail call void @llvm.prefetch.p0(ptr %flushing_completions, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flushing_completions, ptr %flushing_completions, i32 1, ptr elementtype(i32) %flushing_completions) #10, !srcloc !440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !441
  br label %if.end12

if.end12:                                         ; preds = %sw.epilog, %test_and_set_bit_lock.exit.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ret.1 = phi i32 [ 0, %test_and_set_bit_lock.exit.if.end12_crit_edge ], [ %ret.0, %sw.epilog ], [ 0, %entry.if.end12_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !429
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !430
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_stop_iso(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %type = getelementptr inbounds %struct.fw_iso_context, ptr %base, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge28
  ]

entry.sw.bb2_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %it_context_list = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %it_context_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %it_context_list, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %base to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 7
  %shl = shl nuw i32 1, %sub.ptr.div
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #10, !srcloc !420
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge28
  %ir_context_list = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %ir_context_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ir_context_list, align 8
  %sub.ptr.lhs.cast3 = ptrtoint ptr %base to i32
  %sub.ptr.rhs.cast4 = ptrtoint ptr %11 to i32
  %sub.ptr.sub5 = sub i32 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %sub.ptr.div6 = ashr exact i32 %sub.ptr.sub5, 7
  %shl7 = shl nuw i32 1, %sub.ptr.div6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl7) #10
  %registers.i19 = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %registers.i19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers.i19, align 8
  %add.ptr.i20 = getelementptr i8, ptr %14, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %12) #10, !srcloc !420
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %registers.i.i, align 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %context = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context, align 4
  %regs.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regs.i, align 4
  %add.i = add i32 %21, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i21 = getelementptr inbounds %struct.fw_ohci, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %registers.i.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %registers.i.i21, align 8
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8388608) #10, !srcloc !420
  %running.i = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %running.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog
  %i.019.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regs.i, align 4
  %27 = ptrtoint ptr %registers.i.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %registers.i.i21, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %28, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #10, !srcloc !421
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and.i = and i32 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp3.i = icmp eq i32 %and.i, 0
  br i1 %cmp3.i, label %for.body.i.context_stop.exit_crit_edge, label %if.end.i

for.body.i.context_stop.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_stop.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.019.i)
  %tobool.not.i = icmp eq i32 %i.019.i, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then4.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.fw_card, ptr %19, i32 0, i32 1
  %32 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.101, i32 noundef %30) #13
  br label %context_stop.exit

context_stop.exit:                                ; preds = %do.end.i, %for.body.i.context_stop.exit_crit_edge
  %tasklet = getelementptr inbounds %struct.iso_context, ptr %base, i32 0, i32 1, i32 12
  tail call void @tasklet_kill(ptr noundef %tasklet) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar_context_run(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %descriptors.i = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 3
  %last_buffer_index.i = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 6
  %regs.i = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %descriptors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %descriptors.i, align 4
  %branch_address.i = getelementptr %struct.descriptor, ptr %1, i32 %i.014, i32 3
  %2 = ptrtoint ptr %branch_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %branch_address.i, align 8
  %and.i = and i32 %3, -251658241
  store i32 %and.i, ptr %branch_address.i, align 8
  %res_count.i = getelementptr %struct.descriptor, ptr %1, i32 %i.014, i32 4
  %4 = ptrtoint ptr %res_count.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16, ptr %res_count.i, align 4
  %transfer_status.i = getelementptr %struct.descriptor, ptr %1, i32 %i.014, i32 5
  %5 = ptrtoint ptr %transfer_status.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %transfer_status.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !442
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %descriptors.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %descriptors.i, align 4
  %8 = ptrtoint ptr %last_buffer_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_buffer_index.i, align 4
  %branch_address3.i = getelementptr %struct.descriptor, ptr %7, i32 %9, i32 3
  %10 = ptrtoint ptr %branch_address3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %branch_address3.i, align 8
  %or.i = or i32 %11, 16777216
  store i32 %or.i, ptr %branch_address3.i, align 8
  store i32 %i.014, ptr %last_buffer_index.i, align 4
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1048576) #10, !srcloc !420
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %buffer = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 2
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %pointer = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 5
  %20 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %pointer, align 4
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regs.i, align 4
  %add = add i32 %24, 12
  %descriptors_bus = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 4
  %25 = ptrtoint ptr %descriptors_bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %descriptors_bus, align 4
  %or = or i32 %26, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %22, i32 0, i32 1
  %28 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %29, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #10, !srcloc !420
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i12 = getelementptr inbounds %struct.fw_ohci, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %registers.i12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %registers.i12, align 8
  %add.ptr.i13 = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 8388608) #10, !srcloc !420
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_schedule_bus_reset(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_phy_reg(ptr nocapture noundef readonly %ohci, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %addr, 8
  %or = or i32 %shl, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %ohci, i32 0, i32 1
  %1 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #10, !srcloc !420
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %4, i32 236
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp eq i32 %5, -1
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool1.not = icmp sgt i32 %6, -1
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and3 = lshr i32 %6, 16
  %shr = and i32 %and3, 255
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019)
  %cmp5 = icmp ugt i32 %i.019, 2
  br i1 %cmp5, label %if.then6, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end4.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 103
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef %addr) #13
  tail call void @dump_stack() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then2, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.then2 ], [ -16, %do.end ], [ -19, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_paged_phy_reg(ptr nocapture noundef readonly %ohci, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %ohci, i32 0, i32 1
  %0 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8847360) #10, !srcloc !420
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.019.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %3, i32 236
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not.i = icmp eq i32 %4, -1
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %if.end.i1

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i1:                                        ; preds = %for.body.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not.i = icmp sgt i32 %5, -1
  br i1 %tobool1.not.i, label %if.end4.i, label %read_phy_reg.exit

if.end4.i:                                        ; preds = %if.end.i1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019.i)
  %cmp5.i = icmp ugt i32 %i.019.i, 2
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end4.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 103
  br i1 %exitcond.not.i, label %do.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.42, i32 noundef 7) #13
  tail call void @dump_stack() #13
  br label %cleanup

read_phy_reg.exit:                                ; preds = %if.end.i1
  %and3.i = lshr i32 %5, 16
  %and.i = and i32 %and3.i, 31
  %or4.i = or i32 %and.i, 32
  %call5.i = tail call fastcc i32 @write_phy_reg(ptr noundef %ohci, i32 noundef 7, i32 noundef %or4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp = icmp slt i32 %call5.i, 0
  br i1 %cmp, label %read_phy_reg.exit.cleanup_crit_edge, label %if.end

read_phy_reg.exit.cleanup_crit_edge:              ; preds = %read_phy_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %read_phy_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @read_phy_reg(ptr noundef %ohci, i32 noundef %addr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %read_phy_reg.exit.cleanup_crit_edge, %do.end.i, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call5.i, %read_phy_reg.exit.cleanup_crit_edge ], [ -16, %do.end.i ], [ -19, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_phy_reg(ptr nocapture noundef readonly %ohci, i32 noundef %addr, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %addr, 8
  %or = or i32 %shl, %val
  %or1 = or i32 %or, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %or1) #10
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %ohci, i32 0, i32 1
  %1 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #10, !srcloc !420
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %4, i32 236
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #10, !srcloc !421
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp eq i32 %5, -1
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %and = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.019)
  %cmp5 = icmp ugt i32 %i.019, 2
  br i1 %cmp5, label %if.then6, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end4.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 103
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.44, i32 noundef %addr, i32 noundef %6) #13
  tail call void @dump_stack() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ -19, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at_context_transmit(ptr noundef %ctx, ptr noundef %packet) unnamed_addr #2 align 64 {
entry:
  %d_bus.i = alloca i32, align 4
  %response.i65.i = alloca %struct.fw_packet, align 4
  %lock_old.i.i = alloca i32, align 4
  %response.i.i = alloca %struct.fw_packet, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %header = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %header, align 4
  %shr = lshr i32 %3, 16
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %node_id = getelementptr inbounds %struct.fw_ohci, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %7)
  %cmp6 = icmp eq i32 %shr, %7
  br i1 %cmp6, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %generation = getelementptr inbounds %struct.fw_ohci, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %generation, align 8
  %generation9 = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 1
  %10 = ptrtoint ptr %generation9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generation9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp10 = icmp eq i32 %9, %11
  br i1 %cmp10, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %lock13 = getelementptr inbounds %struct.fw_ohci, ptr %5, i32 0, i32 13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13, i32 noundef %call2) #10
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %at_request_ctx.i = getelementptr inbounds %struct.fw_ohci, ptr %13, i32 0, i32 19
  %cmp.i = icmp eq ptr %at_request_ctx.i, %ctx
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ack.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 10
  %14 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %ack.i, align 4
  %callback.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 9
  %15 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %callback.i, align 4
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  tail call void %16(ptr noundef %packet, ptr noundef %18, i32 noundef 2) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.fw_packet, ptr %packet, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %20, 65535
  %conv.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %arrayidx4.i = getelementptr %struct.fw_packet, ptr %packet, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.i, align 4
  %conv5.i = zext i32 %22 to i64
  %or.i = or i64 %shl.i, %conv5.i
  %sub.i = add nsw i64 %or.i, -281474708275200
  %23 = and i64 %sub.i, -1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %23)
  %24 = icmp eq i64 %23, 1024
  br i1 %24, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end.i
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 4
  %conv12.i = trunc i64 %sub.i to i32
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %response.i.i) #10
  %27 = call ptr @memset(ptr %response.i.i, i32 255, i32 68)
  %28 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %header, align 4
  %30 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i.i, label %if.then10.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then10.i.if.end.i.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3.i.i = getelementptr %struct.fw_packet, ptr %packet, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3.i.i, align 4
  %shr4.i.i = lshr i32 %32, 16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then10.i.if.end.i.i_crit_edge
  %length.0.i.i = phi i32 [ %shr4.i.i, %if.then.i.i ], [ 4, %if.then10.i.if.end.i.i_crit_edge ]
  %sub.i.i = add nsw i32 %conv12.i, -1024
  %add.i.i = add nuw nsw i32 %length.0.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i)
  %cmp6.i.i = icmp ugt i32 %add.i.i, 1024
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.else9.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @fw_fill_response(ptr noundef nonnull %response.i.i, ptr noundef %header, i32 noundef 7, ptr noundef null, i32 noundef 0) #10
  br label %handle_local_rom.exit.i

if.else9.i.i:                                     ; preds = %if.end.i.i
  %33 = and i32 %29, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %33)
  %cmp11.i.i = icmp eq i32 %33, 64
  br i1 %cmp11.i.i, label %if.else15.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @fw_fill_response(ptr noundef nonnull %response.i.i, ptr noundef %header, i32 noundef 6, ptr noundef null, i32 noundef 0) #10
  br label %handle_local_rom.exit.i

if.else15.i.i:                                    ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %config_rom.i.i = getelementptr inbounds %struct.fw_ohci, ptr %26, i32 0, i32 30
  %34 = ptrtoint ptr %config_rom.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config_rom.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %sub.i.i
  call void @fw_fill_response(ptr noundef nonnull %response.i.i, ptr noundef %header, i32 noundef 0, ptr noundef %add.ptr.i.i, i32 noundef %length.0.i.i) #10
  br label %handle_local_rom.exit.i

handle_local_rom.exit.i:                          ; preds = %if.else15.i.i, %if.then12.i.i, %if.then7.i.i
  call void @fw_core_handle_response(ptr noundef %26, ptr noundef nonnull %response.i.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %response.i.i) #10
  br label %if.end26.i

if.else.i:                                        ; preds = %if.end.i
  %trunc.i = trunc i64 %or.i to i48
  %36 = zext i48 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.215)
  switch i48 %trunc.i, label %sw.default.i [
    i48 -268434916, label %if.else.i.sw.bb.i_crit_edge
    i48 -268434912, label %if.else.i.sw.bb.i_crit_edge65
    i48 -268434908, label %if.else.i.sw.bb.i_crit_edge66
    i48 -268434904, label %if.else.i.sw.bb.i_crit_edge67
  ]

if.else.i.sw.bb.i_crit_edge67:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.else.i.sw.bb.i_crit_edge66:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.else.i.sw.bb.i_crit_edge65:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.else.i.sw.bb.i_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.else.i.sw.bb.i_crit_edge, %if.else.i.sw.bb.i_crit_edge65, %if.else.i.sw.bb.i_crit_edge66, %if.else.i.sw.bb.i_crit_edge67
  %37 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctx, align 4
  %conv14.i = trunc i64 %sub.i to i32
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %response.i65.i) #10
  %39 = call ptr @memset(ptr %response.i65.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lock_old.i.i) #10
  %40 = ptrtoint ptr %lock_old.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %lock_old.i.i, align 4, !annotation !432
  %41 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %header, align 4
  %shr.i.i = lshr i32 %42, 4
  %and.i.i = and i32 %shr.i.i, 15
  %arrayidx2.i.i = getelementptr %struct.fw_packet, ptr %packet, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 9
  %and9.i.i = and i32 %44, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and9.i.i)
  %cmp10.i.i = icmp eq i32 %and9.i.i, 2
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp10.i.i, i1 false
  %shr3.mask.i.i = and i32 %44, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shr3.mask.i.i)
  %cmp12.i.i = icmp eq i32 %shr3.mask.i.i, 524288
  %or.cond46.i.i = select i1 %or.cond.i.i, i1 %cmp12.i.i, i1 false
  br i1 %or.cond46.i.i, label %if.then.i67.i, label %if.else.i.i

if.then.i67.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %payload5.i.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 4
  %45 = ptrtoint ptr %payload5.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %payload5.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %arrayidx14.i.i = getelementptr i32, ptr %46, i32 1
  %49 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx14.i.i, align 4
  br label %if.end19.i.i

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %cmp15.i.i = icmp eq i32 %and.i.i, 4
  br i1 %cmp15.i.i, label %if.else.i.i.if.end19.i.i_crit_edge, label %if.else17.i.i

if.else.i.i.if.end19.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

if.else17.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @fw_fill_response(ptr noundef nonnull %response.i65.i, ptr noundef %header, i32 noundef 6, ptr noundef null, i32 noundef 0) #10
  br label %handle_local_lock.exit.i

if.end19.i.i:                                     ; preds = %if.else.i.i.if.end19.i.i_crit_edge, %if.then.i67.i
  %lock_arg.0.i.i = phi i32 [ %48, %if.then.i67.i ], [ 0, %if.else.i.i.if.end19.i.i_crit_edge ]
  %lock_data.0.i.i = phi i32 [ %50, %if.then.i67.i ], [ 0, %if.else.i.i.if.end19.i.i_crit_edge ]
  %sub.i68.i = add i32 %conv14.i, -540
  %div45.i.i = lshr i32 %sub.i68.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %51 = tail call i32 @llvm.bswap.i32(i32 %lock_data.0.i.i) #10
  %registers.i.i.i = getelementptr inbounds %struct.fw_ohci, ptr %38, i32 0, i32 1
  %52 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %registers.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %51) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %54 = tail call i32 @llvm.bswap.i32(i32 %lock_arg.0.i.i) #10
  %55 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %registers.i.i.i, align 8
  %add.ptr.i48.i.i = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i.i, i32 %54) #10, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %57 = tail call i32 @llvm.bswap.i32(i32 %div45.i.i) #10
  %58 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %registers.i.i.i, align 8
  %add.ptr.i50.i.i = getelementptr i8, ptr %59, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i.i, i32 %57) #10, !srcloc !420
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %try.055.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end19.i.i
  %try.055.i.i = phi i32 [ 0, %if.end19.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %60 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %registers.i.i.i, align 8
  %add.ptr.i52.i.i = getelementptr i8, ptr %61, i32 20
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %.mask.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %registers.i.i.i, align 8
  %add.ptr.i54.i.i = getelementptr i8, ptr %64, i32 12
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.i.i) #10, !srcloc !421
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %67 = ptrtoint ptr %lock_old.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %lock_old.i.i, align 4
  call void @fw_fill_response(ptr noundef nonnull %response.i65.i, ptr noundef %header, i32 noundef 0, ptr noundef nonnull %lock_old.i.i, i32 noundef 4) #10
  br label %handle_local_lock.exit.i

do.end.i.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i = getelementptr inbounds %struct.fw_card, ptr %38, i32 0, i32 1
  %68 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.46) #13
  call void @fw_fill_response(ptr noundef nonnull %response.i65.i, ptr noundef %header, i32 noundef 18, ptr noundef null, i32 noundef 0) #10
  br label %handle_local_lock.exit.i

handle_local_lock.exit.i:                         ; preds = %do.end.i.i, %if.then22.i.i, %if.else17.i.i
  call void @fw_core_handle_response(ptr noundef %38, ptr noundef nonnull %response.i65.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lock_old.i.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %response.i65.i) #10
  br label %if.end26.i

sw.default.i:                                     ; preds = %if.else.i
  %70 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx, align 4
  %at_request_ctx16.i = getelementptr inbounds %struct.fw_ohci, ptr %71, i32 0, i32 19
  %cmp17.i = icmp eq ptr %at_request_ctx16.i, %ctx
  br i1 %cmp17.i, label %if.then19.i, label %if.else22.i

if.then19.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fw_core_handle_request(ptr noundef %71, ptr noundef %packet) #10
  br label %if.end26.i

if.else22.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fw_core_handle_response(ptr noundef %71, ptr noundef %packet) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else22.i, %if.then19.i, %handle_local_lock.exit.i, %handle_local_rom.exit.i
  %72 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctx, align 4
  %at_response_ctx.i = getelementptr inbounds %struct.fw_ohci, ptr %73, i32 0, i32 20
  %cmp28.i = icmp eq ptr %at_response_ctx.i, %ctx
  br i1 %cmp28.i, label %if.then30.i, label %if.end26.i.cleanup_crit_edge

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %ack31.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 10
  %74 = ptrtoint ptr %ack31.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %ack31.i, align 4
  %callback32.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 9
  %75 = ptrtoint ptr %callback32.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %callback32.i, align 4
  %77 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctx, align 4
  call void %76(ptr noundef %packet, ptr noundef %78, i32 noundef 1) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d_bus.i) #10
  %79 = ptrtoint ptr %d_bus.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %d_bus.i, align 4, !annotation !432
  %call.i = call fastcc ptr @context_get_descriptors(ptr noundef %ctx, i32 noundef 4, ptr noundef nonnull %d_bus.i) #10
  %cmp.i37 = icmp eq ptr %call.i, null
  br i1 %cmp.i37, label %if.then.i39, label %if.end.i42

if.then.i39:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ack.i38 = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 10
  %80 = ptrtoint ptr %ack.i38 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 16, ptr %ack.i38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_bus.i) #10
  br label %if.then19

if.end.i42:                                       ; preds = %if.end
  %control.i = getelementptr inbounds %struct.descriptor, ptr %call.i, i32 0, i32 1
  %81 = ptrtoint ptr %control.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 2, ptr %control.i, align 2
  %timestamp.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 8
  %82 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %timestamp.i, align 4
  %conv.i40 = trunc i32 %83 to i16
  %84 = tail call i16 @llvm.bswap.i16(i16 %conv.i40) #10
  %res_count.i = getelementptr inbounds %struct.descriptor, ptr %call.i, i32 0, i32 4
  %85 = ptrtoint ptr %res_count.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %res_count.i, align 4
  %86 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %header, align 4
  %shr.i = lshr i32 %87, 4
  %and.i41 = and i32 %shr.i, 15
  %arrayidx5.i = getelementptr %struct.descriptor, ptr %call.i, i32 1
  %88 = zext i32 %and.i41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %and.i41, label %sw.default.i48 [
    i32 0, label %if.end.i42.sw.bb.i45_crit_edge
    i32 1, label %if.end.i42.sw.bb.i45_crit_edge68
    i32 2, label %if.end.i42.sw.bb.i45_crit_edge69
    i32 4, label %if.end.i42.sw.bb.i45_crit_edge70
    i32 5, label %if.end.i42.sw.bb.i45_crit_edge71
    i32 6, label %if.end.i42.sw.bb.i45_crit_edge72
    i32 7, label %if.end.i42.sw.bb.i45_crit_edge73
    i32 9, label %if.end.i42.sw.bb.i45_crit_edge74
    i32 11, label %if.end.i42.sw.bb.i45_crit_edge75
    i32 14, label %sw.bb34.i
    i32 10, label %sw.bb57.i
  ]

if.end.i42.sw.bb.i45_crit_edge75:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

if.end.i42.sw.bb.i45_crit_edge74:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

if.end.i42.sw.bb.i45_crit_edge73:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

if.end.i42.sw.bb.i45_crit_edge72:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

if.end.i42.sw.bb.i45_crit_edge71:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

if.end.i42.sw.bb.i45_crit_edge70:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

if.end.i42.sw.bb.i45_crit_edge69:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

if.end.i42.sw.bb.i45_crit_edge68:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

if.end.i42.sw.bb.i45_crit_edge:                   ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

sw.bb.i45:                                        ; preds = %if.end.i42.sw.bb.i45_crit_edge, %if.end.i42.sw.bb.i45_crit_edge68, %if.end.i42.sw.bb.i45_crit_edge69, %if.end.i42.sw.bb.i45_crit_edge70, %if.end.i42.sw.bb.i45_crit_edge71, %if.end.i42.sw.bb.i45_crit_edge72, %if.end.i42.sw.bb.i45_crit_edge73, %if.end.i42.sw.bb.i45_crit_edge74, %if.end.i42.sw.bb.i45_crit_edge75
  %and8.i = and i32 %87, 65535
  %89 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %packet, align 4
  %shl.i43 = shl i32 %90, 16
  %or.i44 = or i32 %shl.i43, %and8.i
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i44) #10
  %92 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx5.i, align 4
  %arrayidx11.i = getelementptr %struct.fw_packet, ptr %packet, i32 0, i32 2, i32 1
  %93 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx11.i, align 4
  %and12.i = and i32 %94, 65535
  %95 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %header, align 4
  %and15.i = and i32 %96, -65536
  %or16.i = or i32 %and15.i, %and12.i
  %97 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #10
  %arrayidx17.i = getelementptr %struct.descriptor, ptr %call.i, i32 1, i32 2
  %98 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %arrayidx17.i, align 4
  %arrayidx19.i = getelementptr %struct.fw_packet, ptr %packet, i32 0, i32 2, i32 2
  %99 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx19.i, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #10
  %arrayidx20.i = getelementptr %struct.descriptor, ptr %call.i, i32 1, i32 3
  %102 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx20.i, align 4
  %103 = and i32 %87, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp22.not.i = icmp eq i32 %103, 0
  %arrayidx29.i = getelementptr %struct.fw_packet, ptr %packet, i32 0, i32 2, i32 3
  %104 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx29.i, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #10
  %.sink.i = select i1 %cmp22.not.i, i32 %105, i32 %106
  %107 = getelementptr %struct.descriptor, ptr %call.i, i32 1, i32 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %.sink.i, ptr %107, align 4
  %header_length.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 3
  %109 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %header_length.i, align 4
  %conv32.i = trunc i32 %110 to i16
  %111 = tail call i16 @llvm.bswap.i16(i16 %conv32.i) #10
  %112 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %call.i, align 16
  br label %do.end.i

sw.bb34.i:                                        ; preds = %if.end.i42
  %113 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %packet, align 4
  %shl36.i = shl i32 %114, 16
  %or37.i = or i32 %shl36.i, 224
  %115 = tail call i32 @llvm.bswap.i32(i32 %or37.i) #10
  %116 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx5.i, align 4
  %arrayidx40.i = getelementptr %struct.fw_packet, ptr %packet, i32 0, i32 2, i32 1
  %117 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx40.i, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #10
  %arrayidx41.i = getelementptr %struct.descriptor, ptr %call.i, i32 1, i32 2
  %120 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx41.i, align 4
  %arrayidx43.i = getelementptr %struct.fw_packet, ptr %packet, i32 0, i32 2, i32 2
  %121 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx43.i, align 4
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #10
  %arrayidx44.i = getelementptr %struct.descriptor, ptr %call.i, i32 1, i32 3
  %124 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx44.i, align 4
  %125 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 3072, ptr %call.i, align 16
  %126 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx40.i, align 4
  %and.i.i46 = and i32 %127, -1056964609
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i46)
  %cmp.i.i47 = icmp eq i32 %and.i.i46, 0
  br i1 %cmp.i.i47, label %is_ping_packet.exit.i, label %sw.bb34.i.do.end.i_crit_edge

sw.bb34.i.do.end.i_crit_edge:                     ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

is_ping_packet.exit.i:                            ; preds = %sw.bb34.i
  %neg.i.i = xor i32 %127, -1
  %128 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx43.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %neg.i.i)
  %cmp3.i.i = icmp eq i32 %129, %neg.i.i
  br i1 %cmp3.i.i, label %if.then50.i, label %is_ping_packet.exit.i.do.end.i_crit_edge

is_ping_packet.exit.i.do.end.i_crit_edge:         ; preds = %is_ping_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then50.i:                                      ; preds = %is_ping_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %control.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 -32766, ptr %control.i, align 2
  br label %do.end.i

sw.bb57.i:                                        ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %and60.i = and i32 %87, 65535
  %131 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %packet, align 4
  %shl62.i = shl i32 %132, 16
  %or63.i = or i32 %shl62.i, %and60.i
  %133 = tail call i32 @llvm.bswap.i32(i32 %or63.i) #10
  %134 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx5.i, align 4
  %135 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %header, align 4
  %and67.i = and i32 %136, -65536
  %137 = tail call i32 @llvm.bswap.i32(i32 %and67.i) #10
  %arrayidx68.i = getelementptr %struct.descriptor, ptr %call.i, i32 1, i32 2
  %138 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %arrayidx68.i, align 4
  %139 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 2048, ptr %call.i, align 16
  br label %do.end.i

sw.default.i48:                                   ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %ack71.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 10
  %140 = ptrtoint ptr %ack71.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 16, ptr %ack71.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_bus.i) #10
  br label %if.then19

do.end.i:                                         ; preds = %sw.bb57.i, %if.then50.i, %is_ping_packet.exit.i.do.end.i_crit_edge, %sw.bb34.i.do.end.i_crit_edge, %sw.bb.i45
  %arrayidx72.i = getelementptr %struct.descriptor, ptr %call.i, i32 3
  %packet73.i = getelementptr %struct.descriptor, ptr %call.i, i32 3, i32 3
  %141 = ptrtoint ptr %packet73.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %packet, ptr %packet73.i, align 4
  %driver_data74.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 12
  %142 = ptrtoint ptr %driver_data74.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %arrayidx72.i, ptr %driver_data74.i, align 4
  %payload_length.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 5
  %143 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %payload_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp75.not.i = icmp eq i32 %144, 0
  br i1 %cmp75.not.i, label %do.end.i.if.end103.i_crit_edge, label %if.then77.i

do.end.i.if.end103.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i

if.then77.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %144)
  %cmp79.i = icmp ugt i32 %144, 8
  br i1 %cmp79.i, label %if.then81.i, label %if.else91.i

if.then81.i:                                      ; preds = %if.then77.i
  %device.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 1
  %145 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %device.i, align 4
  %payload.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 4
  %147 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %payload.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %148) #10
  br i1 %call.i.i, label %land.rhs.i205.i, label %dma_map_single_attrs.exit.i

land.rhs.i205.i:                                  ; preds = %if.then81.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i205.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i49, !prof !431

land.rhs.i205.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i205.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i49:                                    ; preds = %land.rhs.i205.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %146) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %146, i32 0, i32 3
  %149 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %150, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i49.dev_name.exit.i.i_crit_edge

if.then.i.i49.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %146, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i49.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %152, %if.end.i.i.i ], [ %150, %if.then.i.i49.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i205.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %153 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %154, i32 noundef -1) #10
  br label %if.then87.i

dma_map_single_attrs.exit.i:                      ; preds = %if.then81.i
  tail call void @debug_dma_map_single(ptr noundef %146, ptr noundef %148, i32 noundef %144) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %155 = load ptr, ptr @mem_map, align 4
  %156 = ptrtoint ptr %148 to i32
  %sub.i.i50 = add i32 %156, 1073741824
  %shr.i.i51 = lshr i32 %sub.i.i50, 12
  %add.ptr.i.i52 = getelementptr %struct.page, ptr %155, i32 %shr.i.i51
  %and.i206.i = and i32 %156, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %146, ptr noundef %add.ptr.i.i52, i32 noundef %and.i206.i, i32 noundef %144, i32 noundef 1, i32 noundef 0) #10
  %157 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %device.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %158, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i207.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i207.i, label %dma_map_single_attrs.exit.i.if.then87.i_crit_edge, label %if.end89.i

dma_map_single_attrs.exit.i.if.then87.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87.i

if.then87.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then87.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %ack88.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 10
  %159 = ptrtoint ptr %ack88.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 16, ptr %ack88.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_bus.i) #10
  br label %if.then19

if.end89.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %payload_bus90.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 6
  %160 = ptrtoint ptr %payload_bus90.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %call41.i.i, ptr %payload_bus90.i, align 4
  %payload_mapped.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 7
  %161 = ptrtoint ptr %payload_mapped.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %payload_mapped.i, align 4
  br label %if.end94.i

if.else91.i:                                      ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #12
  %payload92.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 4
  %162 = ptrtoint ptr %payload92.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %payload92.i, align 4
  %164 = call ptr @memcpy(ptr %arrayidx72.i, ptr %163, i32 %144)
  %165 = ptrtoint ptr %d_bus.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %d_bus.i, align 4
  %add.i = add i32 %166, 48
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else91.i, %if.end89.i
  %payload_bus.0.i = phi i32 [ %call41.i.i, %if.end89.i ], [ %add.i, %if.else91.i ]
  %167 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %payload_length.i, align 4
  %conv96.i = trunc i32 %168 to i16
  %169 = tail call i16 @llvm.bswap.i16(i16 %conv96.i) #10
  %arrayidx97.i = getelementptr %struct.descriptor, ptr %call.i, i32 2
  %170 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %arrayidx97.i, align 16
  %171 = tail call i32 @llvm.bswap.i32(i32 %payload_bus.0.i) #10
  %data_address.i = getelementptr %struct.descriptor, ptr %call.i, i32 2, i32 2
  %172 = ptrtoint ptr %data_address.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %data_address.i, align 4
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.end94.i, %do.end.i.if.end103.i_crit_edge
  %payload_bus.1.i = phi i32 [ %payload_bus.0.i, %if.end94.i ], [ -1, %do.end.i.if.end103.i_crit_edge ]
  %last.0.i = phi ptr [ %arrayidx97.i, %if.end94.i ], [ %call.i, %do.end.i.if.end103.i_crit_edge ]
  %z.0.i = phi i32 [ 3, %if.end94.i ], [ 2, %do.end.i.if.end103.i_crit_edge ]
  %control104.i = getelementptr inbounds %struct.descriptor, ptr %last.0.i, i32 0, i32 1
  %173 = ptrtoint ptr %control104.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %control104.i, align 2
  %175 = or i16 %174, 15376
  store i16 %175, ptr %control104.i, align 2
  %generation.i = getelementptr inbounds %struct.fw_ohci, ptr %5, i32 0, i32 3
  %176 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %generation.i, align 8
  %generation108.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 1
  %178 = ptrtoint ptr %generation108.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %generation108.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %179)
  %cmp109.not.i = icmp eq i32 %177, %179
  br i1 %cmp109.not.i, label %if.end120.i, label %if.then111.i

if.then111.i:                                     ; preds = %if.end103.i
  %payload_mapped112.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 7
  %180 = ptrtoint ptr %payload_mapped112.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %payload_mapped112.i, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool113.not.i = icmp eq i8 %181, 0
  br i1 %tobool113.not.i, label %if.then111.i.if.end118.i_crit_edge, label %if.then114.i

if.then111.i.if.end118.i_crit_edge:               ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118.i

if.then114.i:                                     ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #12
  %device116.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 1
  %182 = ptrtoint ptr %device116.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %device116.i, align 4
  %184 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %payload_length.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %183, i32 noundef %payload_bus.1.i, i32 noundef %185, i32 noundef 1, i32 noundef 0) #10
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then114.i, %if.then111.i.if.end118.i_crit_edge
  %ack119.i = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 10
  %186 = ptrtoint ptr %ack119.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 19, ptr %ack119.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_bus.i) #10
  br label %if.then19

if.end120.i:                                      ; preds = %if.end103.i
  %buffer_tail.i.i = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 7
  %187 = ptrtoint ptr %buffer_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %buffer_tail.i.i, align 4
  %buffer_bus.i.i = getelementptr inbounds %struct.descriptor_buffer, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %buffer_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %buffer_bus.i.i, align 8
  %buffer.i.i = getelementptr inbounds %struct.descriptor_buffer, ptr %188, i32 0, i32 5
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %buffer.i.i to i32
  %sub.ptr.sub.i.i = add i32 %190, %sub.ptr.lhs.cast.i.i
  %add.i.i53 = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  %used.i.i = getelementptr inbounds %struct.descriptor_buffer, ptr %188, i32 0, i32 3
  %191 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %used.i.i, align 16
  %add3.i.i = add i32 %192, 64
  store i32 %add3.i.i, ptr %used.i.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !436
  tail call void @arm_heavy_mb() #10
  %prev.i.i = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 9
  %193 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %prev.i.i, align 4
  %prev_z.i.i = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 10
  %195 = ptrtoint ptr %prev_z.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %prev_z.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %196)
  %cmp.i.i.i = icmp eq i32 %196, 2
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end120.i.if.else.i.i.i_crit_edge

if.end120.i.if.else.i.i.i_crit_edge:              ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end120.i
  %control.i.i.i = getelementptr inbounds %struct.descriptor, ptr %194, i32 0, i32 1
  %197 = ptrtoint ptr %control.i.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %control.i.i.i, align 2
  %199 = and i16 %198, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %199)
  %cmp4.i.i.i = icmp eq i16 %199, 3072
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i.find_branch_descriptor.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i

land.lhs.true.i.i.i.find_branch_descriptor.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_branch_descriptor.exit.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, %if.end120.i.if.else.i.i.i_crit_edge
  %add.ptr.i.i.i54 = getelementptr %struct.descriptor, ptr %194, i32 %196
  %add.ptr6.i.i.i = getelementptr %struct.descriptor, ptr %add.ptr.i.i.i54, i32 -1
  br label %find_branch_descriptor.exit.i.i

find_branch_descriptor.exit.i.i:                  ; preds = %if.else.i.i.i, %land.lhs.true.i.i.i.find_branch_descriptor.exit.i.i_crit_edge
  %retval.0.i.i208.i = phi ptr [ %add.ptr6.i.i.i, %if.else.i.i.i ], [ %194, %land.lhs.true.i.i.i.find_branch_descriptor.exit.i.i_crit_edge ]
  %or.i.i = or i32 %add.i.i53, %z.0.i
  %200 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %branch_address.i.i = getelementptr inbounds %struct.descriptor, ptr %retval.0.i.i208.i, i32 0, i32 3
  %201 = ptrtoint ptr %branch_address.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %branch_address.i.i, align 8
  %202 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ctx, align 4
  %quirks.i.i = getelementptr inbounds %struct.fw_ohci, ptr %203, i32 0, i32 5
  %204 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %quirks.i.i, align 8
  %and.i209.i = and i32 %205, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209.i)
  %tobool.not.i.i55 = icmp eq i32 %and.i209.i, 0
  br i1 %tobool.not.i.i55, label %find_branch_descriptor.exit.i.i.context_append.exit.i_crit_edge, label %land.lhs.true.i.i, !prof !431

find_branch_descriptor.exit.i.i.context_append.exit.i_crit_edge: ; preds = %find_branch_descriptor.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i

land.lhs.true.i.i:                                ; preds = %find_branch_descriptor.exit.i.i
  %206 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %prev.i.i, align 4
  %cmp.not.i.i56 = icmp eq ptr %retval.0.i.i208.i, %207
  br i1 %cmp.not.i.i56, label %land.lhs.true.i.i.context_append.exit.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.context_append.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %control.i.i = getelementptr inbounds %struct.descriptor, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %control.i.i, align 2
  %210 = and i16 %209, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %210)
  %cmp10.i.i57 = icmp eq i16 %210, 32
  br i1 %cmp10.i.i57, label %if.then.i210.i, label %land.lhs.true7.i.i.context_append.exit.i_crit_edge

land.lhs.true7.i.i.context_append.exit.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_append.exit.i

if.then.i210.i:                                   ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %branch_address14.i.i = getelementptr inbounds %struct.descriptor, ptr %207, i32 0, i32 3
  %211 = ptrtoint ptr %branch_address14.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %200, ptr %branch_address14.i.i, align 8
  br label %context_append.exit.i

context_append.exit.i:                            ; preds = %if.then.i210.i, %land.lhs.true7.i.i.context_append.exit.i_crit_edge, %land.lhs.true.i.i.context_append.exit.i_crit_edge, %find_branch_descriptor.exit.i.i.context_append.exit.i_crit_edge
  %212 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %call.i, ptr %prev.i.i, align 4
  %213 = ptrtoint ptr %prev_z.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %z.0.i, ptr %prev_z.i.i, align 4
  %running.i = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 4
  %214 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %running.i, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool121.not.i = icmp eq i8 %215, 0
  br i1 %tobool121.not.i, label %if.else123.i, label %if.then122.i

if.then122.i:                                     ; preds = %context_append.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %regs.i = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 1
  %216 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %5, i32 0, i32 1
  %218 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i211.i = getelementptr i8, ptr %219, i32 %217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211.i, i32 1048576) #10, !srcloc !420
  br label %at_context_queue_packet.exit

if.else123.i:                                     ; preds = %context_append.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %220 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ctx, align 4
  %regs.i.i = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 1
  %222 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %regs.i.i, align 4
  %add.i212.i = add i32 %223, 12
  %last.i.i = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 8
  %224 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %last.i.i, align 4
  %branch_address.i213.i = getelementptr inbounds %struct.descriptor, ptr %225, i32 0, i32 3
  %226 = ptrtoint ptr %branch_address.i213.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %branch_address.i213.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i.i58 = getelementptr inbounds %struct.fw_ohci, ptr %221, i32 0, i32 1
  %228 = ptrtoint ptr %registers.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %registers.i.i.i58, align 8
  %add.ptr.i.i214.i = getelementptr i8, ptr %229, i32 %add.i212.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i214.i, i32 %227) #10, !srcloc !420
  %230 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %regs.i.i, align 4
  %add3.i215.i = add i32 %231, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %232 = ptrtoint ptr %registers.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %registers.i.i.i58, align 8
  %add.ptr.i14.i.i = getelementptr i8, ptr %233, i32 %add3.i215.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 -1) #10, !srcloc !420
  %234 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %236 = ptrtoint ptr %registers.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %registers.i.i.i58, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %237, i32 %235
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 8388608) #10, !srcloc !420
  %238 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 1, ptr %running.i, align 4
  %239 = ptrtoint ptr %registers.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %registers.i.i.i58, align 8
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %at_context_queue_packet.exit

at_context_queue_packet.exit:                     ; preds = %if.else123.i, %if.then122.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_bus.i) #10
  %242 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ctx, align 4
  %lock16 = getelementptr inbounds %struct.fw_ohci, ptr %243, i32 0, i32 13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16, i32 noundef %call2) #10
  br label %cleanup

if.then19:                                        ; preds = %if.end118.i, %if.then87.i, %sw.default.i48, %if.then.i39
  %244 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ctx, align 4
  %lock16.c64 = getelementptr inbounds %struct.fw_ohci, ptr %245, i32 0, i32 13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16.c64, i32 noundef %call2) #10
  %callback = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 9
  %246 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %callback, align 4
  %248 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ctx, align 4
  %ack = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 10
  %250 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %ack, align 4
  tail call void %247(ptr noundef %packet, ptr noundef %249, i32 noundef %251) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %at_context_queue_packet.exit, %if.then30.i, %if.end26.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_handle_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_handle_response(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_fill_response(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @context_get_descriptors(ptr noundef %ctx, i32 noundef %z, ptr nocapture noundef writeonly %d_bus) unnamed_addr #2 align 64 {
entry:
  %bus_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_tail = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %buffer_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_tail, align 4
  %mul = shl i32 %z, 4
  %buffer_size = getelementptr inbounds %struct.descriptor_buffer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %3)
  %cmp = icmp ugt i32 %mul, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %used = getelementptr inbounds %struct.descriptor_buffer, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used, align 16
  %sub = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub)
  %cmp3 = icmp ugt i32 %mul, %sub
  br i1 %cmp3, label %if.then4, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 16
  %buffer_list = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 6
  %cmp5 = icmp eq ptr %7, %buffer_list
  br i1 %cmp5, label %if.then6, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then6:                                         ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_addr.i) #10
  %8 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %bus_addr.i, align 4, !annotation !432
  %total_allocation.i = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 2
  %9 = ptrtoint ptr %total_allocation.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_allocation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %10)
  %cmp.i = icmp sgt i32 %10, 16777215
  br i1 %cmp.i, label %if.then6.context_add_buffer.exit.thread_crit_edge, label %if.end.i

if.then6.context_add_buffer.exit.thread_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_add_buffer.exit.thread

if.end.i:                                         ; preds = %if.then6
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %device.i = getelementptr inbounds %struct.fw_card, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef 4096, ptr noundef nonnull %bus_addr.i, i32 noundef 2592, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.context_add_buffer.exit.thread_crit_edge, label %if.end2.i

if.end.i.context_add_buffer.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_add_buffer.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %buffer_size.i = getelementptr inbounds %struct.descriptor_buffer, ptr %call.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4048, ptr %buffer_size.i, align 4
  %16 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_addr.i, align 4
  %add.i = add i32 %17, 32
  %buffer_bus.i = getelementptr inbounds %struct.descriptor_buffer, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %buffer_bus.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %buffer_bus.i, align 8
  %used.i = getelementptr inbounds %struct.descriptor_buffer, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %used.i, align 16
  %prev.i.i = getelementptr inbounds %struct.context, ptr %ctx, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %21, ptr noundef %7) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end2.i.context_add_buffer.exit_crit_edge

if.end2.i.context_add_buffer.exit_crit_edge:      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %context_add_buffer.exit

if.end.i.i.i:                                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %7, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call.i.i, ptr %21, align 4
  br label %context_add_buffer.exit

context_add_buffer.exit.thread:                   ; preds = %if.end.i.context_add_buffer.exit.thread_crit_edge, %if.then6.context_add_buffer.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_addr.i) #10
  br label %cleanup

context_add_buffer.exit:                          ; preds = %if.end.i.i.i, %if.end2.i.context_add_buffer.exit_crit_edge
  %26 = ptrtoint ptr %total_allocation.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %total_allocation.i, align 4
  %add5.i = add i32 %27, 4096
  store i32 %add5.i, ptr %total_allocation.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_addr.i) #10
  br label %if.end10

if.end10:                                         ; preds = %context_add_buffer.exit, %if.then4.if.end10_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 16
  %30 = ptrtoint ptr %buffer_tail to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %buffer_tail, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.end.if.end14_crit_edge
  %desc.0 = phi ptr [ %29, %if.end10 ], [ %1, %if.end.if.end14_crit_edge ]
  %buffer = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.0, i32 0, i32 5
  %used15 = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.0, i32 0, i32 3
  %31 = ptrtoint ptr %used15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %used15, align 16
  %div35 = lshr i32 %32, 4
  %add.ptr16 = getelementptr %struct.descriptor, ptr %buffer, i32 %div35
  %33 = call ptr @memset(ptr %add.ptr16, i32 0, i32 %mul)
  %buffer_bus = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.0, i32 0, i32 1
  %34 = ptrtoint ptr %buffer_bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buffer_bus, align 8
  %36 = load i32, ptr %used15, align 16
  %add = add i32 %36, %35
  %37 = ptrtoint ptr %d_bus to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %d_bus, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %context_add_buffer.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr16, %if.end14 ], [ null, %entry.cleanup_crit_edge ], [ null, %context_add_buffer.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @log_ar_at_event(ptr nocapture noundef readonly %ohci, i8 noundef zeroext %dir, i32 noundef %speed, ptr nocapture noundef readonly %header, i32 noundef %evt) unnamed_addr #2 align 64 {
entry:
  %specific = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %header, align 4
  %shr = lshr i32 %1, 4
  %and = and i32 %shr, 15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %specific) #10
  %2 = call ptr @memset(ptr %specific, i32 255, i32 12)
  %3 = load i32, ptr @param_debug, align 4
  %and1 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end12, !prof !431

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %evt)
  %cmp13 = icmp eq i32 %evt, 9
  br i1 %cmp13, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %conv = zext i8 %dir to i32
  %arrayidx15 = getelementptr i32, ptr %header, i32 2
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx15, align 4
  %shr16 = lshr i32 %7, 16
  %and17 = and i32 %shr16, 255
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %5, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %and17) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %and, label %sw.default [
    i32 0, label %if.end18.sw.bb_crit_edge
    i32 6, label %if.end18.sw.bb_crit_edge118
    i32 8, label %if.end18.sw.bb_crit_edge119
    i32 1, label %if.end18.sw.bb20_crit_edge
    i32 5, label %if.end18.sw.bb20_crit_edge120
    i32 7, label %if.end18.sw.bb20_crit_edge121
    i32 9, label %if.end18.sw.bb20_crit_edge122
    i32 11, label %if.end18.sw.bb20_crit_edge123
  ]

if.end18.sw.bb20_crit_edge123:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end18.sw.bb20_crit_edge122:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end18.sw.bb20_crit_edge121:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end18.sw.bb20_crit_edge120:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end18.sw.bb20_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end18.sw.bb_crit_edge119:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end18.sw.bb_crit_edge118:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end18.sw.bb_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end18.sw.bb_crit_edge, %if.end18.sw.bb_crit_edge118, %if.end18.sw.bb_crit_edge119
  %arrayidx19 = getelementptr i32, ptr %header, i32 3
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx19, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %specific, i32 noundef 12, ptr noundef nonnull @.str.52, i32 noundef %10)
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end18.sw.bb20_crit_edge, %if.end18.sw.bb20_crit_edge120, %if.end18.sw.bb20_crit_edge121, %if.end18.sw.bb20_crit_edge122, %if.end18.sw.bb20_crit_edge123
  %arrayidx22 = getelementptr i32, ptr %header, i32 3
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx22, align 4
  %shr23 = lshr i32 %12, 16
  %and25 = and i32 %12, 65535
  %call26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %specific, i32 noundef 12, ptr noundef nonnull @.str.53, i32 noundef %shr23, i32 noundef %and25)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %specific to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %specific, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb
  %14 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %and, label %do.end70 [
    i32 10, label %do.end31
    i32 14, label %do.end40
    i32 0, label %sw.epilog.do.end50_crit_edge
    i32 1, label %sw.epilog.do.end50_crit_edge124
    i32 4, label %sw.epilog.do.end50_crit_edge125
    i32 5, label %sw.epilog.do.end50_crit_edge126
    i32 9, label %sw.epilog.do.end50_crit_edge127
  ]

sw.epilog.do.end50_crit_edge127:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

sw.epilog.do.end50_crit_edge126:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

sw.epilog.do.end50_crit_edge125:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

sw.epilog.do.end50_crit_edge124:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

sw.epilog.do.end50_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end31:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %device33 = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %15 = ptrtoint ptr %device33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device33, align 4
  %conv34 = zext i8 %dir to i32
  %arrayidx35 = getelementptr [33 x ptr], ptr @evts, i32 0, i32 %evt
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx35, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %16, ptr noundef nonnull @.str.55, i32 noundef %conv34, ptr noundef %18, ptr noundef nonnull @.str.98) #13
  br label %cleanup

do.end40:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %device42 = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %19 = ptrtoint ptr %device42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device42, align 4
  %conv43 = zext i8 %dir to i32
  %arrayidx44 = getelementptr [33 x ptr], ptr @evts, i32 0, i32 %evt
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx44, align 4
  %arrayidx45 = getelementptr i32, ptr %header, i32 1
  %23 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx45, align 4
  %arrayidx46 = getelementptr i32, ptr %header, i32 2
  %25 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx46, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %20, ptr noundef nonnull @.str.58, i32 noundef %conv43, ptr noundef %22, i32 noundef %24, i32 noundef %26) #13
  br label %cleanup

do.end50:                                         ; preds = %sw.epilog.do.end50_crit_edge, %sw.epilog.do.end50_crit_edge124, %sw.epilog.do.end50_crit_edge125, %sw.epilog.do.end50_crit_edge126, %sw.epilog.do.end50_crit_edge127
  %device52 = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %27 = ptrtoint ptr %device52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device52, align 4
  %conv53 = zext i8 %dir to i32
  %29 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %header, align 4
  %shr55 = lshr i32 %30, 10
  %and56 = and i32 %shr55, 63
  %arrayidx57 = getelementptr i32, ptr %header, i32 1
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx57, align 4
  %shr58 = lshr i32 %32, 16
  %shr60 = lshr i32 %30, 16
  %arrayidx61 = getelementptr [33 x ptr], ptr @evts, i32 0, i32 %evt
  %33 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx61, align 4
  %arrayidx62 = getelementptr [16 x ptr], ptr @tcodes, i32 0, i32 %and
  %35 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx62, align 4
  %and64 = and i32 %32, 65535
  %arrayidx65 = getelementptr i32, ptr %header, i32 2
  %37 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx65, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %28, ptr noundef nonnull @.str.61, i32 noundef %conv53, i32 noundef %speed, i32 noundef %and56, i32 noundef %shr58, i32 noundef %shr60, ptr noundef %34, ptr noundef %36, i32 noundef %and64, i32 noundef %38, ptr noundef nonnull %specific) #13
  br label %cleanup

do.end70:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %device72 = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %39 = ptrtoint ptr %device72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device72, align 4
  %conv73 = zext i8 %dir to i32
  %41 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %header, align 4
  %shr75 = lshr i32 %42, 10
  %and76 = and i32 %shr75, 63
  %arrayidx77 = getelementptr i32, ptr %header, i32 1
  %43 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx77, align 4
  %shr78 = lshr i32 %44, 16
  %shr80 = lshr i32 %42, 16
  %arrayidx81 = getelementptr [33 x ptr], ptr @evts, i32 0, i32 %evt
  %45 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx81, align 4
  %arrayidx82 = getelementptr [16 x ptr], ptr @tcodes, i32 0, i32 %and
  %47 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx82, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %40, ptr noundef nonnull @.str.64, i32 noundef %conv73, i32 noundef %speed, i32 noundef %and76, i32 noundef %shr78, i32 noundef %shr80, ptr noundef %46, ptr noundef %48, ptr noundef nonnull %specific) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %do.end50, %do.end40, %do.end31, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %specific) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_spin_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_cycle_time(ptr nocapture noundef readonly %ohci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %registers.i = getelementptr inbounds %struct.fw_ohci, ptr %ohci, i32 0, i32 1
  %0 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 240
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !421
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %quirks = getelementptr inbounds %struct.fw_ohci, ptr %ohci, i32 0, i32 5
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %registers.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %7, i32 240
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #10, !srcloc !421
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.then
  %c1.0 = phi i32 [ %3, %if.then ], [ %c2.0, %do.body.backedge ]
  %c2.0 = phi i32 [ %9, %if.then ], [ %13, %do.body.backedge ]
  %i.0 = phi i32 [ 0, %if.then ], [ %i.0.be, %do.body.backedge ]
  %10 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %registers.i, align 8
  %add.ptr.i30 = getelementptr i8, ptr %11, i32 240
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #10, !srcloc !421
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and.i = and i32 %c1.0, 4095
  %shr.i = lshr i32 %c1.0, 12
  %and1.i = and i32 %shr.i, 8191
  %shr2.i = lshr i32 %c1.0, 25
  %and.i31 = and i32 %c2.0, 4095
  %shr.i32 = lshr i32 %c2.0, 12
  %and1.i33 = and i32 %shr.i32, 8191
  %mul.i34 = mul nuw nsw i32 %and1.i33, 3072
  %shr2.i35 = lshr i32 %c2.0, 25
  %mul3.i36 = mul nuw i32 %shr2.i35, 24576000
  %add.i37 = or i32 %mul3.i36, %and.i31
  %add4.i38 = add i32 %add.i37, %mul.i34
  %and.i39 = and i32 %13, 4095
  %shr.i40 = lshr i32 %13, 12
  %and1.i41 = and i32 %shr.i40, 8191
  %mul.i42 = mul nuw nsw i32 %and1.i41, 3072
  %shr2.i43 = lshr i32 %13, 25
  %mul3.i44 = mul nuw i32 %shr2.i43, 24576000
  %mul3.i.neg = mul i32 %shr2.i, -24576000
  %add.i.neg = sub i32 %mul3.i.neg, %and.i
  %mul.i.neg = mul nsw i32 %and1.i, -3072
  %add4.i.neg = add i32 %add.i.neg, %mul.i.neg
  %sub = add i32 %add4.i.neg, %add4.i38
  %add.i45 = sub i32 %and.i39, %add4.i38
  %add4.i46 = add i32 %add.i45, %mul3.i44
  %sub6 = add i32 %add4.i46, %mul.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub6)
  %cmp7 = icmp slt i32 %sub6, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %do.body.land.rhs_crit_edge, label %lor.lhs.false8

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.lhs.false8:                                   ; preds = %do.body
  %div47 = udiv i32 %sub, %sub6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div47)
  %cmp9 = icmp ugt i32 %div47, 1
  br i1 %cmp9, label %lor.lhs.false8.land.rhs_crit_edge, label %lor.lhs.false10

lor.lhs.false8.land.rhs_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %div1148 = udiv i32 %sub6, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div1148)
  %cmp12 = icmp ugt i32 %div1148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %i.0)
  %cmp13 = icmp ult i32 %i.0, 20
  %or.cond26 = select i1 %cmp12, i1 %cmp13, i1 false
  br i1 %or.cond26, label %lor.lhs.false10.do.body.backedge_crit_edge, label %lor.lhs.false10.if.end_crit_edge

lor.lhs.false10.if.end_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false10.do.body.backedge_crit_edge:       ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge

land.rhs:                                         ; preds = %lor.lhs.false8.land.rhs_crit_edge, %do.body.land.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %i.0)
  %cmp13.old = icmp ult i32 %i.0, 20
  br i1 %cmp13.old, label %land.rhs.do.body.backedge_crit_edge, label %land.rhs.if.end_crit_edge

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs.do.body.backedge_crit_edge:              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %land.rhs.do.body.backedge_crit_edge, %lor.lhs.false10.do.body.backedge_crit_edge
  %i.0.be = add nuw nsw i32 %i.0, 1
  br label %do.body

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %lor.lhs.false10.if.end_crit_edge, %entry.if.end_crit_edge
  %c2.1 = phi i32 [ %3, %entry.if.end_crit_edge ], [ %13, %land.rhs.if.end_crit_edge ], [ %13, %lor.lhs.false10.if.end_crit_edge ]
  ret i32 %c2.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_it_packet(ptr noundef %context, ptr noundef readonly %d, ptr noundef readonly %last) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %cmp.not47 = icmp ugt ptr %d, %last
  br i1 %cmp.not47, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %pd.048 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %d, %entry.for.body_crit_edge ]
  %transfer_status = getelementptr inbounds %struct.descriptor, ptr %pd.048, i32 0, i32 5
  %0 = ptrtoint ptr %transfer_status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %transfer_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %for.inc, label %if.end3

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.descriptor, ptr %pd.048, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %last
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %transfer_status.le = getelementptr inbounds %struct.descriptor, ptr %pd.048, i32 0, i32 5
  %control1.i = getelementptr inbounds %struct.descriptor, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %control1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %control1.i, align 2
  %4 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.sync_it_packet_for_cpu.exit_crit_edge

if.end3.sync_it_packet_for_cpu.exit_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sync_it_packet_for_cpu.exit

if.end.i:                                         ; preds = %if.end3
  %add.ptr.i = getelementptr %struct.descriptor, ptr %d, i32 2
  %data_address.i = getelementptr %struct.descriptor, ptr %d, i32 2, i32 2
  %5 = ptrtoint ptr %data_address.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_address.i, align 4
  %7 = and i32 %6, 15794175
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %current_bus.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 3
  %9 = ptrtoint ptr %current_bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_bus.i, align 4
  %and3.i = and i32 %10, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %and3.i)
  %cmp.i = icmp eq i32 %8, %and3.i
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.do.body.i.preheader_crit_edge

if.end.i.do.body.i.preheader_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.preheader

if.then5.i:                                       ; preds = %if.end.i
  %control6.i = getelementptr %struct.descriptor, ptr %d, i32 2, i32 1
  %11 = ptrtoint ptr %control6.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %control6.i, align 2
  %13 = and i16 %12, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not.i = icmp eq i16 %13, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then5.i.sync_it_packet_for_cpu.exit_crit_edge

if.then5.i.sync_it_packet_for_cpu.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sync_it_packet_for_cpu.exit

if.end11.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i = getelementptr %struct.descriptor, ptr %d, i32 3
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end11.i, %if.end.i.do.body.i.preheader_crit_edge
  %pd.addr.1.i.ph = phi ptr [ %add.ptr.i, %if.end.i.do.body.i.preheader_crit_edge ], [ %incdec.ptr.i, %if.end11.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %pd.addr.1.i = phi ptr [ %incdec.ptr18.i, %do.body.i.do.body.i_crit_edge ], [ %pd.addr.1.i.ph, %do.body.i.preheader ]
  %data_address13.i = getelementptr inbounds %struct.descriptor, ptr %pd.addr.1.i, i32 0, i32 2
  %14 = ptrtoint ptr %data_address13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_address13.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %17 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %context, align 4
  %device.i = getelementptr inbounds %struct.fw_card, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i, align 4
  %21 = ptrtoint ptr %pd.addr.1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pd.addr.1.i, align 16
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #10
  %conv16.i = zext i16 %23 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %20, i32 noundef %16, i32 noundef %conv16.i, i32 noundef 1) #10
  %control17.i = getelementptr inbounds %struct.descriptor, ptr %pd.addr.1.i, i32 0, i32 1
  %24 = ptrtoint ptr %control17.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %control17.i, align 2
  %incdec.ptr18.i = getelementptr %struct.descriptor, ptr %pd.addr.1.i, i32 1
  %26 = and i16 %25, 3072
  %tobool21.not.i = icmp eq i16 %26, 0
  br i1 %tobool21.not.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.sync_it_packet_for_cpu.exit_crit_edge

do.body.i.sync_it_packet_for_cpu.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sync_it_packet_for_cpu.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

sync_it_packet_for_cpu.exit:                      ; preds = %do.body.i.sync_it_packet_for_cpu.exit_crit_edge, %if.then5.i.sync_it_packet_for_cpu.exit_crit_edge, %if.end3.sync_it_packet_for_cpu.exit_crit_edge
  %header_length = getelementptr i8, ptr %context, i32 76
  %27 = ptrtoint ptr %header_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %header_length, align 4
  %29 = add i32 %28, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %29)
  %cmp4 = icmp ult i32 %29, -4097
  br i1 %cmp4, label %if.then5, label %sync_it_packet_for_cpu.exit.if.end9_crit_edge

sync_it_packet_for_cpu.exit.if.end9_crit_edge:    ; preds = %sync_it_packet_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %sync_it_packet_for_cpu.exit
  %drop_overflow_headers = getelementptr i8, ptr %context, i32 -16
  %30 = ptrtoint ptr %drop_overflow_headers to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %drop_overflow_headers, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool6.not = icmp eq i8 %31, 0
  br i1 %tobool6.not, label %if.end8, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %callback.i = getelementptr i8, ptr %context, i32 -8
  %32 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %callback.i, align 4
  %last_timestamp.i = getelementptr i8, ptr %context, i32 90
  %34 = ptrtoint ptr %last_timestamp.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %last_timestamp.i, align 2
  %conv.i = zext i16 %35 to i32
  %36 = ptrtoint ptr %header_length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %header_length, align 4
  %header.i = getelementptr i8, ptr %context, i32 72
  %38 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %header.i, align 4
  %callback_data.i = getelementptr i8, ptr %context, i32 -4
  %40 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %callback_data.i, align 4
  tail call void %33(ptr noundef %add.ptr, i32 noundef %conv.i, i32 noundef %37, ptr noundef %39, ptr noundef %41) #10
  %42 = ptrtoint ptr %header_length to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %header_length, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %sync_it_packet_for_cpu.exit.if.end9_crit_edge
  %header = getelementptr i8, ptr %context, i32 72
  %43 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %header, align 4
  %45 = ptrtoint ptr %header_length to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %header_length, align 4
  %add.ptr11 = getelementptr i8, ptr %44, i32 %46
  %res_count = getelementptr inbounds %struct.descriptor, ptr %last, i32 0, i32 4
  %47 = ptrtoint ptr %res_count to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %res_count, align 4
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %last_timestamp = getelementptr i8, ptr %context, i32 90
  %50 = ptrtoint ptr %last_timestamp to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %last_timestamp, align 2
  %51 = ptrtoint ptr %transfer_status.le to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %transfer_status.le, align 2
  %res_count13 = getelementptr inbounds %struct.descriptor, ptr %pd.048, i32 0, i32 4
  %53 = ptrtoint ptr %res_count13 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %res_count13, align 4
  %55 = zext i16 %52 to i32
  %56 = zext i16 %54 to i32
  %57 = shl nuw i32 %56, 16
  %58 = or i32 %57, %55
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %add.ptr11, align 4
  %61 = ptrtoint ptr %header_length to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %header_length, align 4
  %add16 = add i32 %62, 4
  store i32 %add16, ptr %header_length, align 4
  %control = getelementptr inbounds %struct.descriptor, ptr %last, i32 0, i32 1
  %63 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %control, align 2
  %65 = and i16 %64, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool18.not = icmp eq i16 %65, 0
  br i1 %tobool18.not, label %if.end9.cleanup_crit_edge, label %if.then19

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %callback.i40 = getelementptr i8, ptr %context, i32 -8
  %66 = ptrtoint ptr %callback.i40 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %callback.i40, align 4
  %68 = ptrtoint ptr %last_timestamp to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %last_timestamp, align 2
  %conv.i42 = zext i16 %69 to i32
  %70 = ptrtoint ptr %header_length to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %header_length, align 4
  %72 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %header, align 4
  %callback_data.i45 = getelementptr i8, ptr %context, i32 -4
  %74 = ptrtoint ptr %callback_data.i45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %callback_data.i45, align 4
  tail call void %67(ptr noundef %add.ptr, i32 noundef %conv.i42, i32 noundef %71, ptr noundef %73, ptr noundef %75) #10
  %76 = ptrtoint ptr %header_length to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %header_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end9.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then5.cleanup_crit_edge ], [ 1, %if.then19 ], [ 1, %if.end9.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_ir_packet_per_buffer(ptr noundef %context, ptr noundef readonly %d, ptr noundef readonly %last) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %cmp.not36 = icmp ugt ptr %d, %last
  br i1 %cmp.not36, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.descriptor, ptr %pd.037, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %last
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %pd.037 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %d, %entry.for.body_crit_edge ]
  %transfer_status = getelementptr inbounds %struct.descriptor, ptr %pd.037, i32 0, i32 5
  %0 = ptrtoint ptr %transfer_status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %transfer_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %for.cond, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  %control38 = getelementptr inbounds %struct.descriptor, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %control38 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %control38, align 2
  %4 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not39 = icmp eq i16 %4, 0
  br i1 %tobool4.not39, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %d.addr.040 = phi ptr [ %incdec.ptr5, %while.body.while.body_crit_edge ], [ %d, %while.cond.preheader.while.body_crit_edge ]
  %incdec.ptr5 = getelementptr %struct.descriptor, ptr %d.addr.040, i32 1
  %data_address = getelementptr %struct.descriptor, ptr %d.addr.040, i32 1, i32 2
  %5 = ptrtoint ptr %data_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_address, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %device = getelementptr inbounds %struct.fw_card, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %12 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %incdec.ptr5, align 16
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv8 = zext i16 %14 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %11, i32 noundef %7, i32 noundef %conv8, i32 noundef 2) #10
  %control = getelementptr %struct.descriptor, ptr %d.addr.040, i32 1, i32 1
  %15 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %control, align 2
  %17 = and i16 %16, 3072
  %tobool4.not = icmp eq i16 %17, 0
  br i1 %tobool4.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %add.ptr9 = getelementptr %struct.descriptor, ptr %last, i32 1
  %header_length.i = getelementptr i8, ptr %context, i32 76
  %18 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %header_length.i, align 4
  %header_size.i = getelementptr i8, ptr %context, i32 -12
  %20 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %header_size.i, align 4
  %add.i31 = add i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i31)
  %cmp.i = icmp ugt i32 %add.i31, 4096
  br i1 %cmp.i, label %if.then.i, label %while.end.if.end3.i_crit_edge

while.end.if.end3.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.i:                                        ; preds = %while.end
  %drop_overflow_headers.i = getelementptr i8, ptr %context, i32 -16
  %22 = ptrtoint ptr %drop_overflow_headers.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %drop_overflow_headers.i, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.copy_iso_headers.exit_crit_edge

if.then.i.copy_iso_headers.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_iso_headers.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %callback.i.i = getelementptr i8, ptr %context, i32 -8
  %24 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %callback.i.i, align 4
  %last_timestamp.i.i = getelementptr i8, ptr %context, i32 90
  %26 = ptrtoint ptr %last_timestamp.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %last_timestamp.i.i, align 2
  %conv.i.i = zext i16 %27 to i32
  %header.i.i = getelementptr i8, ptr %context, i32 72
  %28 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %header.i.i, align 4
  %callback_data.i.i = getelementptr i8, ptr %context, i32 -4
  %30 = ptrtoint ptr %callback_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %callback_data.i.i, align 4
  tail call void %25(ptr noundef %add.ptr, i32 noundef %conv.i.i, i32 noundef %19, ptr noundef %29, ptr noundef %31) #10
  %32 = ptrtoint ptr %header_length.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %header_length.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %while.end.if.end3.i_crit_edge
  %header.i = getelementptr i8, ptr %context, i32 72
  %33 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %header.i, align 4
  %35 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %header_length.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %36
  %37 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr9, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %conv.i = trunc i32 %39 to i16
  %last_timestamp.i = getelementptr i8, ptr %context, i32 90
  %40 = ptrtoint ptr %last_timestamp.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %last_timestamp.i, align 2
  %41 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %header_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp7.not.i = icmp eq i32 %42, 0
  br i1 %cmp7.not.i, label %if.end3.i.if.end30.i_crit_edge, label %if.end12.i

if.end3.i.if.end30.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.end12.i:                                       ; preds = %if.end3.i
  %arrayidx10.i = getelementptr %struct.descriptor, ptr %last, i32 1, i32 2
  %43 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx10.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %add.ptr.i, align 4
  %47 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr.i = load i32, ptr %header_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.i)
  %cmp15.i = icmp ugt i32 %.pr.i, 4
  br i1 %cmp15.i, label %if.end20.i, label %if.end12.i.if.end30.i_crit_edge

if.end12.i.if.end30.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.end20.i:                                       ; preds = %if.end12.i
  %48 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr9, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %arrayidx19.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %51 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx19.i, align 4
  %52 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr53.i = load i32, ptr %header_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr53.i)
  %cmp23.i = icmp ugt i32 %.pr53.i, 8
  br i1 %cmp23.i, label %if.then25.i, label %if.end20.i.if.end30.i_crit_edge

if.end20.i.if.end30.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26.i = getelementptr i32, ptr %add.ptr.i, i32 2
  %arrayidx27.i = getelementptr %struct.descriptor, ptr %last, i32 1, i32 3
  %sub.i = add i32 %.pr53.i, -8
  %53 = call ptr @memcpy(ptr %arrayidx26.i, ptr %arrayidx27.i, i32 %sub.i)
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then25.i, %if.end20.i.if.end30.i_crit_edge, %if.end12.i.if.end30.i_crit_edge, %if.end3.i.if.end30.i_crit_edge
  %54 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %header_size.i, align 4
  %56 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %header_length.i, align 4
  %add34.i = add i32 %57, %55
  store i32 %add34.i, ptr %header_length.i, align 4
  br label %copy_iso_headers.exit

copy_iso_headers.exit:                            ; preds = %if.end30.i, %if.then.i.copy_iso_headers.exit_crit_edge
  %control10 = getelementptr inbounds %struct.descriptor, ptr %last, i32 0, i32 1
  %58 = ptrtoint ptr %control10 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %control10, align 2
  %60 = and i16 %59, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool13.not = icmp eq i16 %60, 0
  br i1 %tobool13.not, label %copy_iso_headers.exit.cleanup_crit_edge, label %if.then14

copy_iso_headers.exit.cleanup_crit_edge:          ; preds = %copy_iso_headers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %copy_iso_headers.exit
  call void @__sanitizer_cov_trace_pc() #12
  %callback.i = getelementptr i8, ptr %context, i32 -8
  %61 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %callback.i, align 4
  %last_timestamp.i32 = getelementptr i8, ptr %context, i32 90
  %63 = ptrtoint ptr %last_timestamp.i32 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %last_timestamp.i32, align 2
  %conv.i33 = zext i16 %64 to i32
  %65 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %header_length.i, align 4
  %header.i35 = getelementptr i8, ptr %context, i32 72
  %67 = ptrtoint ptr %header.i35 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %header.i35, align 4
  %callback_data.i = getelementptr i8, ptr %context, i32 -4
  %69 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %callback_data.i, align 4
  tail call void %62(ptr noundef %add.ptr, i32 noundef %conv.i33, i32 noundef %66, ptr noundef %68, ptr noundef %70) #10
  %71 = ptrtoint ptr %header_length.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %header_length.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %copy_iso_headers.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then14 ], [ 1, %copy_iso_headers.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_ir_buffer_fill(ptr noundef %context, ptr nocapture noundef readnone %d, ptr noundef %last) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %0 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %last, align 16
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %res_count3 = getelementptr inbounds %struct.descriptor, ptr %last, i32 0, i32 4
  %3 = ptrtoint ptr %res_count3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load volatile i16, ptr %res_count3, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv4 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv, %conv4
  %data_address = getelementptr inbounds %struct.descriptor, ptr %last, i32 0, i32 2
  %6 = ptrtoint ptr %data_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_address, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %4)
  %cmp.not = icmp eq i16 %1, %4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mc_buffer_bus = getelementptr i8, ptr %context, i32 84
  %9 = ptrtoint ptr %mc_buffer_bus to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mc_buffer_bus, align 4
  %conv6 = trunc i32 %sub to i16
  %mc_completed = getelementptr i8, ptr %context, i32 88
  %10 = ptrtoint ptr %mc_completed to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv6, ptr %mc_completed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp7.not = icmp eq i16 %4, 0
  br i1 %cmp7.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %device = getelementptr inbounds %struct.fw_card, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %14, i32 noundef %8, i32 noundef %sub, i32 noundef 2) #10
  %control = getelementptr inbounds %struct.descriptor, ptr %last, i32 0, i32 1
  %15 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %control, align 2
  %17 = and i16 %16, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.then14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %callback = getelementptr i8, ptr %context, i32 -8
  %18 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %callback, align 4
  %add = add i32 %sub, %8
  %callback_data = getelementptr i8, ptr %context, i32 -4
  %20 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %callback_data, align 4
  tail call void %19(ptr noundef %add.ptr, i32 noundef %add, ptr noundef %21) #10
  %mc_completed17 = getelementptr i8, ptr %context, i32 88
  %22 = ptrtoint ptr %mc_completed17 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %mc_completed17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then14 ], [ 1, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @context_tasklet(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %buffer_list = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 6
  %last1 = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %last1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %last1, align 4
  %branch_address62 = getelementptr inbounds %struct.descriptor, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %branch_address62 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %branch_address62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not63 = icmp eq i32 %4, 0
  br i1 %cmp.not63, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %5 = ptrtoint ptr %buffer_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer_list, align 4
  %current_bus = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 3
  %callback = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 11
  %prev.i2.i = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 6, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %7 = phi i32 [ %4, %while.body.lr.ph ], [ %42, %cleanup.while.body_crit_edge ]
  %desc.064 = phi ptr [ %6, %while.body.lr.ph ], [ %desc.1, %cleanup.while.body_crit_edge ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and = and i32 %8, 15
  %and3 = and i32 %8, -16
  %9 = ptrtoint ptr %current_bus to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and3, ptr %current_bus, align 4
  %buffer_bus = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.064, i32 0, i32 1
  %10 = ptrtoint ptr %buffer_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_bus, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %11)
  %cmp4 = icmp ult i32 %and3, %11
  br i1 %cmp4, label %while.body.if.then_crit_edge, label %lor.lhs.false

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %used = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.064, i32 0, i32 3
  %12 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used, align 16
  %add = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %add)
  %cmp6.not = icmp ult i32 %and3, %add
  br i1 %cmp6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %while.body.if.then_crit_edge
  %14 = ptrtoint ptr %desc.064 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.064, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %desc.1 = phi ptr [ %15, %if.then ], [ %desc.064, %lor.lhs.false.if.end_crit_edge ]
  %buffer = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.1, i32 0, i32 5
  %buffer_bus11 = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.1, i32 0, i32 1
  %16 = ptrtoint ptr %buffer_bus11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_bus11, align 8
  %sub = sub i32 %and3, %17
  %div59 = lshr i32 %sub, 4
  %add.ptr12 = getelementptr %struct.descriptor, ptr %buffer, i32 %div59
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.i = icmp eq i32 %and, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %control.i = getelementptr %struct.descriptor, ptr %buffer, i32 %div59, i32 1
  %18 = ptrtoint ptr %control.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %control.i, align 2
  %20 = and i16 %19, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %20)
  %cmp4.i = icmp eq i16 %20, 3072
  br i1 %cmp4.i, label %land.lhs.true.i.find_branch_descriptor.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i.find_branch_descriptor.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_branch_descriptor.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %add.ptr.i = getelementptr %struct.descriptor, ptr %add.ptr12, i32 -1
  %add.ptr6.i = getelementptr %struct.descriptor, ptr %add.ptr.i, i32 %and
  br label %find_branch_descriptor.exit

find_branch_descriptor.exit:                      ; preds = %if.else.i, %land.lhs.true.i.find_branch_descriptor.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr6.i, %if.else.i ], [ %add.ptr12, %land.lhs.true.i.find_branch_descriptor.exit_crit_edge ]
  %21 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %callback, align 4
  %call13 = tail call i32 %22(ptr noundef %0, ptr noundef %add.ptr12, ptr noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %find_branch_descriptor.exit.while.end_crit_edge, label %if.end15

find_branch_descriptor.exit.while.end_crit_edge:  ; preds = %find_branch_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end15:                                         ; preds = %find_branch_descriptor.exit
  %cmp16.not = icmp eq ptr %desc.064, %desc.1
  br i1 %cmp16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  %used18 = getelementptr inbounds %struct.descriptor_buffer, ptr %desc.064, i32 0, i32 3
  %23 = ptrtoint ptr %used18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %used18, align 16
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %0, align 4
  %lock = getelementptr inbounds %struct.fw_ohci, ptr %25, i32 0, i32 13
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %desc.064) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then17.__list_del_entry.exit.i_crit_edge

if.then17.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %desc.064, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %desc.064 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.064, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then17.__list_del_entry.exit.i_crit_edge
  %32 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc.064, ptr noundef %33, ptr noundef %buffer_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %desc.064, ptr %prev.i2.i, align 4
  %35 = ptrtoint ptr %desc.064 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buffer_list, ptr %desc.064, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %desc.064, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %desc.064, ptr %33, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %0, align 4
  %lock29 = getelementptr inbounds %struct.fw_ohci, ptr %39, i32 0, i32 13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock29, i32 noundef %call23) #10
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit, %if.end15.cleanup_crit_edge
  %40 = ptrtoint ptr %last1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %retval.0.i, ptr %last1, align 4
  %branch_address = getelementptr inbounds %struct.descriptor, ptr %retval.0.i, i32 0, i32 3
  %41 = ptrtoint ptr %branch_address to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %branch_address, align 8
  %cmp.not = icmp eq i32 %42, 0
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %find_branch_descriptor.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_handle_bus_reset(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar_context_tasklet(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %pointer = getelementptr inbounds %struct.ar_context, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %pointer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pointer, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

if.end:                                           ; preds = %entry
  %last_buffer_index.i = getelementptr inbounds %struct.ar_context, ptr %0, i32 0, i32 6
  %3 = ptrtoint ptr %last_buffer_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_buffer_index.i, align 4
  %add.i.i.i = add i32 %4, 1
  %rem.i.i.i = and i32 %add.i.i.i, 7
  %descriptors.i = getelementptr inbounds %struct.ar_context, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %descriptors.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %descriptors.i, align 4
  %res_count1.i = getelementptr %struct.descriptor, ptr %6, i32 %rem.i.i.i, i32 4
  %7 = ptrtoint ptr %res_count1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load volatile i16, ptr %res_count1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i.i, i32 %4)
  %cmp.not58.i = icmp ne i32 %rem.i.i.i, %4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp259.i = icmp eq i16 %8, 0
  %or.cond60.i = select i1 %cmp.not58.i, i1 %cmp259.i, i1 false
  br i1 %or.cond60.i, label %if.end.while.body.i_crit_edge, label %if.end.while.end.i_crit_edge

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %next_buffer_is_active.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %i.062.i = phi i32 [ %next_i.0.i, %next_buffer_is_active.i.while.body.i_crit_edge ], [ %rem.i.i.i, %if.end.while.body.i_crit_edge ]
  %add.i.i = add nsw i32 %i.062.i, 1
  %rem.i.i = and i32 %add.i.i, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !443
  %9 = ptrtoint ptr %descriptors.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %descriptors.i, align 4
  %res_count11.i = getelementptr %struct.descriptor, ptr %10, i32 %rem.i.i, i32 4
  %11 = ptrtoint ptr %res_count11.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load volatile i16, ptr %res_count11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %12)
  %cmp13.i = icmp eq i16 %12, 16
  br i1 %cmp13.i, label %if.then17.i, label %while.body.i.next_buffer_is_active.i_crit_edge

while.body.i.next_buffer_is_active.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_buffer_is_active.i

if.then17.i:                                      ; preds = %while.body.i
  %add.i55.i = add nsw i32 %i.062.i, 2
  %rem.i56.i = and i32 %add.i55.i, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !444
  %13 = ptrtoint ptr %descriptors.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %descriptors.i, align 4
  %res_count25.i = getelementptr %struct.descriptor, ptr %14, i32 %rem.i56.i, i32 4
  %15 = ptrtoint ptr %res_count25.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load volatile i16, ptr %res_count25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %16)
  %cmp27.not.i = icmp eq i16 %16, 16
  br i1 %cmp27.not.i, label %if.then17.i.while.end.i_crit_edge, label %if.then17.i.next_buffer_is_active.i_crit_edge

if.then17.i.next_buffer_is_active.i_crit_edge:    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_buffer_is_active.i

if.then17.i.while.end.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

next_buffer_is_active.i:                          ; preds = %if.then17.i.next_buffer_is_active.i_crit_edge, %while.body.i.next_buffer_is_active.i_crit_edge
  %next_res_count.0.i = phi i16 [ %16, %if.then17.i.next_buffer_is_active.i_crit_edge ], [ %12, %while.body.i.next_buffer_is_active.i_crit_edge ]
  %next_i.0.i = phi i32 [ %rem.i56.i, %if.then17.i.next_buffer_is_active.i_crit_edge ], [ %rem.i.i, %while.body.i.next_buffer_is_active.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %next_i.0.i, i32 %4)
  %cmp.not.i = icmp ne i32 %next_i.0.i, %4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %next_res_count.0.i)
  %cmp2.i = icmp eq i16 %next_res_count.0.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %next_buffer_is_active.i.while.body.i_crit_edge, label %next_buffer_is_active.i.while.end.i_crit_edge

next_buffer_is_active.i.while.end.i_crit_edge:    ; preds = %next_buffer_is_active.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

next_buffer_is_active.i.while.body.i_crit_edge:   ; preds = %next_buffer_is_active.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %next_buffer_is_active.i.while.end.i_crit_edge, %if.then17.i.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %res_count.0.lcssa.i = phi i16 [ %8, %if.end.while.end.i_crit_edge ], [ 0, %if.then17.i.while.end.i_crit_edge ], [ %next_res_count.0.i, %next_buffer_is_active.i.while.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ %rem.i.i.i, %if.end.while.end.i_crit_edge ], [ %i.062.i, %if.then17.i.while.end.i_crit_edge ], [ %next_i.0.i, %next_buffer_is_active.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !445
  %17 = tail call i16 @llvm.bswap.i16(i16 %res_count.0.lcssa.i) #10
  %conv32.i = zext i16 %17 to i32
  %sub.i = sub nsw i32 4096, %conv32.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %17)
  %cmp33.i = icmp ugt i16 %17, 4096
  br i1 %cmp33.i, label %if.then35.i, label %while.end.i.ar_search_last_active_buffer.exit_crit_edge

while.end.i.ar_search_last_active_buffer.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ar_search_last_active_buffer.exit

if.then35.i:                                      ; preds = %while.end.i
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %regs.i.i = getelementptr inbounds %struct.ar_context, ptr %0, i32 0, i32 7
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regs.i.i, align 4
  %add.i57.i = add i32 %21, 4
  %registers.i.i.i = getelementptr inbounds %struct.fw_ohci, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %registers.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %add.i57.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %25 = and i32 %24, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.then35.i.ar_search_last_active_buffer.exit_crit_edge, label %if.then.i.i

if.then35.i.ar_search_last_active_buffer.exit_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ar_search_last_active_buffer.exit

if.then.i.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regs.i.i, align 4
  %add3.i.i = add i32 %27, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %registers.i.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %29, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 8388608) #10, !srcloc !420
  %30 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %registers.i.i.i, align 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %device.i.i = getelementptr inbounds %struct.fw_card, ptr %19, i32 0, i32 1
  %33 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.154) #13
  br label %ar_search_last_active_buffer.exit

ar_search_last_active_buffer.exit:                ; preds = %if.then.i.i, %if.then35.i.ar_search_last_active_buffer.exit_crit_edge, %while.end.i.ar_search_last_active_buffer.exit_crit_edge
  %end_buffer_offset.0 = phi i32 [ 0, %if.then35.i.ar_search_last_active_buffer.exit_crit_edge ], [ 0, %if.then.i.i ], [ %sub.i, %while.end.i.ar_search_last_active_buffer.exit_crit_edge ]
  %35 = ptrtoint ptr %last_buffer_index.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_buffer_index.i, align 4
  %i.0.in18.i = add i32 %36, 1
  %i.019.i = and i32 %i.0.in18.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %i.019.i, i32 %i.0.lcssa.i)
  %cmp.not20.i = icmp eq i32 %i.019.i, %i.0.lcssa.i
  br i1 %cmp.not20.i, label %ar_search_last_active_buffer.exit.while.end.i54_crit_edge, label %ar_search_last_active_buffer.exit.while.body.i53_crit_edge

ar_search_last_active_buffer.exit.while.body.i53_crit_edge: ; preds = %ar_search_last_active_buffer.exit
  br label %while.body.i53

ar_search_last_active_buffer.exit.while.end.i54_crit_edge: ; preds = %ar_search_last_active_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i54

while.body.i53:                                   ; preds = %while.body.i53.while.body.i53_crit_edge, %ar_search_last_active_buffer.exit.while.body.i53_crit_edge
  %i.021.i = phi i32 [ %i.0.i, %while.body.i53.while.body.i53_crit_edge ], [ %i.019.i, %ar_search_last_active_buffer.exit.while.body.i53_crit_edge ]
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %0, align 4
  %device.i = getelementptr inbounds %struct.fw_card, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device.i, align 4
  %arrayidx.i.i = getelementptr %struct.ar_context, ptr %0, i32 0, i32 1, i32 %i.021.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  %private.i.i = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %private.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %40, i32 noundef %44, i32 noundef 4096, i32 noundef 2) #10
  %i.0.in.i = add nuw nsw i32 %i.021.i, 1
  %i.0.i = and i32 %i.0.in.i, 7
  %cmp.not.i52 = icmp eq i32 %i.0.i, %i.0.lcssa.i
  br i1 %cmp.not.i52, label %while.body.i53.while.end.i54_crit_edge, label %while.body.i53.while.body.i53_crit_edge

while.body.i53.while.body.i53_crit_edge:          ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i53

while.body.i53.while.end.i54_crit_edge:           ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i54

while.end.i54:                                    ; preds = %while.body.i53.while.end.i54_crit_edge, %ar_search_last_active_buffer.exit.while.end.i54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end_buffer_offset.0)
  %cmp3.not.i = icmp eq i32 %end_buffer_offset.0, 0
  br i1 %cmp3.not.i, label %while.end.i54.ar_sync_buffers_for_cpu.exit_crit_edge, label %if.then.i

while.end.i54.ar_sync_buffers_for_cpu.exit_crit_edge: ; preds = %while.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %ar_sync_buffers_for_cpu.exit

if.then.i:                                        ; preds = %while.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %device6.i = getelementptr inbounds %struct.fw_card, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %device6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device6.i, align 4
  %arrayidx.i16.i = getelementptr %struct.ar_context, ptr %0, i32 0, i32 1, i32 %i.0.lcssa.i
  %49 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i16.i, align 4
  %private.i17.i = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 1, i32 0, i32 3
  %51 = ptrtoint ptr %private.i17.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %private.i17.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %48, i32 noundef %52, i32 noundef %end_buffer_offset.0, i32 noundef 2) #10
  br label %ar_sync_buffers_for_cpu.exit

ar_sync_buffers_for_cpu.exit:                     ; preds = %if.then.i, %while.end.i54.ar_sync_buffers_for_cpu.exit_crit_edge
  %buffer = getelementptr inbounds %struct.ar_context, ptr %0, i32 0, i32 2
  %53 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer, align 4
  %mul = shl nuw nsw i32 %i.0.lcssa.i, 12
  %add.ptr = getelementptr i8, ptr %54, i32 %mul
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %end_buffer_offset.0
  %55 = ptrtoint ptr %last_buffer_index.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %last_buffer_index.i, align 4
  %add.i.i56 = add i32 %56, 1
  %rem.i.i57 = and i32 %add.i.i56, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %rem.i.i57)
  %cmp = icmp ult i32 %i.0.lcssa.i, %rem.i.i57
  br i1 %cmp, label %if.then3, label %ar_sync_buffers_for_cpu.exit.if.end11_crit_edge

ar_sync_buffers_for_cpu.exit.if.end11_crit_edge:  ; preds = %ar_sync_buffers_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then3:                                         ; preds = %ar_sync_buffers_for_cpu.exit
  %add.ptr5 = getelementptr i8, ptr %54, i32 32768
  %call6 = tail call fastcc ptr @handle_ar_packets(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %add.ptr5)
  %cmp7 = icmp ult ptr %call6, %add.ptr5
  %add.ptr10 = getelementptr i8, ptr %call6, i32 -32768
  br i1 %cmp7, label %if.then3.error_crit_edge, label %if.then3.if.end11_crit_edge

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then3.error_crit_edge:                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end11:                                         ; preds = %if.then3.if.end11_crit_edge, %ar_sync_buffers_for_cpu.exit.if.end11_crit_edge
  %p.1 = phi ptr [ %add.ptr10, %if.then3.if.end11_crit_edge ], [ %2, %ar_sync_buffers_for_cpu.exit.if.end11_crit_edge ]
  %call12 = tail call fastcc ptr @handle_ar_packets(ptr noundef %0, ptr noundef %p.1, ptr noundef %add.ptr1)
  %cmp13.not = icmp eq ptr %call12, %add.ptr1
  br i1 %cmp13.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end11
  %cmp15 = icmp ugt ptr %call12, %add.ptr1
  br i1 %cmp15, label %if.then16, label %if.then14.error_crit_edge

if.then14.error_crit_edge:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.then16:                                        ; preds = %if.then14
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %0, align 4
  %regs.i = getelementptr inbounds %struct.ar_context, ptr %0, i32 0, i32 7
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %regs.i, align 4
  %add.i = add i32 %60, 4
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %add.i
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %64 = and i32 %63, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i, label %if.then16.error_crit_edge, label %if.then.i59

if.then16.error_crit_edge:                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.then.i59:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %regs.i, align 4
  %add3.i = add i32 %66, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %67 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %68, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 8388608) #10, !srcloc !420
  %69 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %registers.i.i, align 8
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #10, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %device.i58 = getelementptr inbounds %struct.fw_card, ptr %58, i32 0, i32 1
  %72 = ptrtoint ptr %device.i58 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device.i58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.153) #13
  br label %error

if.end18:                                         ; preds = %if.end11
  %74 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr1, ptr %pointer, align 4
  %75 = ptrtoint ptr %last_buffer_index.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %last_buffer_index.i, align 4
  %i.0.in10.i = add i32 %76, 1
  %i.011.i = and i32 %i.0.in10.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %i.011.i, i32 %i.0.lcssa.i)
  %cmp.not12.i = icmp eq i32 %i.011.i, %i.0.lcssa.i
  br i1 %cmp.not12.i, label %if.end18.cleanup21_crit_edge, label %while.body.lr.ph.i

if.end18.cleanup21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

while.body.lr.ph.i:                               ; preds = %if.end18
  %regs.i.i61 = getelementptr inbounds %struct.ar_context, ptr %0, i32 0, i32 7
  br label %while.body.i70

while.body.i70:                                   ; preds = %while.body.i70.while.body.i70_crit_edge, %while.body.lr.ph.i
  %i.013.i = phi i32 [ %i.011.i, %while.body.lr.ph.i ], [ %i.0.i68, %while.body.i70.while.body.i70_crit_edge ]
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %0, align 4
  %device.i62 = getelementptr inbounds %struct.fw_card, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %device.i62 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device.i62, align 4
  %arrayidx.i.i63 = getelementptr %struct.ar_context, ptr %0, i32 0, i32 1, i32 %i.013.i
  %81 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i63, align 4
  %private.i.i64 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 1, i32 0, i32 3
  %83 = ptrtoint ptr %private.i.i64 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %private.i.i64, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %80, i32 noundef %84, i32 noundef 4096, i32 noundef 2) #10
  %85 = ptrtoint ptr %descriptors.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %descriptors.i, align 4
  %branch_address.i.i = getelementptr %struct.descriptor, ptr %86, i32 %i.013.i, i32 3
  %87 = ptrtoint ptr %branch_address.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %branch_address.i.i, align 8
  %and.i.i = and i32 %88, -251658241
  store i32 %and.i.i, ptr %branch_address.i.i, align 8
  %res_count.i.i = getelementptr %struct.descriptor, ptr %86, i32 %i.013.i, i32 4
  %89 = ptrtoint ptr %res_count.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 16, ptr %res_count.i.i, align 4
  %transfer_status.i.i = getelementptr %struct.descriptor, ptr %86, i32 %i.013.i, i32 5
  %90 = ptrtoint ptr %transfer_status.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %transfer_status.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !442
  tail call void @arm_heavy_mb() #10
  %91 = ptrtoint ptr %descriptors.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %descriptors.i, align 4
  %93 = ptrtoint ptr %last_buffer_index.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %last_buffer_index.i, align 4
  %branch_address3.i.i = getelementptr %struct.descriptor, ptr %92, i32 %94, i32 3
  %95 = ptrtoint ptr %branch_address3.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %branch_address3.i.i, align 8
  %or.i.i = or i32 %96, 16777216
  store i32 %or.i.i, ptr %branch_address3.i.i, align 8
  store i32 %i.013.i, ptr %last_buffer_index.i, align 4
  %97 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %0, align 4
  %99 = ptrtoint ptr %regs.i.i61 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %regs.i.i61, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  tail call void @arm_heavy_mb() #10
  %registers.i.i.i65 = getelementptr inbounds %struct.fw_ohci, ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %registers.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %registers.i.i.i65, align 8
  %add.ptr.i.i.i66 = getelementptr i8, ptr %102, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i66, i32 1048576) #10, !srcloc !420
  %i.0.in.i67 = add nuw nsw i32 %i.013.i, 1
  %i.0.i68 = and i32 %i.0.in.i67, 7
  %cmp.not.i69 = icmp eq i32 %i.0.i68, %i.0.lcssa.i
  br i1 %cmp.not.i69, label %while.body.i70.cleanup21_crit_edge, label %while.body.i70.while.body.i70_crit_edge

while.body.i70.while.body.i70_crit_edge:          ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i70

while.body.i70.cleanup21_crit_edge:               ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

error:                                            ; preds = %if.then.i59, %if.then16.error_crit_edge, %if.then14.error_crit_edge, %if.then3.error_crit_edge
  %103 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %pointer, align 4
  br label %cleanup21

cleanup21:                                        ; preds = %error, %while.body.i70.cleanup21_crit_edge, %if.end18.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @handle_ar_packets(ptr noundef readonly %ctx, ptr noundef %p, ptr noundef readnone %end) unnamed_addr #2 align 64 {
entry:
  %p.i = alloca %struct.fw_packet, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %header.i = getelementptr inbounds %struct.fw_packet, ptr %p.i, i32 0, i32 2
  %arrayidx5.i = getelementptr inbounds %struct.fw_packet, ptr %p.i, i32 0, i32 2, i32 1
  %arrayidx8.i = getelementptr inbounds %struct.fw_packet, ptr %p.i, i32 0, i32 2, i32 2
  %arrayidx23.i = getelementptr inbounds %struct.fw_packet, ptr %p.i, i32 0, i32 2, i32 3
  %header_length24.i = getelementptr inbounds %struct.fw_packet, ptr %p.i, i32 0, i32 3
  %payload_length28.i = getelementptr inbounds %struct.fw_packet, ptr %p.i, i32 0, i32 5
  %payload.i = getelementptr inbounds %struct.fw_packet, ptr %p.i, i32 0, i32 4
  %ack.i = getelementptr inbounds %struct.fw_packet, ptr %p.i, i32 0, i32 10
  %timestamp.i = getelementptr inbounds %struct.fw_packet, ptr %p.i, i32 0, i32 8
  %generation.i = getelementptr inbounds %struct.fw_packet, ptr %p.i, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %handle_ar_packet.exit.while.cond_crit_edge, %entry
  %p.addr.0 = phi ptr [ %p, %entry ], [ %add.ptr70.i, %handle_ar_packet.exit.while.cond_crit_edge ]
  %cmp = icmp ult ptr %p.addr.0, %end
  br i1 %cmp, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %p.i) #10
  %2 = call ptr @memset(ptr %p.i, i32 255, i32 68)
  %3 = ptrtoint ptr %p.addr.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p.addr.0, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4) #10
  %6 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %header.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %p.addr.0, i32 1
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #10
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %p.addr.0, i32 2
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx8.i, align 4
  %shr.i = lshr i32 %5, 4
  %and.i = and i32 %shr.i, 15
  %15 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %and.i, label %sw.default.i [
    i32 0, label %while.body.sw.bb.i_crit_edge
    i32 6, label %while.body.sw.bb.i_crit_edge40
    i32 5, label %sw.bb14.i
    i32 1, label %while.body.sw.bb20.i_crit_edge
    i32 7, label %while.body.sw.bb20.i_crit_edge41
    i32 9, label %while.body.sw.bb20.i_crit_edge42
    i32 11, label %while.body.sw.bb20.i_crit_edge43
    i32 2, label %while.body.sw.epilog.sink.split.i_crit_edge
    i32 4, label %while.body.sw.epilog.sink.split.i_crit_edge44
    i32 14, label %while.body.sw.epilog.sink.split.i_crit_edge45
  ]

while.body.sw.epilog.sink.split.i_crit_edge45:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

while.body.sw.epilog.sink.split.i_crit_edge44:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

while.body.sw.epilog.sink.split.i_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

while.body.sw.bb20.i_crit_edge43:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20.i

while.body.sw.bb20.i_crit_edge42:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20.i

while.body.sw.bb20.i_crit_edge41:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20.i

while.body.sw.bb20.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20.i

while.body.sw.bb.i_crit_edge40:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

while.body.sw.bb.i_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %while.body.sw.bb.i_crit_edge, %while.body.sw.bb.i_crit_edge40
  %arrayidx11.i = getelementptr i32, ptr %p.addr.0, i32 3
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11.i, align 4
  br label %sw.epilog.sink.split.sink.split.i

sw.bb14.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx15.i = getelementptr i32, ptr %p.addr.0, i32 3
  %18 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #10
  br label %sw.epilog.sink.split.sink.split.i

sw.bb20.i:                                        ; preds = %while.body.sw.bb20.i_crit_edge, %while.body.sw.bb20.i_crit_edge41, %while.body.sw.bb20.i_crit_edge42, %while.body.sw.bb20.i_crit_edge43
  %arrayidx21.i = getelementptr i32, ptr %p.addr.0, i32 3
  %21 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx21.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx23.i, align 4
  %25 = ptrtoint ptr %header_length24.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %header_length24.i, align 4
  %shr27.i = lshr i32 %23, 16
  %26 = ptrtoint ptr %payload_length28.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr27.i, ptr %payload_length28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268500991, i32 %23)
  %cmp.i = icmp ugt i32 %23, 268500991
  br i1 %cmp.i, label %if.then.i, label %sw.bb20.i.sw.epilog.i_crit_edge

sw.bb20.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then.i:                                        ; preds = %sw.bb20.i
  %regs.i.i = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 7
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regs.i.i, align 4
  %add.i.i = add i32 %28, 4
  %registers.i.i.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %registers.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %add.i.i
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %32 = and i32 %31, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %if.then.i.handle_ar_packet.exit.thread_crit_edge, label %if.then.i.i

if.then.i.handle_ar_packet.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_ar_packet.exit.thread

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %regs.i.i, align 4
  %add3.i.i = add i32 %34, 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %registers.i.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %36, i32 %add3.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 8388608) #10, !srcloc !420
  %37 = ptrtoint ptr %registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %registers.i.i.i, align 8
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #10, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %handle_ar_packet.exit.thread.sink.split

sw.default.i:                                     ; preds = %while.body
  %regs.i100.i = getelementptr inbounds %struct.ar_context, ptr %ctx, i32 0, i32 7
  %40 = ptrtoint ptr %regs.i100.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regs.i100.i, align 4
  %add.i101.i = add i32 %41, 4
  %registers.i.i102.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %registers.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %registers.i.i102.i, align 8
  %add.ptr.i.i103.i = getelementptr i8, ptr %43, i32 %add.i101.i
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i103.i) #10, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %45 = and i32 %44, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i104.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i104.i, label %sw.default.i.handle_ar_packet.exit.thread_crit_edge, label %if.then.i108.i

sw.default.i.handle_ar_packet.exit.thread_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_ar_packet.exit.thread

if.then.i108.i:                                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %regs.i100.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %regs.i100.i, align 4
  %add3.i105.i = add i32 %47, 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %registers.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %registers.i.i102.i, align 8
  %add.ptr.i10.i106.i = getelementptr i8, ptr %49, i32 %add3.i105.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i106.i, i32 8388608) #10, !srcloc !420
  %50 = ptrtoint ptr %registers.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %registers.i.i102.i, align 8
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  br label %handle_ar_packet.exit.thread.sink.split

sw.epilog.sink.split.sink.split.i:                ; preds = %sw.bb14.i, %sw.bb.i
  %.sink110.i = phi i32 [ %17, %sw.bb.i ], [ %20, %sw.bb14.i ]
  %53 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink110.i, ptr %arrayidx23.i, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.epilog.sink.split.sink.split.i, %while.body.sw.epilog.sink.split.i_crit_edge, %while.body.sw.epilog.sink.split.i_crit_edge44, %while.body.sw.epilog.sink.split.i_crit_edge45
  %.sink.i = phi i32 [ 12, %while.body.sw.epilog.sink.split.i_crit_edge ], [ 12, %while.body.sw.epilog.sink.split.i_crit_edge44 ], [ 12, %while.body.sw.epilog.sink.split.i_crit_edge45 ], [ 16, %sw.epilog.sink.split.sink.split.i ]
  %54 = ptrtoint ptr %header_length24.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink.i, ptr %header_length24.i, align 4
  %55 = ptrtoint ptr %payload_length28.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %payload_length28.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb20.i.sw.epilog.i_crit_edge
  %56 = ptrtoint ptr %header_length24.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %header_length24.i, align 4
  %add.ptr.i = getelementptr i8, ptr %p.addr.0, i32 %57
  %58 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i, ptr %payload.i, align 4
  %59 = ptrtoint ptr %payload_length28.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %payload_length28.i, align 4
  %add.i = add i32 %57, 3
  %add36.i = add i32 %add.i, %60
  %div99.i = lshr i32 %add36.i, 2
  %arrayidx37.i = getelementptr i32, ptr %p.addr.0, i32 %div99.i
  %61 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx37.i, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #10
  %shr38.i = lshr i32 %63, 16
  %and39.i = and i32 %shr38.i, 31
  %sub.i = add nsw i32 %and39.i, -16
  %64 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub.i, ptr %ack.i, align 4
  %shr40.i = lshr i32 %63, 21
  %and41.i = and i32 %shr40.i, 7
  %65 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and41.i, ptr %p.i, align 4
  %and42.i = and i32 %63, 65535
  %66 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and42.i, ptr %timestamp.i, align 4
  %request_generation.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %request_generation.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %request_generation.i, align 4
  %69 = ptrtoint ptr %generation.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %generation.i, align 4
  call fastcc void @log_ar_at_event(ptr noundef %1, i8 noundef zeroext 82, i32 noundef %and41.i, ptr noundef %header.i, i32 noundef %and39.i) #10
  %70 = zext i32 %and39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %and39.i, label %sw.epilog.i.if.else.i_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 9, label %if.then54.i
  ]

sw.epilog.i.if.else.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %71 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %header.i, align 4
  %and48.i = and i32 %72, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %and48.i)
  %cmp49.i = icmp eq i32 %and48.i, 224
  br i1 %cmp49.i, label %if.then50.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then50.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %ack.i, align 4
  br label %if.else.i

if.then54.i:                                      ; preds = %sw.epilog.i
  %quirks.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 5
  %74 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %quirks.i, align 8
  %and55.i = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool.not.i, label %if.then56.i, label %if.then54.i.handle_ar_packet.exit_crit_edge

if.then54.i.handle_ar_packet.exit_crit_edge:      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_ar_packet.exit

if.then56.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx8.i, align 4
  %shr59.i = lshr i32 %77, 16
  %and60.i = and i32 %shr59.i, 255
  %78 = ptrtoint ptr %request_generation.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and60.i, ptr %request_generation.i, align 4
  br label %handle_ar_packet.exit

if.else.i:                                        ; preds = %if.then50.i, %land.lhs.true.i.if.else.i_crit_edge, %sw.epilog.i.if.else.i_crit_edge
  %ar_request_ctx.i = getelementptr inbounds %struct.fw_ohci, ptr %1, i32 0, i32 17
  %cmp63.i = icmp eq ptr %ar_request_ctx.i, %ctx
  br i1 %cmp63.i, label %if.then64.i, label %if.else65.i

if.then64.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @fw_core_handle_request(ptr noundef %1, ptr noundef nonnull %p.i) #10
  br label %handle_ar_packet.exit

if.else65.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @fw_core_handle_response(ptr noundef %1, ptr noundef nonnull %p.i) #10
  br label %handle_ar_packet.exit

handle_ar_packet.exit.thread.sink.split:          ; preds = %if.then.i108.i, %if.then.i.i
  %.str.155.sink = phi ptr [ @.str.155, %if.then.i.i ], [ @.str.156, %if.then.i108.i ]
  %device.i.i = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 1
  %79 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.157, ptr noundef nonnull %.str.155.sink) #13
  br label %handle_ar_packet.exit.thread

handle_ar_packet.exit.thread:                     ; preds = %handle_ar_packet.exit.thread.sink.split, %sw.default.i.handle_ar_packet.exit.thread_crit_edge, %if.then.i.handle_ar_packet.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %p.i) #10
  br label %cleanup

handle_ar_packet.exit:                            ; preds = %if.else65.i, %if.then64.i, %if.then56.i, %if.then54.i.handle_ar_packet.exit_crit_edge
  %add.ptr70.i = getelementptr i32, ptr %arrayidx37.i, i32 1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %p.i) #10
  %tobool.not = icmp eq ptr %add.ptr70.i, null
  br i1 %tobool.not, label %handle_ar_packet.exit.cleanup_crit_edge, label %handle_ar_packet.exit.while.cond_crit_edge

handle_ar_packet.exit.while.cond_crit_edge:       ; preds = %handle_ar_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

handle_ar_packet.exit.cleanup_crit_edge:          ; preds = %handle_ar_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %handle_ar_packet.exit.cleanup_crit_edge, %handle_ar_packet.exit.thread, %while.cond.cleanup_crit_edge
  ret ptr %p.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_dead_contexts(ptr nocapture noundef readonly %ohci) unnamed_addr #2 align 64 {
entry:
  %name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #10
  %registers.i.i = getelementptr inbounds %struct.fw_ohci, ptr %ohci, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %name, align 8
  %1 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 384
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !421
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and.i = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.detect_dead_context.exit_crit_edge, label %do.end.i

entry.detect_dead_context.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %detect_dead_context.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %5 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device.i, align 4
  %and1.i = and i32 %4, 31
  %arrayidx.i = getelementptr [33 x ptr], ptr @evts, i32 0, i32 %and1.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.187, ptr noundef %8) #13
  br label %detect_dead_context.exit

detect_dead_context.exit:                         ; preds = %do.end.i, %entry.detect_dead_context.exit_crit_edge
  %9 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i35 = getelementptr i8, ptr %10, i32 416
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #10, !srcloc !421
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and.i36 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %detect_dead_context.exit.detect_dead_context.exit42_crit_edge, label %do.end.i41

detect_dead_context.exit.detect_dead_context.exit42_crit_edge: ; preds = %detect_dead_context.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %detect_dead_context.exit42

do.end.i41:                                       ; preds = %detect_dead_context.exit
  call void @__sanitizer_cov_trace_pc() #12
  %device.i38 = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %13 = ptrtoint ptr %device.i38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i38, align 4
  %and1.i39 = and i32 %12, 31
  %arrayidx.i40 = getelementptr [33 x ptr], ptr @evts, i32 0, i32 %and1.i39
  %15 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.188, ptr noundef %16) #13
  br label %detect_dead_context.exit42

detect_dead_context.exit42:                       ; preds = %do.end.i41, %detect_dead_context.exit.detect_dead_context.exit42_crit_edge
  %17 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i44 = getelementptr i8, ptr %18, i32 448
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #10, !srcloc !421
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and.i45 = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i46, label %detect_dead_context.exit42.detect_dead_context.exit51_crit_edge, label %do.end.i50

detect_dead_context.exit42.detect_dead_context.exit51_crit_edge: ; preds = %detect_dead_context.exit42
  call void @__sanitizer_cov_trace_pc() #12
  br label %detect_dead_context.exit51

do.end.i50:                                       ; preds = %detect_dead_context.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %device.i47 = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %21 = ptrtoint ptr %device.i47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i47, align 4
  %and1.i48 = and i32 %20, 31
  %arrayidx.i49 = getelementptr [33 x ptr], ptr @evts, i32 0, i32 %and1.i48
  %23 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.189, ptr noundef %24) #13
  br label %detect_dead_context.exit51

detect_dead_context.exit51:                       ; preds = %do.end.i50, %detect_dead_context.exit42.detect_dead_context.exit51_crit_edge
  %25 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i53 = getelementptr i8, ptr %26, i32 480
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #10, !srcloc !421
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and.i54 = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.not.i55 = icmp eq i32 %and.i54, 0
  br i1 %tobool.not.i55, label %detect_dead_context.exit51.detect_dead_context.exit60_crit_edge, label %do.end.i59

detect_dead_context.exit51.detect_dead_context.exit60_crit_edge: ; preds = %detect_dead_context.exit51
  call void @__sanitizer_cov_trace_pc() #12
  br label %detect_dead_context.exit60

do.end.i59:                                       ; preds = %detect_dead_context.exit51
  call void @__sanitizer_cov_trace_pc() #12
  %device.i56 = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  %29 = ptrtoint ptr %device.i56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device.i56, align 4
  %and1.i57 = and i32 %28, 31
  %arrayidx.i58 = getelementptr [33 x ptr], ptr @evts, i32 0, i32 %and1.i57
  %31 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.190, ptr noundef %32) #13
  br label %detect_dead_context.exit60

detect_dead_context.exit60:                       ; preds = %do.end.i59, %detect_dead_context.exit51.detect_dead_context.exit60_crit_edge
  %it_context_support = getelementptr inbounds %struct.fw_ohci, ptr %ohci, i32 0, i32 21
  %device.i65 = getelementptr inbounds %struct.fw_card, ptr %ohci, i32 0, i32 1
  br label %for.body

for.cond2.preheader:                              ; preds = %for.inc
  %ir_context_support = getelementptr inbounds %struct.fw_ohci, ptr %ohci, i32 0, i32 25
  br label %for.body4

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %detect_dead_context.exit60
  %i.079 = phi i32 [ 0, %detect_dead_context.exit60 ], [ %inc, %for.inc.for.body_crit_edge ]
  %33 = ptrtoint ptr %it_context_support to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %it_context_support, align 8
  %shl = shl nuw i32 1, %i.079
  %and = and i32 %34, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.191, i32 noundef %i.079)
  %mul = shl nuw nsw i32 %i.079, 4
  %add = add nuw nsw i32 %mul, 512
  %35 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i62 = getelementptr i8, ptr %36, i32 %add
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62) #10, !srcloc !421
  %38 = call i32 @llvm.bswap.i32(i32 %37) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and.i63 = and i32 %38, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.not.i64 = icmp eq i32 %and.i63, 0
  br i1 %tobool.not.i64, label %if.end.for.inc_crit_edge, label %do.end.i68

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end.i68:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %device.i65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device.i65, align 4
  %and1.i66 = and i32 %38, 31
  %arrayidx.i67 = getelementptr [33 x ptr], ptr @evts, i32 0, i32 %and1.i66
  %41 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i67, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.193, ptr noundef nonnull %name, ptr noundef %42) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end.i68, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body4:                                        ; preds = %for.inc15.for.body4_crit_edge, %for.cond2.preheader
  %i.181 = phi i32 [ 0, %for.cond2.preheader ], [ %inc16, %for.inc15.for.body4_crit_edge ]
  %43 = ptrtoint ptr %ir_context_support to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ir_context_support, align 8
  %shl5 = shl nuw i32 1, %i.181
  %and6 = and i32 %44, %shl5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.body4.for.inc15_crit_edge, label %if.end9

for.body4.for.inc15_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc15

if.end9:                                          ; preds = %for.body4
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.192, i32 noundef %i.181)
  %mul13 = shl nuw nsw i32 %i.181, 5
  %add14 = add nuw nsw i32 %mul13, 1024
  %45 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %registers.i.i, align 8
  %add.ptr.i.i71 = getelementptr i8, ptr %46, i32 %add14
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i71) #10, !srcloc !421
  %48 = call i32 @llvm.bswap.i32(i32 %47) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %and.i72 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %if.end9.for.inc15_crit_edge, label %do.end.i77

if.end9.for.inc15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc15

do.end.i77:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %device.i65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device.i65, align 4
  %and1.i75 = and i32 %48, 31
  %arrayidx.i76 = getelementptr [33 x ptr], ptr @evts, i32 0, i32 %and1.i75
  %51 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i76, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.193, ptr noundef nonnull %name, ptr noundef %52) #13
  br label %for.inc15

for.inc15:                                        ; preds = %do.end.i77, %if.end9.for.inc15_crit_edge, %for.body4.for.inc15_crit_edge
  %inc16 = add nuw nsw i32 %i.181, 1
  %exitcond83.not = icmp eq i32 %inc16, 32
  br i1 %exitcond83.not, label %for.end17, label %for.inc15.for.body4_crit_edge

for.inc15.for.body4_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

for.end17:                                        ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_choose_state(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !279, !281, !282, !283, !284, !285, !286, !288, !289, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !333, !334, !335, !337, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !374, !376, !378, !380, !382, !384, !386, !387, !388, !389, !391, !392, !393, !394, !396, !397, !398, !399, !401, !402, !403, !405, !406, !407, !408}
!llvm.module.flags = !{!410, !411, !412, !413, !414, !415, !416, !417}
!llvm.ident = !{!418}

!0 = !{ptr @__param_quirks, !1, !"__param_quirks", i1 false, i1 false}
!1 = !{!"../drivers/firewire/ohci.c", i32 337, i32 1}
!2 = !{ptr @__UNIQUE_ID_quirkstype236, !1, !"__UNIQUE_ID_quirkstype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_quirks237, !4, !"__UNIQUE_ID_quirks237", i1 false, i1 false}
!4 = !{!"../drivers/firewire/ohci.c", i32 338, i32 1}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/firewire/ohci.c", i32 354, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype238, !6, !"__UNIQUE_ID_debugtype238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug239, !9, !"__UNIQUE_ID_debug239", i1 false, i1 false}
!9 = !{!"../drivers/firewire/ohci.c", i32 355, i32 1}
!10 = !{ptr @__param_remote_dma, !11, !"__param_remote_dma", i1 false, i1 false}
!11 = !{!"../drivers/firewire/ohci.c", i32 363, i32 1}
!12 = !{ptr @__UNIQUE_ID_remote_dmatype240, !11, !"__UNIQUE_ID_remote_dmatype240", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_remote_dma241, !14, !"__UNIQUE_ID_remote_dma241", i1 false, i1 false}
!14 = !{!"../drivers/firewire/ohci.c", i32 364, i32 1}
!15 = !{ptr @__initcall__kmod_firewire_ohci__253_3876_fw_ohci_init6, !16, !"__initcall__kmod_firewire_ohci__253_3876_fw_ohci_init6", i1 false, i1 false}
!16 = !{!"../drivers/firewire/ohci.c", i32 3876, i32 1}
!17 = !{ptr @__exitcall_fw_ohci_cleanup, !18, !"__exitcall_fw_ohci_cleanup", i1 false, i1 false}
!18 = !{!"../drivers/firewire/ohci.c", i32 3877, i32 1}
!19 = !{ptr @__UNIQUE_ID_author254, !20, !"__UNIQUE_ID_author254", i1 false, i1 false}
!20 = !{!"../drivers/firewire/ohci.c", i32 3879, i32 1}
!21 = !{ptr @__UNIQUE_ID_description255, !22, !"__UNIQUE_ID_description255", i1 false, i1 false}
!22 = !{!"../drivers/firewire/ohci.c", i32 3880, i32 1}
!23 = !{ptr @__UNIQUE_ID_file256, !24, !"__UNIQUE_ID_file256", i1 false, i1 false}
!24 = !{!"../drivers/firewire/ohci.c", i32 3881, i32 1}
!25 = !{ptr @__UNIQUE_ID_license257, !24, !"__UNIQUE_ID_license257", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_alias258, !27, !"__UNIQUE_ID_alias258", i1 false, i1 false}
!27 = !{!"../drivers/firewire/ohci.c", i32 3884, i32 1}
!28 = !{ptr @selfid_workqueue, !29, !"selfid_workqueue", i1 false, i1 false}
!29 = !{!"../drivers/firewire/ohci.c", i32 232, i32 33}
!30 = !{ptr @param_quirks, !31, !"param_quirks", i1 false, i1 false}
!31 = !{!"../drivers/firewire/ohci.c", i32 336, i32 12}
!32 = !{ptr @param_debug, !33, !"param_debug", i1 false, i1 false}
!33 = !{!"../drivers/firewire/ohci.c", i32 353, i32 12}
!34 = !{ptr @param_remote_dma, !35, !"param_remote_dma", i1 false, i1 false}
!35 = !{!"../drivers/firewire/ohci.c", i32 362, i32 13}
!36 = !{ptr @__param_str_quirks, !1, !"__param_str_quirks", i1 false, i1 false}
!37 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!38 = !{ptr @__param_str_remote_dma, !11, !"__param_str_remote_dma", i1 false, i1 false}
!39 = !{ptr @fw_ohci_pci_driver, !40, !"fw_ohci_pci_driver", i1 false, i1 false}
!40 = !{!"../drivers/firewire/ohci.c", i32 3850, i32 26}
!41 = !{ptr @ohci_driver_name, !42, !"ohci_driver_name", i1 false, i1 false}
!42 = !{!"../drivers/firewire/ohci.c", i32 261, i32 13}
!43 = !{ptr @pci_table, !44, !"pci_table", i1 false, i1 false}
!44 = !{!"../drivers/firewire/ohci.c", i32 3843, i32 35}
!45 = !{ptr @.str, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/firewire/ohci.c", i32 3557, i32 3}
!47 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.2, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pci_probe._entry, !46, !"_entry", i1 false, i1 false}
!52 = !{ptr @pci_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/firewire/ohci.c", i32 3573, i32 3}
!55 = !{ptr @pci_probe._entry.5, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pci_probe._entry_ptr.7, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @pci_probe.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/firewire/ohci.c", i32 3581, i32 2}
!59 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pci_probe.__key.9, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/firewire/ohci.c", i32 3582, i32 2}
!62 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pci_probe.__key.11, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/firewire/ohci.c", i32 3584, i32 2}
!65 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/firewire/ohci.c", i32 3588, i32 3}
!68 = !{ptr @pci_probe._entry.13, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pci_probe._entry_ptr.15, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/firewire/ohci.c", i32 3595, i32 3}
!72 = !{ptr @pci_probe._entry.16, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @pci_probe._entry_ptr.18, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/firewire/ohci.c", i32 3601, i32 3}
!76 = !{ptr @pci_probe._entry.19, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @pci_probe._entry_ptr.21, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/firewire/ohci.c", i32 3667, i32 3}
!80 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @pci_probe._entry.22, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @pci_probe._entry_ptr.25, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/firewire/ohci.c", i32 3695, i32 3}
!85 = !{ptr @pci_probe._entry.26, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pci_probe._entry_ptr.28, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/firewire/ohci.c", i32 3705, i32 2}
!89 = !{ptr @pci_probe._entry.29, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pci_probe._entry_ptr.31, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ohci_driver, !94, !"ohci_driver", i1 false, i1 false}
!94 = !{!"../drivers/firewire/ohci.c", i32 3496, i32 36}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/firewire/ohci.c", i32 2270, i32 3}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ohci_enable._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ohci_enable._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/firewire/ohci.c", i32 2299, i32 3}
!102 = !{ptr @ohci_enable._entry.36, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ohci_enable._entry_ptr.38, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/firewire/ohci.c", i32 2308, i32 4}
!106 = !{ptr @ohci_enable._entry.39, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ohci_enable._entry_ptr.41, !105, !"_entry_ptr", i1 false, i1 false}
!108 = distinct !{null, !109, !"id", i1 false, i1 false}
!109 = !{!"../drivers/firewire/ohci.c", i32 2242, i32 18}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/firewire/ohci.c", i32 570, i32 2}
!112 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @read_phy_reg._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @read_phy_reg._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/firewire/ohci.c", i32 593, i32 2}
!117 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @write_phy_reg._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @write_phy_reg._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/firewire/ohci.c", i32 1580, i32 2}
!122 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @handle_local_lock._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @handle_local_lock._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/firewire/ohci.c", i32 484, i32 3}
!131 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @log_ar_at_event._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @log_ar_at_event._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/firewire/ohci.c", i32 491, i32 40}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/firewire/ohci.c", i32 495, i32 40}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/firewire/ohci.c", i32 504, i32 3}
!140 = !{ptr @log_ar_at_event._entry.54, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @log_ar_at_event._entry_ptr.56, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/firewire/ohci.c", i32 508, i32 3}
!144 = !{ptr @log_ar_at_event._entry.57, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @log_ar_at_event._entry_ptr.59, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/firewire/ohci.c", i32 512, i32 3}
!148 = !{ptr @log_ar_at_event._entry.60, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @log_ar_at_event._entry_ptr.62, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/firewire/ohci.c", i32 519, i32 3}
!152 = !{ptr @log_ar_at_event._entry.63, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @log_ar_at_event._entry_ptr.65, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/firewire/ohci.c", i32 442, i32 11}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/firewire/ohci.c", i32 442, i32 37}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/firewire/ohci.c", i32 443, i32 11}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/firewire/ohci.c", i32 443, i32 39}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/firewire/ohci.c", i32 444, i32 11}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/firewire/ohci.c", i32 444, i32 36}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/firewire/ohci.c", i32 445, i32 11}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/firewire/ohci.c", i32 445, i32 43}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/firewire/ohci.c", i32 446, i32 11}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/firewire/ohci.c", i32 446, i32 38}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/firewire/ohci.c", i32 447, i32 11}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/firewire/ohci.c", i32 447, i32 36}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/firewire/ohci.c", i32 449, i32 11}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/firewire/ohci.c", i32 449, i32 36}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/firewire/ohci.c", i32 450, i32 35}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/firewire/ohci.c", i32 451, i32 11}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/firewire/ohci.c", i32 452, i32 11}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/firewire/ohci.c", i32 452, i32 35}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/firewire/ohci.c", i32 453, i32 11}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/firewire/ohci.c", i32 455, i32 35}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/firewire/ohci.c", i32 456, i32 35}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/firewire/ohci.c", i32 457, i32 11}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/firewire/ohci.c", i32 458, i32 11}
!200 = !{ptr @evts, !201, !"evts", i1 false, i1 false}
!201 = !{!"../drivers/firewire/ohci.c", i32 441, i32 20}
!202 = !{ptr @.str.89, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/firewire/ohci.c", i32 461, i32 10}
!204 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/firewire/ohci.c", i32 461, i32 29}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/firewire/ohci.c", i32 462, i32 10}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/firewire/ohci.c", i32 463, i32 10}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/firewire/ohci.c", i32 463, i32 29}
!212 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/firewire/ohci.c", i32 464, i32 10}
!214 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/firewire/ohci.c", i32 464, i32 30}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/firewire/ohci.c", i32 465, i32 10}
!218 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/firewire/ohci.c", i32 465, i32 34}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/firewire/ohci.c", i32 466, i32 10}
!222 = !{ptr @.str.99, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/firewire/ohci.c", i32 466, i32 41}
!224 = !{ptr @.str.100, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/firewire/ohci.c", i32 468, i32 10}
!226 = !{ptr @tcodes, !227, !"tcodes", i1 false, i1 false}
!227 = !{!"../drivers/firewire/ohci.c", i32 460, i32 20}
!228 = !{ptr @.str.101, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/firewire/ohci.c", i32 1271, i32 2}
!230 = !{ptr @.str.102, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @context_stop._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @context_stop._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.103, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/firewire/ohci.c", i32 1885, i32 3}
!235 = !{ptr @.str.104, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @bus_reset_work._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @bus_reset_work._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.106, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/firewire/ohci.c", i32 1890, i32 3}
!240 = !{ptr @bus_reset_work._entry.105, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @bus_reset_work._entry_ptr.107, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.109, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/firewire/ohci.c", i32 1904, i32 3}
!244 = !{ptr @bus_reset_work._entry.108, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @bus_reset_work._entry_ptr.110, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.112, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/firewire/ohci.c", i32 1916, i32 3}
!248 = !{ptr @bus_reset_work._entry.111, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @bus_reset_work._entry_ptr.113, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.115, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/firewire/ohci.c", i32 1936, i32 5}
!252 = !{ptr @bus_reset_work._entry.114, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @bus_reset_work._entry_ptr.116, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.118, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/firewire/ohci.c", i32 1941, i32 4}
!256 = !{ptr @bus_reset_work._entry.117, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @bus_reset_work._entry_ptr.119, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.121, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/firewire/ohci.c", i32 1951, i32 4}
!260 = !{ptr @bus_reset_work._entry.120, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @bus_reset_work._entry_ptr.122, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.124, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/firewire/ohci.c", i32 1958, i32 3}
!264 = !{ptr @bus_reset_work._entry.123, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @bus_reset_work._entry_ptr.125, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/firewire/ohci.c", i32 1979, i32 3}
!268 = !{ptr @bus_reset_work._entry.126, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @bus_reset_work._entry_ptr.128, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/firewire/ohci.c", i32 1837, i32 3}
!272 = !{ptr @find_and_insert_self_id._entry, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @find_and_insert_self_id._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.130, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/firewire/ohci.c", i32 422, i32 2}
!276 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @log_selfids._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @log_selfids._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.133, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/firewire/ohci.c", i32 427, i32 4}
!281 = !{ptr @log_selfids._entry.132, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @log_selfids._entry_ptr.134, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.135, !280, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.137, !280, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.139, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/firewire/ohci.c", i32 434, i32 4}
!288 = !{ptr @log_selfids._entry.138, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @log_selfids._entry_ptr.140, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @port, !291, !"port", i1 false, i1 false}
!291 = !{!"../drivers/firewire/ohci.c", i32 408, i32 19}
!292 = !{ptr @.str.141, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/firewire/ohci.c", i32 402, i32 8}
!294 = !{ptr @.str.142, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/firewire/ohci.c", i32 402, i32 22}
!296 = !{ptr @.str.143, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/firewire/ohci.c", i32 402, i32 36}
!298 = !{ptr @.str.144, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/firewire/ohci.c", i32 402, i32 53}
!300 = !{ptr @speed, !301, !"speed", i1 false, i1 false}
!301 = !{!"../drivers/firewire/ohci.c", i32 401, i32 20}
!302 = !{ptr @.str.145, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/firewire/ohci.c", i32 405, i32 8}
!304 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/firewire/ohci.c", i32 405, i32 22}
!306 = !{ptr @.str.147, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/firewire/ohci.c", i32 405, i32 36}
!308 = !{ptr @.str.148, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/firewire/ohci.c", i32 405, i32 53}
!310 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/firewire/ohci.c", i32 406, i32 8}
!312 = !{ptr @.str.150, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/firewire/ohci.c", i32 406, i32 22}
!314 = !{ptr @.str.151, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/firewire/ohci.c", i32 406, i32 36}
!316 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/firewire/ohci.c", i32 406, i32 53}
!318 = !{ptr @power, !319, !"power", i1 false, i1 false}
!319 = !{!"../drivers/firewire/ohci.c", i32 404, i32 20}
!320 = !{ptr @ohci_quirks, !321, !"ohci_quirks", i1 false, i1 false}
!321 = !{!"../drivers/firewire/ohci.c", i32 285, i32 3}
!322 = !{ptr @.str.153, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/firewire/ohci.c", i32 956, i32 26}
!324 = !{ptr @.str.154, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/firewire/ohci.c", i32 765, i32 25}
!326 = !{ptr @.str.155, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/firewire/ohci.c", i32 831, i32 26}
!328 = !{ptr @.str.156, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/firewire/ohci.c", i32 844, i32 25}
!330 = !{ptr @.str.157, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/firewire/ohci.c", i32 697, i32 3}
!332 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @ar_context_abort._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @ar_context_abort._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.159, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/firewire/ohci.c", i32 2117, i32 3}
!337 = !{ptr @.str.160, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @irq_handler._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @irq_handler._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.162, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/firewire/ohci.c", i32 2125, i32 4}
!342 = !{ptr @irq_handler._entry.161, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @irq_handler._entry_ptr.163, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.165, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/firewire/ohci.c", i32 2130, i32 4}
!346 = !{ptr @irq_handler._entry.164, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @irq_handler._entry_ptr.166, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.168, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/firewire/ohci.c", i32 2143, i32 4}
!350 = !{ptr @irq_handler._entry.167, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @irq_handler._entry_ptr.169, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.170, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/firewire/ohci.c", i32 376, i32 2}
!354 = !{ptr @.str.171, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @log_irqs._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @log_irqs._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.172, !353, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.173, !353, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.174, !353, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @.str.175, !353, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.176, !353, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.177, !353, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @.str.178, !353, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @.str.179, !353, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.180, !353, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.181, !353, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.182, !353, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.183, !353, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.184, !353, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.185, !353, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.186, !353, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.187, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/firewire/ohci.c", i32 1664, i32 28}
!374 = !{ptr @.str.188, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/firewire/ohci.c", i32 1665, i32 28}
!376 = !{ptr @.str.189, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/firewire/ohci.c", i32 1666, i32 28}
!378 = !{ptr @.str.190, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/firewire/ohci.c", i32 1667, i32 28}
!380 = !{ptr @.str.191, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/firewire/ohci.c", i32 1671, i32 17}
!382 = !{ptr @.str.192, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/firewire/ohci.c", i32 1677, i32 17}
!384 = !{ptr @.str.193, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/firewire/ohci.c", i32 1655, i32 3}
!386 = !{ptr @.str.194, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @detect_dead_context._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @detect_dead_context._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.195, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/firewire/ohci.c", i32 3789, i32 2}
!391 = !{ptr @.str.196, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @pci_remove._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @pci_remove._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.197, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/firewire/ohci.c", i32 3801, i32 3}
!396 = !{ptr @.str.198, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @pci_suspend._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @pci_suspend._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.200, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/firewire/ohci.c", i32 3806, i32 3}
!401 = !{ptr @pci_suspend._entry.199, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @pci_suspend._entry_ptr.201, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.202, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/firewire/ohci.c", i32 3822, i32 3}
!405 = !{ptr @.str.203, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @pci_resume._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @pci_resume._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.204, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/firewire/ohci.c", i32 3863, i32 37}
!410 = !{i32 1, !"wchar_size", i32 2}
!411 = !{i32 1, !"min_enum_size", i32 4}
!412 = !{i32 8, !"branch-target-enforcement", i32 0}
!413 = !{i32 8, !"sign-return-address", i32 0}
!414 = !{i32 8, !"sign-return-address-all", i32 0}
!415 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!416 = !{i32 7, !"uwtable", i32 1}
!417 = !{i32 7, !"frame-pointer", i32 2}
!418 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!419 = !{i64 2154602923}
!420 = !{i64 6330019}
!421 = !{i64 6330437}
!422 = !{i64 2154603791}
!423 = !{i8 0, i8 2}
!424 = !{i64 2154669719}
!425 = !{i64 2154677177}
!426 = !{i64 2148268112, i64 2148268138, i64 2148268167, i64 2148268201, i64 2148268232, i64 2148268255}
!427 = !{i64 2154212432}
!428 = !{i64 2154213074}
!429 = !{i64 2154213421}
!430 = !{i64 2148270577, i64 2148270603, i64 2148270632, i64 2148270666, i64 2148270697, i64 2148270720}
!431 = !{!"branch_weights", i32 2000, i32 1}
!432 = !{!"auto-init"}
!433 = !{i32 0, i32 33}
!434 = !{!"branch_weights", i32 1, i32 2000}
!435 = !{i64 2154212753}
!436 = !{i64 2154642263}
!437 = !{i64 2148276970, i64 2148277002, i64 2148277031, i64 2148277065, i64 2148277096, i64 2148277119}
!438 = !{i64 2148366051}
!439 = !{i64 2148364938}
!440 = !{i64 2148275357, i64 2148275389, i64 2148275418, i64 2148275452, i64 2148275483, i64 2148275506}
!441 = !{i64 2154725643}
!442 = !{i64 2154608420}
!443 = !{i64 2154614996}
!444 = !{i64 2154618780}
!445 = !{i64 2154622470}
