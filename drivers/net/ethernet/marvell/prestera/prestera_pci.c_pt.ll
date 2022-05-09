; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_pci.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.99 = type { ptr }
%struct.prestera_fw = type { %struct.prestera_fw_rev, ptr, ptr, %struct.prestera_device, ptr, ptr, i32, i32, i32, ptr, [4 x %struct.prestera_fw_cmdq], i8, [4 x %struct.prestera_fw_evtq], i8, %struct.work_struct, ptr, ptr }
%struct.prestera_fw_rev = type { i16, i16, i16 }
%struct.prestera_device = type { ptr, ptr, ptr, %struct.prestera_fw_rev, ptr, ptr, ptr, ptr }
%struct.prestera_fw_cmdq = type { %struct.mutex, ptr, i32 }
%struct.prestera_fw_evtq = type { ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.prestera_fw_header = type { i32, i32, [8 x i8] }

@__initcall__kmod_prestera_pci__341_885_prestera_pci_driver_init6 = internal global ptr @prestera_pci_driver_init, section ".initcall6.init", align 4
@prestera_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @prestera_pci_devices, ptr @prestera_pci_probe, ptr @prestera_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_prestera_pci_driver_exit = internal global ptr @prestera_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file342 = internal constant [69 x i8] c"prestera_pci.file=drivers/net/ethernet/marvell/prestera/prestera_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [34 x i8] c"prestera_pci.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [63 x i8] c"prestera_pci.description=Marvell Prestera switch PCI interface\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prestera_pci\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Prestera DX\00", [20 x i8] zeroinitializer }, align 32
@prestera_pci_devices = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4523, i32 51204, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4523, i32 51212, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@prestera_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 796, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fail to set DMA mask\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"prestera_pci_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_pci.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@prestera_pci_probe._entry_ptr = internal global ptr @prestera_pci_probe._entry, section ".printk_index", align 4
@prestera_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 818, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Prestera FW is ready\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@prestera_pci_probe._entry_ptr.10 = internal global ptr @prestera_pci_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"prestera_fw_wq\00", [17 x i8] zeroinitializer }, align 32
@prestera_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&fw->evt_work)\00", [63 x i8] zeroinitializer }, align 32
@prestera_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 830, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MSI IRQ init failed\0A\00", [43 x i8] zeroinitializer }, align 32
@prestera_pci_probe._entry_ptr.15 = internal global ptr @prestera_pci_probe._entry.13, section ".printk_index", align 4
@prestera_pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 837, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fail to request IRQ\0A\00", [43 x i8] zeroinitializer }, align 32
@prestera_pci_probe._entry_ptr.18 = internal global ptr @prestera_pci_probe._entry.16, section ".printk_index", align 4
@prestera_fw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FW failed to start\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prestera_fw_init\00", [47 x i8] zeroinitializer }, align 32
@prestera_fw_init._entry_ptr = internal global ptr @prestera_fw_init._entry, section ".printk_index", align 4
@prestera_fw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cmdq->cmd_mtx\00", [17 x i8] zeroinitializer }, align 32
@prestera_fw_cmd_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"finish reply from FW is timed out\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prestera_fw_cmd_send\00", [43 x i8] zeroinitializer }, align 32
@prestera_fw_cmd_send._entry_ptr = internal global ptr @prestera_fw_cmd_send._entry, section ".printk_index", align 4
@prestera_fw_cmd_send._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 402, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reply from FW is timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@prestera_fw_cmd_send._entry_ptr.26 = internal global ptr @prestera_fw_cmd_send._entry.24, section ".printk_index", align 4
@prestera_fw_cmd_send._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 409, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ret_size (%u) > out_len(%zu)\0A\00", [34 x i8] zeroinitializer }, align 32
@prestera_fw_cmd_send._entry_ptr.29 = internal global ptr @prestera_fw_cmd_send._entry.27, section ".printk_index", align 4
@prestera_fw_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 744, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"waiting for FW loader is timed out\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prestera_fw_load\00", [47 x i8] zeroinitializer }, align 32
@prestera_fw_load._entry_ptr = internal global ptr @prestera_fw_load._entry, section ".printk_index", align 4
@prestera_fw_load._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 762, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FW image header is invalid\0A\00", [36 x i8] zeroinitializer }, align 32
@prestera_fw_load._entry_ptr.34 = internal global ptr @prestera_fw_load._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mrvl/prestera/mvsw_prestera_fw-v%u.%u.img\00", [54 x i8] zeroinitializer }, align 32
@prestera_fw_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 711, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"missing latest %s firmware, fall-back to previous %u.%u version\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"prestera_fw_get\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@prestera_fw_get._entry_ptr = internal global ptr @prestera_fw_get._entry, section ".printk_index", align 4
@prestera_fw_get._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.4, i32 716, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to request previous firmware: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@prestera_fw_get._entry_ptr.41 = internal global ptr @prestera_fw_get._entry.39, section ".printk_index", align 4
@prestera_fw_get._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.4, i32 721, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Loading %s ...\00", [17 x i8] zeroinitializer }, align 32
@prestera_fw_get._entry_ptr.44 = internal global ptr @prestera_fw_get._entry.42, section ".printk_index", align 4
@prestera_fw_hdr_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 680, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FW img hdr magic is invalid\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prestera_fw_hdr_parse\00", [42 x i8] zeroinitializer }, align 32
@prestera_fw_hdr_parse._entry_ptr = internal global ptr @prestera_fw_hdr_parse._entry, section ".printk_index", align 4
@prestera_fw_hdr_parse._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 687, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FW version '%u.%u.%u'\0A\00", [41 x i8] zeroinitializer }, align 32
@prestera_fw_hdr_parse._entry_ptr.49 = internal global ptr @prestera_fw_hdr_parse._entry.47, section ".printk_index", align 4
@prestera_fw_rev_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 665, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Driver supports FW version only '%u.%u.x'\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prestera_fw_rev_check\00", [42 x i8] zeroinitializer }, align 32
@prestera_fw_rev_check._entry_ptr = internal global ptr @prestera_fw_rev_check._entry, section ".printk_index", align 4
@prestera_ldr_fw_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 610, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Loader is not ready to load image\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prestera_ldr_fw_send\00", [43 x i8] zeroinitializer }, align 32
@prestera_ldr_fw_send._entry_ptr = internal global ptr @prestera_ldr_fw_send._entry, section ".printk_index", align 4
@prestera_ldr_fw_send._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 637, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FW img has bad CRC\0A\00", [44 x i8] zeroinitializer }, align 32
@prestera_ldr_fw_send._entry_ptr.56 = internal global ptr @prestera_ldr_fw_send._entry.54, section ".printk_index", align 4
@prestera_ldr_fw_send._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.4, i32 640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Loader has no enough mem\0A\00", [38 x i8] zeroinitializer }, align 32
@prestera_ldr_fw_send._entry_ptr.59 = internal global ptr @prestera_ldr_fw_send._entry.57, section ".printk_index", align 4
@prestera_ldr_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 586, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed wait for sending firmware\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prestera_ldr_send\00", [46 x i8] zeroinitializer }, align 32
@prestera_ldr_send._entry_ptr = internal global ptr @prestera_ldr_send._entry, section ".printk_index", align 4
@prestera_ldr_wait_dl_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.4, i32 557, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Timeout to load FW img [state=%d]\00", [62 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"prestera_ldr_wait_dl_finish\00", [36 x i8] zeroinitializer }, align 32
@prestera_ldr_wait_dl_finish._entry_ptr = internal global ptr @prestera_ldr_wait_dl_finish._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"prestera_pci_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 879, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 885, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 880, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"prestera_pci_devices\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 872, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 796, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 818, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 820, i32 27 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 826, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 830, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 837, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 457, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 473, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 387, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 402, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 408, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 744, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 762, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 700, i32 37 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 709, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 715, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 721, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 680, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 686, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 664, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 610, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 637, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 640, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 586, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private constant [56 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_pci.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 556, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_license343, ptr @__exitcall_prestera_pci_driver_exit, ptr @__initcall__kmod_prestera_pci__341_885_prestera_pci_driver_init6, ptr @prestera_fw_cmd_send._entry, ptr @prestera_fw_cmd_send._entry.24, ptr @prestera_fw_cmd_send._entry.27, ptr @prestera_fw_cmd_send._entry_ptr, ptr @prestera_fw_cmd_send._entry_ptr.26, ptr @prestera_fw_cmd_send._entry_ptr.29, ptr @prestera_fw_get._entry, ptr @prestera_fw_get._entry.39, ptr @prestera_fw_get._entry.42, ptr @prestera_fw_get._entry_ptr, ptr @prestera_fw_get._entry_ptr.41, ptr @prestera_fw_get._entry_ptr.44, ptr @prestera_fw_hdr_parse._entry, ptr @prestera_fw_hdr_parse._entry.47, ptr @prestera_fw_hdr_parse._entry_ptr, ptr @prestera_fw_hdr_parse._entry_ptr.49, ptr @prestera_fw_init._entry, ptr @prestera_fw_init._entry_ptr, ptr @prestera_fw_load._entry, ptr @prestera_fw_load._entry.32, ptr @prestera_fw_load._entry_ptr, ptr @prestera_fw_load._entry_ptr.34, ptr @prestera_fw_rev_check._entry, ptr @prestera_fw_rev_check._entry_ptr, ptr @prestera_ldr_fw_send._entry, ptr @prestera_ldr_fw_send._entry.54, ptr @prestera_ldr_fw_send._entry.57, ptr @prestera_ldr_fw_send._entry_ptr, ptr @prestera_ldr_fw_send._entry_ptr.56, ptr @prestera_ldr_fw_send._entry_ptr.59, ptr @prestera_ldr_send._entry, ptr @prestera_ldr_send._entry_ptr, ptr @prestera_ldr_wait_dl_finish._entry, ptr @prestera_ldr_wait_dl_finish._entry_ptr, ptr @prestera_pci_driver_exit, ptr @prestera_pci_probe._entry, ptr @prestera_pci_probe._entry.13, ptr @prestera_pci_probe._entry.16, ptr @prestera_pci_probe._entry.7, ptr @prestera_pci_probe._entry_ptr, ptr @prestera_pci_probe._entry_ptr.10, ptr @prestera_pci_probe._entry_ptr.15, ptr @prestera_pci_probe._entry_ptr.18, ptr @prestera_pci_driver, ptr @.str, ptr @.str.1, ptr @prestera_pci_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @prestera_pci_probe.__key, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @prestera_fw_init.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_pci_devices to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_cmd_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_cmd_send._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_cmd_send._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_load._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_get._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_get._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_hdr_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_hdr_parse._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_fw_rev_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_ldr_fw_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_ldr_fw_send._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_ldr_fw_send._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_ldr_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_ldr_wait_dl_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @prestera_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @prestera_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @prestera_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %fw_path.i.i.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @dev_driver_string(ptr noundef %dev) #8
  %call1 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.end.pci_name.exit_crit_edge ]
  %call3 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 20, ptr noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %pci_name.exit
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 1073741823) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 1073741823) #8
  tail call void @pci_set_master(ptr noundef %pdev) #8
  %call.i118 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 568, i32 noundef 3520) #8
  %tobool15.not = icmp eq ptr %call.i118, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %arrayidx = getelementptr ptr, ptr %call18, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %dev19 = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 3
  %ctl_regs = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %ctl_regs, align 4
  %call20 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %arrayidx21 = getelementptr ptr, ptr %call20, i32 4
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx21, align 4
  %pp_regs = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %pp_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pp_regs, align 4
  %10 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev19, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i118, ptr %driver_data.i.i, align 4
  %send_req.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %send_req.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @prestera_fw_send_req, ptr %send_req.i, align 4
  %13 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl_regs, align 4
  %ldr_regs.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 4
  %15 = ptrtoint ptr %ldr_regs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %ldr_regs.i, align 4
  %call.i.i = tail call fastcc i32 @prestera_ldr_wait_reg32(ptr noundef nonnull %call.i118, i32 noundef 0, i32 noundef -267518227) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i120 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i120, label %if.end.i.i121, label %prestera_fw_load.exit.thread.i

prestera_fw_load.exit.thread.i:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end.i.i121:                                    ; preds = %if.end17
  %18 = ptrtoint ptr %ldr_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ldr_regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !133
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %21
  %ldr_ring_buf.i.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 5
  %22 = ptrtoint ptr %ldr_ring_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i.i, ptr %ldr_ring_buf.i.i, align 4
  %23 = ptrtoint ptr %ldr_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ldr_regs.i, align 4
  %add.ptr.i49.i.i = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i.i) #8, !srcloc !133
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %ldr_buf_len.i.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 6
  %27 = ptrtoint ptr %ldr_buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ldr_buf_len.i.i, align 4
  %ldr_wr_idx.i.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 7
  %28 = ptrtoint ptr %ldr_wr_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ldr_wr_idx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %fw_path.i.i.i) #8
  %29 = call ptr @memset(ptr %fw_path.i.i.i, i32 255, i32 128)
  %call1.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_path.i.i.i, i32 noundef 128, ptr noundef nonnull @.str.35, i32 noundef 4, i32 noundef 0) #8
  %bin.i.i.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 1
  %30 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev19, align 4
  %call32.i.i.i = call i32 @request_firmware_direct(ptr noundef %bin.i.i.i, ptr noundef nonnull %fw_path.i.i.i, ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i.i)
  %tobool.not3.i.i.i = icmp eq i32 %call32.i.i.i, 0
  br i1 %tobool.not3.i.i.i, label %if.end.i.i121.prestera_fw_get.exit.i.i_crit_edge, label %if.end.i.i121.if.then4.i.i.i_crit_edge

if.end.i.i121.if.then4.i.i.i_crit_edge:           ; preds = %if.end.i.i121
  br label %if.then4.i.i.i

if.end.i.i121.prestera_fw_get.exit.i.i_crit_edge: ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_fw_get.exit.i.i

if.then4.i.i.i:                                   ; preds = %if.then4.i.i.i.if.then4.i.i.i_crit_edge, %if.end.i.i121.if.then4.i.i.i_crit_edge
  %32 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.36, ptr noundef nonnull %fw_path.i.i.i, i32 noundef 4, i32 noundef 0) #11
  %call.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_path.i.i.i, i32 noundef 128, ptr noundef nonnull @.str.35, i32 noundef 4, i32 noundef 0) #8
  %34 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev19, align 4
  %call3.i.i.i = call i32 @request_firmware_direct(ptr noundef %bin.i.i.i, ptr noundef nonnull %fw_path.i.i.i, ptr noundef %35) #8
  %tobool.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.prestera_fw_get.exit.i.i_crit_edge, label %if.then4.i.i.i.if.then4.i.i.i_crit_edge

if.then4.i.i.i.if.then4.i.i.i_crit_edge:          ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i.i.i

if.then4.i.i.i.prestera_fw_get.exit.i.i_crit_edge: ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_fw_get.exit.i.i

prestera_fw_get.exit.i.i:                         ; preds = %if.then4.i.i.i.prestera_fw_get.exit.i.i_crit_edge, %if.end.i.i121.prestera_fw_get.exit.i.i_crit_edge
  %36 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.43, ptr noundef nonnull %fw_path.i.i.i) #11
  %38 = ptrtoint ptr %call.i118 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 4, ptr %call.i118, align 4
  %min.i.i.i = getelementptr inbounds %struct.prestera_fw_rev, ptr %call.i118, i32 0, i32 1
  %39 = ptrtoint ptr %min.i.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %min.i.i.i, align 2
  %sub.i.i.i = getelementptr inbounds %struct.prestera_fw_rev, ptr %call.i118, i32 0, i32 2
  %40 = ptrtoint ptr %sub.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %sub.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %fw_path.i.i.i) #8
  %41 = ptrtoint ptr %bin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bin.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 891133190, i32 %46)
  %cmp.not.i.i.i = icmp eq i32 %46, 891133190
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %prestera_fw_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.45) #11
  br label %do.end13.i.i

if.end.i.i.i:                                     ; preds = %prestera_fw_get.exit.i.i
  %fw_rev.i.i.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 3, i32 3
  %version_value.i.i.i.i = getelementptr inbounds %struct.prestera_fw_header, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %version_value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %version_value.i.i.i.i, align 4
  %div.i.i.i.i = udiv i32 %50, 1000000
  %conv.i.i.i.i = trunc i32 %div.i.i.i.i to i16
  %51 = ptrtoint ptr %fw_rev.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i.i.i.i, ptr %fw_rev.i.i.i, align 2
  %mul.neg.i.i.i.i = mul i32 %div.i.i.i.i, -1000000
  %sub.i.i.i.i = add i32 %mul.neg.i.i.i.i, %50
  %div2.i.i.i.i = udiv i32 %sub.i.i.i.i, 1000
  %conv3.i.i.i.i = trunc i32 %div2.i.i.i.i to i16
  %min.i.i.i.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 3, i32 3, i32 1
  %52 = ptrtoint ptr %min.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv3.i.i.i.i, ptr %min.i.i.i.i, align 2
  %mul11.neg.i.i.i.i = mul i32 %div2.i.i.i.i, 64536
  %sub12.i.i.i.i = add i32 %mul11.neg.i.i.i.i, %sub.i.i.i.i
  %conv13.i.i.i.i = trunc i32 %sub12.i.i.i.i to i16
  %sub14.i.i.i.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 3, i32 3, i32 2
  %53 = ptrtoint ptr %sub14.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv13.i.i.i.i, ptr %sub14.i.i.i.i, align 2
  %54 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev19, align 4
  %conv8.i.i.i = and i32 %div2.i.i.i.i, 65535
  %conv9.i.i.i = and i32 %sub12.i.i.i.i, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.48, i32 noundef %div.i.i.i.i, i32 noundef %conv8.i.i.i, i32 noundef %conv9.i.i.i) #11
  %56 = ptrtoint ptr %fw_rev.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %fw_rev.i.i.i, align 2
  %58 = ptrtoint ptr %call.i118 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %call.i118, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp.i.i.i.i = icmp eq i16 %57, %59
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.do.end.i.i.i.i_crit_edge

if.end.i.i.i.do.end.i.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %60 = ptrtoint ptr %min.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %min.i.i.i.i, align 2
  %62 = ptrtoint ptr %min.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %min.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %63)
  %cmp8.not.i.i.i.i = icmp ult i16 %61, %63
  br i1 %cmp8.not.i.i.i.i, label %land.lhs.true.i.i.i.i.do.end.i.i.i.i_crit_edge, label %if.end16.i.i

land.lhs.true.i.i.i.i.do.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i.do.end.i.i.i.i_crit_edge, %if.end.i.i.i.do.end.i.i.i.i_crit_edge
  %64 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev19, align 4
  %conv14.i.i.i.i = zext i16 %59 to i32
  %66 = ptrtoint ptr %min.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %min.i.i.i, align 2
  %conv17.i.i.i.i = zext i16 %67 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.50, i32 noundef %conv14.i.i.i.i, i32 noundef %conv17.i.i.i.i) #11
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %do.end.i.i.i.i, %do.end.i.i.i
  %68 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.33) #11
  br label %prestera_fw_load.exit.thread134.i

if.end16.i.i:                                     ; preds = %land.lhs.true.i.i.i.i
  %70 = ptrtoint ptr %bin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bin.i.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %sub.i.i = add i32 %73, -16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %74 = call i32 @llvm.bswap.i32(i32 %sub.i.i) #8
  %75 = ptrtoint ptr %ldr_regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ldr_regs.i, align 4
  %add.ptr.i53.i.i = getelementptr i8, ptr %76, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.i, i32 %74) #8, !srcloc !136
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %ldr_regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ldr_regs.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %78, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i.i, i32 16777216) #8, !srcloc !136
  %79 = ptrtoint ptr %bin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bin.i.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %82, i32 16
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %80, align 4
  %sub21.i.i = add i32 %84, -16
  %call.i56.i.i = call fastcc i32 @prestera_ldr_wait_reg32(ptr noundef %call.i118, i32 noundef 36, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i.i)
  %tobool.not.i57.i.i = icmp eq i32 %call.i56.i.i, 0
  br i1 %tobool.not.i57.i.i, label %if.end16.i.i.for.cond.i.i.i_crit_edge, label %do.end.i59.i.i

if.end16.i.i.for.cond.i.i.i_crit_edge:            ; preds = %if.end16.i.i
  br label %for.cond.i.i.i

do.end.i59.i.i:                                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.52) #11
  br label %prestera_fw_load.exit.thread134.i

for.cond.i.i.i:                                   ; preds = %if.end4.i.i.i.for.cond.i.i.i_crit_edge, %if.end16.i.i.for.cond.i.i.i_crit_edge
  %pos.0.i.i.i = phi i32 [ %add.i.i.i, %if.end4.i.i.i.for.cond.i.i.i_crit_edge ], [ 0, %if.end16.i.i.for.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21.i.i, i32 %pos.0.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %sub21.i.i, %pos.0.i.i.i
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %for.cond.i.i.i.if.end17.i.i.i_crit_edge

for.cond.i.i.i.if.end17.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %add.i.i.i = add i32 %pos.0.i.i.i, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %sub21.i.i)
  %cmp2.i.i.i = icmp ugt i32 %add.i.i.i, %sub21.i.i
  %add.ptr12.i.i.i = getelementptr i8, ptr %add.ptr18.i.i, i32 %pos.0.i.i.i
  br i1 %cmp2.i.i.i, label %if.then11.critedge.i.i.i, label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %for.body.i.i.i
  %call5.i.i.i = call fastcc i32 @prestera_ldr_send(ptr noundef %call.i118, ptr noundef %add.ptr12.i.i.i, i32 noundef 1024) #8
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end4.i.i.i.for.cond.i.i.i_crit_edge, label %if.end4.i.i.i.prestera_fw_load.exit.thread134.i_crit_edge

if.end4.i.i.i.prestera_fw_load.exit.thread134.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_fw_load.exit.thread134.i

if.end4.i.i.i.for.cond.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i

if.then11.critedge.i.i.i:                         ; preds = %for.body.i.i.i
  %sub.i61.i.i = sub i32 %sub21.i.i, %pos.0.i.i.i
  %call13.i.i.i = call fastcc i32 @prestera_ldr_send(ptr noundef %call.i118, ptr noundef %add.ptr12.i.i.i, i32 noundef %sub.i61.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %if.then11.critedge.i.i.i.if.end17.i.i.i_crit_edge, label %if.then11.critedge.i.i.i.prestera_fw_load.exit.thread134.i_crit_edge

if.then11.critedge.i.i.i.prestera_fw_load.exit.thread134.i_crit_edge: ; preds = %if.then11.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_fw_load.exit.thread134.i

if.then11.critedge.i.i.i.if.end17.i.i.i_crit_edge: ; preds = %if.then11.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %if.then11.critedge.i.i.i.if.end17.i.i.i_crit_edge, %for.cond.i.i.i.if.end17.i.i.i_crit_edge
  %87 = ptrtoint ptr %ldr_regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ldr_regs.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %88, i32 36
  %call.i.i.i.i = call i64 @ktime_get() #8
  %add.i.i.i.i.i = add i64 %call.i.i.i.i, 50000000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 554) #8
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !133
  %90 = call i32 @llvm.bswap.i32(i32 %89) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %tobool.not52.i.i.i.i = icmp ult i32 %90, 2
  br i1 %tobool.not52.i.i.i.i, label %if.end17.i.i.i.land.lhs.true.i.i62.i.i_crit_edge, label %if.end17.i.i.i.if.end21.i.i.i_crit_edge

if.end17.i.i.i.if.end21.i.i.i_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i.i

if.end17.i.i.i.land.lhs.true.i.i62.i.i_crit_edge: ; preds = %if.end17.i.i.i
  br label %land.lhs.true.i.i62.i.i

land.lhs.true.i.i62.i.i:                          ; preds = %if.then24.i.i.i.i.land.lhs.true.i.i62.i.i_crit_edge, %if.end17.i.i.i.land.lhs.true.i.i62.i.i_crit_edge
  %call13.i.i.i.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i.i.i, i64 %add.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp sgt i64 %call13.i.i.i.i, %add.i.i.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %for.end.i.i.i.i, label %if.then24.i.i.i.i

if.then24.i.i.i.i:                                ; preds = %land.lhs.true.i.i62.i.i
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #8
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !133
  %92 = call i32 @llvm.bswap.i32(i32 %91) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %tobool.not.i.i.i.i = icmp ult i32 %92, 2
  br i1 %tobool.not.i.i.i.i, label %if.then24.i.i.i.i.land.lhs.true.i.i62.i.i_crit_edge, label %if.then24.i.i.i.i.if.end21.i.i.i_crit_edge

if.then24.i.i.i.i.if.end21.i.i.i_crit_edge:       ; preds = %if.then24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i.i

if.then24.i.i.i.i.land.lhs.true.i.i62.i.i_crit_edge: ; preds = %if.then24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i62.i.i

for.end.i.i.i.i:                                  ; preds = %land.lhs.true.i.i62.i.i
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !133
  %94 = call i32 @llvm.bswap.i32(i32 %93) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %tobool28.not.i.i.i.i = icmp ult i32 %94, 2
  br i1 %tobool28.not.i.i.i.i, label %prestera_ldr_wait_dl_finish.exit.i.i.i, label %for.end.i.i.i.i.if.end21.i.i.i_crit_edge

for.end.i.i.i.i.if.end21.i.i.i_crit_edge:         ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i.i

prestera_ldr_wait_dl_finish.exit.i.i.i:           ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev19, align 4
  %97 = ptrtoint ptr %ldr_regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ldr_regs.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %98, i32 36
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #8, !srcloc !133
  %100 = call i32 @llvm.bswap.i32(i32 %99) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.62, i32 noundef %100) #11
  br label %prestera_fw_load.exit.thread134.i

if.end21.i.i.i:                                   ; preds = %for.end.i.i.i.i.if.end21.i.i.i_crit_edge, %if.then24.i.i.i.i.if.end21.i.i.i_crit_edge, %if.end17.i.i.i.if.end21.i.i.i_crit_edge
  %101 = ptrtoint ptr %ldr_regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ldr_regs.i, align 4
  %add.ptr.i61.i.i.i = getelementptr i8, ptr %102, i32 36
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i.i.i) #8, !srcloc !133
  %104 = call i32 @llvm.bswap.i32(i32 %103) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values)
  switch i32 %104, label %if.end.i [
    i32 4, label %do.end25.i.i.i
    i32 8, label %do.end31.i.i.i
  ]

do.end25.i.i.i:                                   ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.55) #11
  br label %prestera_fw_load.exit.thread134.i

do.end31.i.i.i:                                   ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.58) #11
  br label %prestera_fw_load.exit.thread134.i

prestera_fw_load.exit.thread134.i:                ; preds = %do.end31.i.i.i, %do.end25.i.i.i, %prestera_ldr_wait_dl_finish.exit.i.i.i, %if.then11.critedge.i.i.i.prestera_fw_load.exit.thread134.i_crit_edge, %if.end4.i.i.i.prestera_fw_load.exit.thread134.i_crit_edge, %do.end.i59.i.i, %do.end13.i.i
  %err.0.i.ph.i = phi i32 [ -110, %prestera_ldr_wait_dl_finish.exit.i.i.i ], [ %call13.i.i.i, %if.then11.critedge.i.i.i.prestera_fw_load.exit.thread134.i_crit_edge ], [ -22, %do.end25.i.i.i ], [ -12, %do.end31.i.i.i ], [ %call.i56.i.i, %do.end.i59.i.i ], [ -22, %do.end13.i.i ], [ %call5.i.i.i, %if.end4.i.i.i.prestera_fw_load.exit.thread134.i_crit_edge ]
  %110 = ptrtoint ptr %bin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bin.i.i.i, align 4
  call void @release_firmware(ptr noundef %111) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end21.i.i.i
  %112 = ptrtoint ptr %bin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bin.i.i.i, align 4
  call void @release_firmware(ptr noundef %113) #8
  %114 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ctl_regs, align 4
  %call.i112.i = call i64 @ktime_get() #8
  %add.i.i113.i = add i64 %call.i112.i, 20000000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 347) #8
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1095041334, i32 %116)
  %cmp1241.i.i = icmp eq i32 %116, -1095041334
  br i1 %cmp1241.i.i, label %if.end.i.if.end7.i_crit_edge, label %if.end.i.if.end15.i.i_crit_edge

if.end.i.if.end15.i.i_crit_edge:                  ; preds = %if.end.i
  br label %if.end15.i.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.end15.i.i:                                     ; preds = %if.then28.i.i.if.end15.i.i_crit_edge, %if.end.i.if.end15.i.i_crit_edge
  %call16.i.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i.i, i64 %add.i.i113.i)
  %cmp3.i.i.i = icmp sgt i64 %call16.i.i, %add.i.i113.i
  br i1 %cmp3.i.i.i, label %prestera_fw_wait_reg32.exit.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.end15.i.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  %cmp12.i.i = icmp eq i32 %117, -1095041334
  br i1 %cmp12.i.i, label %if.then28.i.i.if.end7.i_crit_edge, label %if.then28.i.i.if.end15.i.i_crit_edge

if.then28.i.i.if.end15.i.i_crit_edge:             ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then28.i.i.if.end7.i_crit_edge:                ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

prestera_fw_wait_reg32.exit.i:                    ; preds = %if.end15.i.i
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1095041334, i32 %118)
  %cmp31.i.i = icmp eq i32 %118, -1095041334
  br i1 %cmp31.i.i, label %prestera_fw_wait_reg32.exit.i.if.end7.i_crit_edge, label %do.end.i

prestera_fw_wait_reg32.exit.i.if.end7.i_crit_edge: ; preds = %prestera_fw_wait_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

do.end.i:                                         ; preds = %prestera_fw_wait_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end7.i:                                        ; preds = %prestera_fw_wait_reg32.exit.i.if.end7.i_crit_edge, %if.then28.i.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %121 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ctl_regs, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %122, i32 4
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115.i) #8, !srcloc !133
  %124 = call i32 @llvm.bswap.i32(i32 %123) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %add.ptr.i = getelementptr i8, ptr %122, i32 %124
  %cmd_mbox.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 9
  %125 = ptrtoint ptr %cmd_mbox.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %add.ptr.i, ptr %cmd_mbox.i, align 4
  %126 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ctl_regs, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %127, i32 8
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117.i) #8, !srcloc !133
  %129 = call i32 @llvm.bswap.i32(i32 %128) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %cmd_mbox_len.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 8
  %130 = ptrtoint ptr %cmd_mbox_len.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %cmd_mbox_len.i, align 4
  %131 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ctl_regs, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %132, i32 12
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.i) #8, !srcloc !133
  %134 = lshr i32 %133, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %conv.i = trunc i32 %134 to i8
  %cmd_qnum.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 11
  %135 = ptrtoint ptr %cmd_qnum.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv.i, ptr %cmd_qnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp142.not.i = icmp eq i8 %conv.i, 0
  br i1 %cmp142.not.i, label %if.end7.i.for.end.i_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %indvars.iv.i, 24
  %add18.i = add nuw nsw i32 %mul.i, 48
  %136 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ctl_regs, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %137, i32 %add18.i
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121.i) #8, !srcloc !133
  %139 = call i32 @llvm.bswap.i32(i32 %138) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %arrayidx.i = getelementptr %struct.prestera_fw, ptr %call.i118, i32 0, i32 10, i32 %indvars.iv.i
  %add23.i = add nuw nsw i32 %mul.i, 52
  %140 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ctl_regs, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %141, i32 %add23.i
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123.i) #8, !srcloc !133
  %143 = call i32 @llvm.bswap.i32(i32 %142) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %len.i = getelementptr %struct.prestera_fw, ptr %call.i118, i32 0, i32 10, i32 %indvars.iv.i, i32 2
  %144 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %len.i, align 4
  %145 = ptrtoint ptr %cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cmd_mbox.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %146, i32 %139
  %addr.i = getelementptr %struct.prestera_fw, ptr %call.i118, i32 0, i32 10, i32 %indvars.iv.i, i32 1
  %147 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %add.ptr26.i, ptr %addr.i, align 4
  call void @__mutex_init(ptr noundef %arrayidx.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @prestera_fw_init.__key) #8
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %148 = ptrtoint ptr %cmd_qnum.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %cmd_qnum.i, align 4
  %150 = zext i8 %149 to i32
  %cmp.i122 = icmp ult i32 %indvars.iv.next.i, %150
  br i1 %cmp.i122, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  %151 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ctl_regs, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %152, i32 16
  %153 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125.i) #8, !srcloc !133
  %154 = call i32 @llvm.bswap.i32(i32 %153) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %add.ptr31.i = getelementptr i8, ptr %122, i32 %154
  %evt_buf.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 15
  %155 = ptrtoint ptr %evt_buf.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %add.ptr31.i, ptr %evt_buf.i, align 4
  %156 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ctl_regs, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %157, i32 20
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127.i) #8, !srcloc !133
  %159 = lshr i32 %158, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %conv33.i = trunc i32 %159 to i8
  %evt_qnum.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 13
  %160 = ptrtoint ptr %evt_qnum.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv33.i, ptr %evt_qnum.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %161 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %161, i32 noundef 3264, i32 noundef 1500) #12
  %evt_msg.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 16
  %162 = ptrtoint ptr %evt_msg.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call7.i.i, ptr %evt_msg.i, align 4
  %tobool36.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not.i, label %for.end.i.cleanup_crit_edge, label %for.cond39.preheader.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond39.preheader.i:                           ; preds = %for.end.i
  %163 = ptrtoint ptr %evt_qnum.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %evt_qnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %cmp43144.not.i = icmp eq i8 %164, 0
  br i1 %cmp43144.not.i, label %for.cond39.preheader.i.do.end32_crit_edge, label %for.cond39.preheader.i.for.body45.i_crit_edge

for.cond39.preheader.i.for.body45.i_crit_edge:    ; preds = %for.cond39.preheader.i
  br label %for.body45.i

for.cond39.preheader.i.do.end32_crit_edge:        ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

for.body45.i:                                     ; preds = %for.body45.i.for.body45.i_crit_edge, %for.cond39.preheader.i.for.body45.i_crit_edge
  %indvars.iv148.i = phi i32 [ %indvars.iv.next149.i, %for.body45.i.for.body45.i_crit_edge ], [ 0, %for.cond39.preheader.i.for.body45.i_crit_edge ]
  %mul48.i = mul nuw nsw i32 %indvars.iv148.i, 24
  %add50.i = add nuw nsw i32 %mul48.i, 144
  %165 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ctl_regs, align 4
  %add.ptr.i129.i = getelementptr i8, ptr %166, i32 %add50.i
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129.i) #8, !srcloc !133
  %168 = call i32 @llvm.bswap.i32(i32 %167) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %arrayidx53.i = getelementptr %struct.prestera_fw, ptr %call.i118, i32 0, i32 12, i32 %indvars.iv148.i
  %add57.i = add nuw nsw i32 %mul48.i, 148
  %169 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ctl_regs, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %170, i32 %add57.i
  %171 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131.i) #8, !srcloc !133
  %172 = call i32 @llvm.bswap.i32(i32 %171) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %len59.i = getelementptr %struct.prestera_fw, ptr %call.i118, i32 0, i32 12, i32 %indvars.iv148.i, i32 1
  %173 = ptrtoint ptr %len59.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %len59.i, align 4
  %174 = ptrtoint ptr %evt_buf.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %evt_buf.i, align 4
  %add.ptr61.i = getelementptr i8, ptr %175, i32 %168
  %176 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %add.ptr61.i, ptr %arrayidx53.i, align 4
  %indvars.iv.next149.i = add nuw nsw i32 %indvars.iv148.i, 1
  %177 = ptrtoint ptr %evt_qnum.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %evt_qnum.i, align 4
  %179 = zext i8 %178 to i32
  %cmp43.i = icmp ult i32 %indvars.iv.next149.i, %179
  br i1 %cmp43.i, label %for.body45.i.for.body45.i_crit_edge, label %for.body45.i.do.end32_crit_edge

for.body45.i.do.end32_crit_edge:                  ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

for.body45.i.for.body45.i_crit_edge:              ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45.i

do.end32:                                         ; preds = %for.body45.i.do.end32_crit_edge, %for.cond39.preheader.i.do.end32_crit_edge
  %180 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %181, ptr noundef nonnull @.str.8) #11
  %call35 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.11, i32 noundef 16, i32 noundef 1) #8
  %wq = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 2
  %182 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call35, ptr %wq, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.end32.err_wq_alloc_crit_edge, label %do.body40

do.end32.err_wq_alloc_crit_edge:                  ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_wq_alloc

do.body40:                                        ; preds = %do.end32
  %evt_work = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 14
  call void @__init_work(ptr noundef %evt_work, i32 noundef 0) #8
  %183 = ptrtoint ptr %evt_work to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -64, ptr %evt_work, align 4
  %lockdep_map = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 14, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @prestera_pci_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry44 = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 14, i32 1
  %184 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 14, i32 1, i32 1
  %185 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %entry44, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.prestera_fw, ptr %call.i118, i32 0, i32 14, i32 2
  %186 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @prestera_fw_evt_work_fn, ptr %func, align 4
  %call.i123 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp = icmp slt i32 %call.i123, 0
  br i1 %cmp, label %do.end52, label %if.end54

do.end52:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %err_irq_alloc

if.end54:                                         ; preds = %do.body40
  %call55 = call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #8
  %call.i124 = call i32 @request_threaded_irq(i32 noundef %call55, ptr noundef nonnull @prestera_pci_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %call, ptr noundef %call.i118) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool57.not = icmp eq i32 %call.i124, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %err_request_irq

if.end63:                                         ; preds = %if.end54
  %call65 = call i32 @prestera_device_register(ptr noundef %dev19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end63.cleanup_crit_edge, label %err_prestera_dev_register

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_prestera_dev_register:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #8
  %call70 = call ptr @free_irq(i32 noundef %call69, ptr noundef nonnull %call.i118) #8
  br label %err_request_irq

err_request_irq:                                  ; preds = %err_prestera_dev_register, %do.end61
  %err.0 = phi i32 [ %call.i124, %do.end61 ], [ %call65, %err_prestera_dev_register ]
  call void @pci_free_irq_vectors(ptr noundef %pdev) #8
  br label %err_irq_alloc

err_irq_alloc:                                    ; preds = %err_request_irq, %do.end52
  %err.1 = phi i32 [ %call.i123, %do.end52 ], [ %err.0, %err_request_irq ]
  %187 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %wq, align 4
  call void @destroy_workqueue(ptr noundef %188) #8
  br label %err_wq_alloc

err_wq_alloc:                                     ; preds = %err_irq_alloc, %do.end32.err_wq_alloc_crit_edge
  %err.2 = phi i32 [ %err.1, %err_irq_alloc ], [ -12, %do.end32.err_wq_alloc_crit_edge ]
  %189 = ptrtoint ptr %evt_msg.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %evt_msg.i, align 4
  call void @kfree(ptr noundef %190) #8
  br label %cleanup

cleanup:                                          ; preds = %err_wq_alloc, %if.end63.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %do.end.i, %prestera_fw_load.exit.thread134.i, %prestera_fw_load.exit.thread.i, %if.end12.cleanup_crit_edge, %do.end, %pci_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %pci_name.exit.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ %call.i, %do.end ], [ %err.2, %err_wq_alloc ], [ -12, %if.end12.cleanup_crit_edge ], [ %err.0.i.ph.i, %prestera_fw_load.exit.thread134.i ], [ %call.i.i, %prestera_fw_load.exit.thread.i ], [ -12, %for.end.i.cleanup_crit_edge ], [ -110, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.prestera_fw, ptr %1, i32 0, i32 3
  tail call void @prestera_device_unregister(ptr noundef %dev) #8
  %call1 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #8
  %call2 = tail call ptr @free_irq(i32 noundef %call1, ptr noundef %1) #8
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #8
  %wq = getelementptr inbounds %struct.prestera_fw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #8
  %evt_msg.i = getelementptr inbounds %struct.prestera_fw, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %evt_msg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %evt_msg.i, align 4
  tail call void @kfree(ptr noundef %5) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_fw_evt_work_fn(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -516
  %evt_msg = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %evt_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %evt_msg, align 4
  %ctl_regs.i.i = getelementptr i8, ptr %work, i32 -496
  %2 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %5 = and i32 %4, -50331649
  %6 = or i32 %5, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %6) #8, !srcloc !136
  %evt_qnum.i = getelementptr i8, ptr %work, i32 -4
  %9 = ptrtoint ptr %evt_qnum.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %evt_qnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp13.not.i133 = icmp eq i8 %10, 0
  br i1 %cmp13.not.i133, label %entry.while.end_crit_edge, label %for.body.i.preheader.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.body.i.preheader.lr.ph:                       ; preds = %entry
  %recv_msg = getelementptr i8, ptr %work, i32 -472
  %dev = getelementptr i8, ptr %work, i32 -500
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.i.preheader.lr.ph
  %qid.014.i = phi i32 [ 0, %for.body.i.preheader.lr.ph ], [ %qid.014.i.be, %for.body.i.backedge ]
  %conv.i.i = and i32 %qid.014.i, 255
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 24
  %add.i.i = add nuw nsw i32 %mul.i.i, 128
  %add1.i.i = add nuw nsw i32 %mul.i.i, 136
  %11 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %add1.i.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !133
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %15 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %16, i32 %add.i.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i.i) #8, !srcloc !133
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %sub.i.i = sub i32 %14, %18
  %len.i.i.i = getelementptr %struct.prestera_fw, ptr %add.ptr, i32 0, i32 12, i32 %conv.i.i, i32 1
  %19 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i.i, align 4
  %sub8.i.i = add i32 %20, -1
  %and.i.i = and i32 %sub8.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp3.i = icmp ugt i32 %and.i.i, 3
  br i1 %cmp3.i, label %prestera_fw_evtq_pick.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %qid.014.i, 1
  %21 = ptrtoint ptr %evt_qnum.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %evt_qnum.i, align 4
  %conv.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i.backedge_crit_edge, label %for.inc.i.while.end_crit_edge

for.inc.i.while.end_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %cleanup.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %qid.014.i.be = phi i32 [ %inc.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ 0, %cleanup.for.body.i.backedge_crit_edge ]
  br label %for.body.i

prestera_fw_evtq_pick.exit:                       ; preds = %for.body.i
  %conv2.le.i = trunc i32 %qid.014.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv2.le.i)
  %cmp = icmp ult i8 %conv2.le.i, 4
  br i1 %cmp, label %while.body, label %prestera_fw_evtq_pick.exit.while.end_crit_edge

prestera_fw_evtq_pick.exit.while.end_crit_edge:   ; preds = %prestera_fw_evtq_pick.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %prestera_fw_evtq_pick.exit
  %23 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %24, i32 %add.i.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #8, !srcloc !133
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %arrayidx.i.i = getelementptr %struct.prestera_fw, ptr %add.ptr, i32 0, i32 12, i32 %conv.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  %add5.i = add i32 %26, 4
  %31 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i.i.i, align 4
  %sub.i.i99 = add i32 %32, -1
  %and.i.i100 = and i32 %sub.i.i99, %add5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i.i100) #8
  %34 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i.i.i101 = getelementptr i8, ptr %35, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i101, i32 %33) #8, !srcloc !136
  %36 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %37, i32 %add.i.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #8, !srcloc !133
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %40 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %41, i32 %add1.i.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107) #8, !srcloc !133
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %44 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %45, i32 %add.i.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #8, !srcloc !133
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %sub.i = sub i32 %43, %47
  %48 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i.i.i, align 4
  %sub8.i = add i32 %49, -1
  %and.i = and i32 %sub8.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %30)
  %cmp7 = icmp ult i32 %and.i, %30
  br i1 %cmp7, label %do.end, label %while.body.if.end_crit_edge, !prof !144

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 324, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %30)
  %cmp29 = icmp ugt i32 %30, 1500
  br i1 %cmp29, label %do.end46, label %if.end63, !prof !144

do.end46:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 326, i32 noundef 9, ptr noundef null) #8
  %add62 = add i32 %39, %30
  tail call fastcc void @prestera_fw_evtq_rd_set(ptr noundef %add.ptr, i8 noundef zeroext %conv2.le.i, i32 noundef %add62)
  br label %cleanup

if.end63:                                         ; preds = %if.end
  %50 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i.i112 = getelementptr i8, ptr %51, i32 %add.i.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i112) #8, !srcloc !133
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp3.not.i = icmp ult i32 %30, 4
  br i1 %cmp3.not.i, label %if.end63.prestera_fw_evtq_read_buf.exit_crit_edge, label %for.body.lr.ph.i115

if.end63.prestera_fw_evtq_read_buf.exit_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_fw_evtq_read_buf.exit

for.body.lr.ph.i115:                              ; preds = %if.end63
  %div1.i = lshr i32 %30, 2
  br label %for.body.i121

for.body.i121:                                    ; preds = %for.body.i121.for.body.i121_crit_edge, %for.body.lr.ph.i115
  %idx.06.i = phi i32 [ %53, %for.body.lr.ph.i115 ], [ %and.i119, %for.body.i121.for.body.i121_crit_edge ]
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i115 ], [ %inc.i120, %for.body.i121.for.body.i121_crit_edge ]
  %buf32.04.i = phi ptr [ %1, %for.body.lr.ph.i115 ], [ %incdec.ptr.i, %for.body.i121.for.body.i121_crit_edge ]
  %add.ptr.i116 = getelementptr i8, ptr %55, i32 %idx.06.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #8, !srcloc !133
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  %58 = ptrtoint ptr %buf32.04.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %buf32.04.i, align 4
  %add5.i117 = add i32 %idx.06.i, 4
  %59 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i.i, align 4
  %sub.i118 = add i32 %60, -1
  %and.i119 = and i32 %sub.i118, %add5.i117
  %incdec.ptr.i = getelementptr i32, ptr %buf32.04.i, i32 1
  %inc.i120 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i120, %div1.i
  br i1 %exitcond.not.i, label %for.body.i121.prestera_fw_evtq_read_buf.exit_crit_edge, label %for.body.i121.for.body.i121_crit_edge

for.body.i121.for.body.i121_crit_edge:            ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i121

for.body.i121.prestera_fw_evtq_read_buf.exit_crit_edge: ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_fw_evtq_read_buf.exit

prestera_fw_evtq_read_buf.exit:                   ; preds = %for.body.i121.prestera_fw_evtq_read_buf.exit_crit_edge, %if.end63.prestera_fw_evtq_read_buf.exit_crit_edge
  %idx.0.lcssa.i = phi i32 [ %53, %if.end63.prestera_fw_evtq_read_buf.exit_crit_edge ], [ %and.i119, %for.body.i121.prestera_fw_evtq_read_buf.exit_crit_edge ]
  %61 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i.i.i, align 4
  %sub.i.i123 = add i32 %62, -1
  %and.i.i124 = and i32 %sub.i.i123, %idx.0.lcssa.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %and.i.i124) #8
  %64 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i.i.i125 = getelementptr i8, ptr %65, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i125, i32 %63) #8, !srcloc !136
  %66 = ptrtoint ptr %recv_msg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %recv_msg, align 4
  %tobool65.not = icmp eq ptr %67, null
  br i1 %tobool65.not, label %prestera_fw_evtq_read_buf.exit.cleanup_crit_edge, label %if.then66

prestera_fw_evtq_read_buf.exit.cleanup_crit_edge: ; preds = %prestera_fw_evtq_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then66:                                        ; preds = %prestera_fw_evtq_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = tail call i32 %67(ptr noundef %dev, ptr noundef %1, i32 noundef %30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %prestera_fw_evtq_read_buf.exit.cleanup_crit_edge, %do.end46
  %68 = ptrtoint ptr %evt_qnum.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %evt_qnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp13.not.i = icmp eq i8 %69, 0
  br i1 %cmp13.not.i, label %cleanup.while.end_crit_edge, label %cleanup.for.body.i.backedge_crit_edge

cleanup.for.body.i.backedge_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.backedge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %prestera_fw_evtq_pick.exit.while.end_crit_edge, %for.inc.i.while.end_crit_edge, %entry.while.end_crit_edge
  %70 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i.i127 = getelementptr i8, ptr %71, i32 24
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %73 = and i32 %72, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i3.i128 = getelementptr i8, ptr %75, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i128, i32 %73) #8, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_pci_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_regs.i = getelementptr inbounds %struct.prestera_fw, ptr %dev_id, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %ctl_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %ctl_regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctl_regs.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #8, !srcloc !136
  %recv_pkt = getelementptr inbounds %struct.prestera_fw, ptr %dev_id, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %recv_pkt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %recv_pkt, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.prestera_fw, ptr %dev_id, i32 0, i32 3
  tail call void %6(ptr noundef %dev) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %wq = getelementptr inbounds %struct.prestera_fw, ptr %dev_id, i32 0, i32 2
  %7 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wq, align 4
  %evt_work = getelementptr inbounds %struct.prestera_fw, ptr %dev_id, i32 0, i32 14
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %evt_work) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_fw_send_req(ptr noundef %dev, i32 noundef %qid, ptr noundef %in_msg, i32 noundef %in_size, ptr noundef %out_msg, i32 noundef %out_size, i32 noundef %waitms) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %idxprom.i = and i32 %qid, 255
  %arrayidx.i = getelementptr %struct.prestera_fw, ptr %add.ptr, i32 0, i32 10, i32 %idxprom.i
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %waitms)
  %tobool.not.i = icmp eq i32 %waitms, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 30000, i32 %waitms
  %add.i = add i32 %in_size, 3
  %and.i = and i32 %add.i, -4
  %len.i.i = getelementptr %struct.prestera_fw, ptr %add.ptr, i32 0, i32 10, i32 %idxprom.i, i32 2
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp.i = icmp ugt i32 %and.i, %1
  br i1 %cmp.i, label %entry.prestera_fw_cmd_send.exit_crit_edge, label %if.end3.i

entry.prestera_fw_cmd_send.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_fw_cmd_send.exit

if.end3.i:                                        ; preds = %entry
  %mul.i = mul i32 %qid, 24
  %add4.i = add i32 %mul.i, 32
  %add5.i = add i32 %mul.i, 40
  %ctl_regs.i.i = getelementptr i8, ptr %dev, i32 4
  %2 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add5.i
  %call.i.i = tail call i64 @ktime_get() #8
  %add.i.i.i = add i64 %call.i.i, 30000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 347) #8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1241.i.i = icmp eq i32 %4, 0
  br i1 %cmp1241.i.i, label %if.end3.i.if.end10.i_crit_edge, label %if.end3.i.if.end15.i.i_crit_edge

if.end3.i.if.end15.i.i_crit_edge:                 ; preds = %if.end3.i
  br label %if.end15.i.i

if.end3.i.if.end10.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end15.i.i:                                     ; preds = %if.then28.i.i.if.end15.i.i_crit_edge, %if.end3.i.if.end15.i.i_crit_edge
  %call16.i.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call16.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %prestera_fw_wait_reg32.exit.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.end15.i.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  %cmp12.i.i = icmp eq i32 %5, 0
  br i1 %cmp12.i.i, label %if.then28.i.i.if.end10.i_crit_edge, label %if.then28.i.i.if.end15.i.i_crit_edge

if.then28.i.i.if.end15.i.i_crit_edge:             ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then28.i.i.if.end10.i_crit_edge:               ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

prestera_fw_wait_reg32.exit.i:                    ; preds = %if.end15.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp31.i.i = icmp eq i32 %6, 0
  br i1 %cmp31.i.i, label %prestera_fw_wait_reg32.exit.i.if.end10.i_crit_edge, label %do.end.i

prestera_fw_wait_reg32.exit.i.if.end10.i_crit_edge: ; preds = %prestera_fw_wait_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

do.end.i:                                         ; preds = %prestera_fw_wait_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.22) #11
  br label %prestera_fw_cmd_send.exit

if.end10.i:                                       ; preds = %prestera_fw_wait_reg32.exit.i.if.end10.i_crit_edge, %if.then28.i.i.if.end10.i_crit_edge, %if.end3.i.if.end10.i_crit_edge
  %add13.i = add i32 %mul.i, 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %in_size) #8
  %10 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %11, i32 %add13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 %9) #8, !srcloc !136
  %addr.i.i = getelementptr %struct.prestera_fw, ptr %add.ptr, i32 0, i32 10, i32 %idxprom.i, i32 1
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr.i.i, align 4
  tail call void @mmiocpy(ptr noundef %13, ptr noundef %in_msg, i32 noundef %in_size) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %15, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 16777216) #8, !srcloc !136
  %call22.i = tail call fastcc i32 @prestera_fw_wait_reg32(ptr noundef %add.ptr, i32 noundef %add5.i, i32 noundef 1, i32 noundef %spec.store.select.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end30.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.25) #11
  br label %cmd_exit.i

if.end30.i:                                       ; preds = %if.end10.i
  %add33.i = add i32 %mul.i, 44
  %18 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %19, i32 %add33.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85.i) #8, !srcloc !133
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %out_size)
  %cmp35.i = icmp ugt i32 %21, %out_size
  br i1 %cmp35.i, label %do.end40.i, label %if.end43.i

do.end40.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.28, i32 noundef %21, i32 noundef %out_size) #11
  br label %cmd_exit.i

if.end43.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %in_size
  tail call void @mmiocpy(ptr noundef %out_msg, ptr noundef %add.ptr.i, i32 noundef %21) #8
  br label %cmd_exit.i

cmd_exit.i:                                       ; preds = %if.end43.i, %do.end40.i, %do.end27.i
  %err.0.i = phi i32 [ %call22.i, %do.end27.i ], [ -90, %do.end40.i ], [ 0, %if.end43.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %ctl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctl_regs.i.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %27, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 33554432) #8, !srcloc !136
  br label %prestera_fw_cmd_send.exit

prestera_fw_cmd_send.exit:                        ; preds = %cmd_exit.i, %do.end.i, %entry.prestera_fw_cmd_send.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %do.end.i ], [ %err.0.i, %cmd_exit.i ], [ -90, %entry.prestera_fw_cmd_send.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %arrayidx.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prestera_fw_wait_reg32(ptr nocapture noundef readonly %fw, i32 noundef %reg, i32 noundef %cmp, i32 noundef %waitms) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_regs = getelementptr inbounds %struct.prestera_fw, ptr %fw, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %ctl_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %mul = mul i32 %waitms, 1000
  %conv = zext i32 %mul to i64
  %call = tail call i64 @ktime_get() #8
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call, %mul.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 347) #8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !133
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cmp)
  %cmp1241 = icmp eq i32 %3, %cmp
  br i1 %cmp1241, label %entry.for.end_crit_edge, label %if.end15.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end15.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not = icmp eq i32 %mul, 0
  br label %if.end15

if.end15:                                         ; preds = %if.then28.if.end15_crit_edge, %if.end15.lr.ph
  br i1 %tobool.not, label %if.end15.if.then28_crit_edge, label %land.lhs.true

if.end15.if.then28_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

land.lhs.true:                                    ; preds = %if.end15
  %call16 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %if.then20, label %land.lhs.true.if.then28_crit_edge

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !133
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  br label %for.end

if.then28:                                        ; preds = %land.lhs.true.if.then28_crit_edge, %if.end15.if.then28_crit_edge
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !133
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  %cmp12 = icmp eq i32 %7, %cmp
  br i1 %cmp12, label %if.then28.for.end_crit_edge, label %if.then28.if.end15_crit_edge

if.then28.if.end15_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.then28.for.end_crit_edge, %if.then20, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %5, %if.then20 ], [ %cmp, %entry.for.end_crit_edge ], [ %cmp, %if.then28.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %cmp)
  %cmp31 = icmp eq i32 %val.0, %cmp
  %cond = select i1 %cmp31, i32 0, i32 -110
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prestera_ldr_wait_reg32(ptr nocapture noundef readonly %fw, i32 noundef %reg, i32 noundef %cmp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ldr_regs = getelementptr inbounds %struct.prestera_fw, ptr %fw, i32 0, i32 4
  %0 = ptrtoint ptr %ldr_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldr_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 5000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 531) #8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !133
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cmp)
  %cmp122 = icmp eq i32 %3, %cmp
  br i1 %cmp122, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %if.then28.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call16 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %if.then20, label %if.then28

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !133
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  br label %for.end

if.then28:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !133
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %cmp12 = icmp eq i32 %7, %cmp
  br i1 %cmp12, label %if.then28.for.end_crit_edge, label %if.then28.land.lhs.true_crit_edge

if.then28.land.lhs.true_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.then28.for.end_crit_edge, %if.then20, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %5, %if.then20 ], [ %cmp, %entry.for.end_crit_edge ], [ %cmp, %if.then28.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %cmp)
  %cmp31 = icmp eq i32 %val.0, %cmp
  %cond = select i1 %cmp31, i32 0, i32 -110
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prestera_ldr_send(ptr nocapture noundef %fw, ptr nocapture noundef readonly %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ldr_regs.i = getelementptr inbounds %struct.prestera_fw, ptr %fw, i32 0, i32 4
  %0 = ptrtoint ptr %ldr_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldr_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %ldr_buf_len.i = getelementptr inbounds %struct.prestera_fw, ptr %fw, i32 0, i32 6
  %2 = ptrtoint ptr %ldr_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ldr_buf_len.i, align 4
  %ldr_wr_idx.i = getelementptr inbounds %struct.prestera_fw, ptr %fw, i32 0, i32 7
  %4 = ptrtoint ptr %ldr_wr_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ldr_wr_idx.i, align 4
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 543) #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %add.i = add i32 %5, 1
  %sub50.i = sub i32 %7, %add.i
  %sub10.i = add i32 %3, -1
  %and51.i = and i32 %sub50.i, %sub10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and51.i, i32 %len)
  %cmp11.not52.i = icmp ult i32 %and51.i, %len
  br i1 %cmp11.not52.i, label %entry.land.lhs.true.i_crit_edge, label %entry.prestera_ldr_wait_buf.exit_crit_edge

entry.prestera_ldr_wait_buf.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_ldr_wait_buf.exit

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then25.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call14.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then17.i, label %if.then25.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %.pre.i = sub i32 %9, %add.i
  %.pre55.i = and i32 %.pre.i, %sub10.i
  br label %prestera_ldr_wait_buf.exit

if.then25.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %sub.i = sub i32 %11, %add.i
  %and.i = and i32 %sub.i, %sub10.i
  %cmp11.not.i = icmp ult i32 %and.i, %len
  br i1 %cmp11.not.i, label %if.then25.i.land.lhs.true.i_crit_edge, label %if.then25.i.prestera_ldr_wait_buf.exit_crit_edge

if.then25.i.prestera_ldr_wait_buf.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_ldr_wait_buf.exit

if.then25.i.land.lhs.true.i_crit_edge:            ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

prestera_ldr_wait_buf.exit:                       ; preds = %if.then25.i.prestera_ldr_wait_buf.exit_crit_edge, %if.then17.i, %entry.prestera_ldr_wait_buf.exit_crit_edge
  %and32.pre-phi.i = phi i32 [ %and51.i, %entry.prestera_ldr_wait_buf.exit_crit_edge ], [ %.pre55.i, %if.then17.i ], [ %and.i, %if.then25.i.prestera_ldr_wait_buf.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and32.pre-phi.i, i32 %len)
  %cmp33.not.i.not = icmp ult i32 %and32.pre-phi.i, %len
  br i1 %cmp33.not.i.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %prestera_ldr_wait_buf.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp20.not = icmp eq i32 %len, 0
  br i1 %cmp20.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ldr_ring_buf.i = getelementptr inbounds %struct.prestera_fw, ptr %fw, i32 0, i32 5
  br label %for.body

do.end:                                           ; preds = %prestera_ldr_wait_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.prestera_fw, ptr %fw, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.60) #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.021
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %ldr_ring_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ldr_ring_buf.i, align 4
  %19 = ptrtoint ptr %ldr_wr_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ldr_wr_idx.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %16) #8, !srcloc !136
  %21 = ptrtoint ptr %ldr_wr_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ldr_wr_idx.i, align 4
  %add.i15 = add i32 %22, 4
  %23 = ptrtoint ptr %ldr_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ldr_buf_len.i, align 4
  %sub.i17 = add i32 %24, -1
  %and.i18 = and i32 %sub.i17, %add.i15
  store i32 %and.i18, ptr %ldr_wr_idx.i, align 4
  %add = add i32 %i.021, 4
  %cmp = icmp ult i32 %add, %len
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %25 = ptrtoint ptr %ldr_wr_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ldr_wr_idx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %28 = ptrtoint ptr %ldr_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ldr_regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %27) #8, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prestera_fw_evtq_rd_set(ptr nocapture noundef readonly %fw, i8 noundef zeroext %qid, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom.i = zext i8 %qid to i32
  %len.i = getelementptr %struct.prestera_fw, ptr %fw, i32 0, i32 12, i32 %idxprom.i, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %sub = add i32 %1, -1
  %and = and i32 %sub, %idx
  %mul = mul nuw nsw i32 %idxprom.i, 24
  %add = add nuw nsw i32 %mul, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %ctl_regs.i = getelementptr inbounds %struct.prestera_fw, ptr %fw, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %ctl_regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctl_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_prestera_pci__341_885_prestera_pci_driver_init6, !1, !"__initcall__kmod_prestera_pci__341_885_prestera_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 885, i32 1}
!2 = !{ptr @__exitcall_prestera_pci_driver_exit, !1, !"__exitcall_prestera_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file342, !4, !"__UNIQUE_ID_file342", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 887, i32 1}
!5 = !{ptr @__UNIQUE_ID_license343, !4, !"__UNIQUE_ID_license343", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description344, !7, !"__UNIQUE_ID_description344", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 888, i32 1}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 880, i32 14}
!11 = !{ptr @prestera_pci_driver, !12, !"prestera_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 879, i32 26}
!13 = !{ptr @prestera_pci_devices, !14, !"prestera_pci_devices", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 872, i32 35}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 796, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @prestera_pci_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @prestera_pci_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 818, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @prestera_pci_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @prestera_pci_probe._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 820, i32 27}
!30 = !{ptr @prestera_pci_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 826, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 830, i32 3}
!35 = !{ptr @prestera_pci_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @prestera_pci_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 837, i32 3}
!39 = !{ptr @prestera_pci_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @prestera_pci_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 457, i32 3}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @prestera_fw_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @prestera_fw_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @prestera_fw_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 473, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 387, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @prestera_fw_cmd_send._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @prestera_fw_cmd_send._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 402, i32 3}
!56 = !{ptr @prestera_fw_cmd_send._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @prestera_fw_cmd_send._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 408, i32 3}
!60 = !{ptr @prestera_fw_cmd_send._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @prestera_fw_cmd_send._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 744, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @prestera_fw_load._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @prestera_fw_load._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 762, i32 3}
!69 = !{ptr @prestera_fw_load._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @prestera_fw_load._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 700, i32 37}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 709, i32 4}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @prestera_fw_get._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @prestera_fw_get._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 715, i32 4}
!81 = !{ptr @prestera_fw_get._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @prestera_fw_get._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 721, i32 2}
!85 = !{ptr @prestera_fw_get._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @prestera_fw_get._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 680, i32 3}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @prestera_fw_hdr_parse._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @prestera_fw_hdr_parse._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 686, i32 2}
!94 = !{ptr @prestera_fw_hdr_parse._entry.47, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @prestera_fw_hdr_parse._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 664, i32 2}
!98 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @prestera_fw_rev_check._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @prestera_fw_rev_check._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 610, i32 3}
!103 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @prestera_ldr_fw_send._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @prestera_ldr_fw_send._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 637, i32 3}
!108 = !{ptr @prestera_ldr_fw_send._entry.54, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @prestera_ldr_fw_send._entry_ptr.56, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 640, i32 3}
!112 = !{ptr @prestera_ldr_fw_send._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @prestera_ldr_fw_send._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 586, i32 3}
!116 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @prestera_ldr_send._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @prestera_ldr_send._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_pci.c", i32 556, i32 3}
!121 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @prestera_ldr_wait_dl_finish._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @prestera_ldr_wait_dl_finish._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 4838675}
!134 = !{i64 2156424231}
!135 = !{i64 2156423437}
!136 = !{i64 4838257}
!137 = !{i64 2156430893}
!138 = !{i64 2156431327}
!139 = !{i64 2156407305}
!140 = !{i64 2156407739}
!141 = !{i64 2156398420}
!142 = !{i64 2156397594}
!143 = !{i64 2156401027}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{i64 2156425830}
!146 = !{i64 2156426264}
!147 = !{i64 2156428499}
!148 = !{i64 2156428933}
