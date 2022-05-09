; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-pci-renesas.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-pci-renesas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+renesas_xhci_check_request_fw\22, \22a\22\09"
module asm "\09.weak\09__crc_renesas_xhci_check_request_fw\09\09\09\09"
module asm "\09.long\09__crc_renesas_xhci_check_request_fw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_renesas_xhci_check_request_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22renesas_xhci_check_request_fw\22\09\09\09\09\09"
module asm "__kstrtabns_renesas_xhci_check_request_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xhci_driver_data = type { i64, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@renesas_xhci_check_request_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 615, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to load firmware %s, fallback to ROM\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"renesas_xhci_check_request_fw\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/host/xhci-pci-renesas.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@renesas_xhci_check_request_fw._entry_ptr = internal global ptr @renesas_xhci_check_request_fw._entry, section ".printk_index", align 4
@renesas_xhci_check_request_fw._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 619, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to load firmware %s: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@renesas_xhci_check_request_fw._entry_ptr.8 = internal global ptr @renesas_xhci_check_request_fw._entry.5, section ".printk_index", align 4
@__kstrtab_renesas_xhci_check_request_fw = external dso_local constant [0 x i8], align 1
@__kstrtabns_renesas_xhci_check_request_fw = external dso_local constant [0 x i8], align 1
@__ksymtab_renesas_xhci_check_request_fw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @renesas_xhci_check_request_fw to i32), ptr @__kstrtab_renesas_xhci_check_request_fw, ptr @__kstrtabns_renesas_xhci_check_request_fw }, section "___ksymtab_gpl+renesas_xhci_check_request_fw", align 4
@__UNIQUE_ID_file362 = internal constant [56 x i8] c"xhci_pci_renesas.file=drivers/usb/host/xhci-pci-renesas\00", section ".modinfo", align 1
@__UNIQUE_ID_license363 = internal constant [32 x i8] c"xhci_pci_renesas.license=GPL v2\00", section ".modinfo", align 1
@renesas_check_rom.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xhci_pci_renesas\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"renesas_check_rom\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"External ROM exists\0A\00", [43 x i8] zeroinitializer }, align 32
@renesas_check_rom_state.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"renesas_check_rom_state\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Found ROM version: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@renesas_check_rom_state.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ROM exists\0A\00", [20 x i8] zeroinitializer }, align 32
@renesas_check_rom_state.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown ROM status ...\0A\00", [40 x i8] zeroinitializer }, align 32
@renesas_check_rom_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.2, i32 215, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid ROM..\00", [18 x i8] zeroinitializer }, align 32
@renesas_check_rom_state._entry_ptr = internal global ptr @renesas_check_rom_state._entry, section ".printk_index", align 4
@renesas_fw_check_running.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"renesas_fw_check_running\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FW Download Lock is engaged.\00", [35 x i8] zeroinitializer }, align 32
@renesas_fw_check_running._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 249, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"FW Download Lock is set and FW is not ready. Giving Up.\00", [40 x i8] zeroinitializer }, align 32
@renesas_fw_check_running._entry_ptr = internal global ptr @renesas_fw_check_running._entry, section ".printk_index", align 4
@renesas_fw_check_running._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.2, i32 260, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"FW Download Enable is stale. Giving Up (poweroff/reboot needed).\00", [63 x i8] zeroinitializer }, align 32
@renesas_fw_check_running._entry_ptr.22 = internal global ptr @renesas_fw_check_running._entry.20, section ".printk_index", align 4
@renesas_fw_check_running.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.17, ptr @.str.2, ptr @.str.23, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FW is not ready/loaded yet.\00", [36 x i8] zeroinitializer }, align 32
@renesas_fw_check_running.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.17, ptr @.str.2, ptr @.str.24, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FW is ready.\00", [19 x i8] zeroinitializer }, align 32
@renesas_fw_check_running._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.2, i32 278, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"hardware is in an error state. Giving up (poweroff/reboot needed).\00", [61 x i8] zeroinitializer }, align 32
@renesas_fw_check_running._entry_ptr.27 = internal global ptr @renesas_fw_check_running._entry.25, section ".printk_index", align 4
@renesas_fw_check_running._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.17, ptr @.str.2, i32 284, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"hardware is in an invalid state %lx. Giving up (poweroff/reboot needed).\00", [55 x i8] zeroinitializer }, align 32
@renesas_fw_check_running._entry_ptr.30 = internal global ptr @renesas_fw_check_running._entry.28, section ".printk_index", align 4
@renesas_fw_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013firmware is size %zd is not (4k - 64k).\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"renesas_fw_verify\00", [46 x i8] zeroinitializer }, align 32
@renesas_fw_verify._entry_ptr = internal global ptr @renesas_fw_verify._entry, section ".printk_index", align 4
@renesas_fw_verify._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013no valid firmware header found.\00", [62 x i8] zeroinitializer }, align 32
@renesas_fw_verify._entry_ptr.35 = internal global ptr @renesas_fw_verify._entry.33, section ".printk_index", align 4
@renesas_fw_verify._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013fw ver pointer is outside of the firmware image\00", [46 x i8] zeroinitializer }, align 32
@renesas_fw_verify._entry_ptr.38 = internal global ptr @renesas_fw_verify._entry.36, section ".printk_index", align 4
@renesas_fw_verify._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013got firmware version: %02x.\00", [34 x i8] zeroinitializer }, align 32
@renesas_fw_verify._entry_ptr.41 = internal global ptr @renesas_fw_verify._entry.39, section ".printk_index", align 4
@renesas_load_fw.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas_load_fw\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ROM load failed, falling back on FW load\0A\00", [54 x i8] zeroinitializer }, align 32
@renesas_load_fw.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ROM load success\0A\00", [46 x i8] zeroinitializer }, align 32
@renesas_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.2, i32 576, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"firmware failed to download (%d).\00", [62 x i8] zeroinitializer }, align 32
@renesas_load_fw._entry_ptr = internal global ptr @renesas_load_fw._entry, section ".printk_index", align 4
@renesas_rom_erase.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"renesas_rom_erase\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Performing ROM Erase...\0A\00", [39 x i8] zeroinitializer }, align 32
@renesas_rom_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 392, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ROM erase, magic word write failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@renesas_rom_erase._entry_ptr = internal global ptr @renesas_rom_erase._entry, section ".printk_index", align 4
@renesas_rom_erase._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.46, ptr @.str.2, i32 399, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ROM status read failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@renesas_rom_erase._entry_ptr.51 = internal global ptr @renesas_rom_erase._entry.49, section ".printk_index", align 4
@renesas_rom_erase._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.46, ptr @.str.2, i32 405, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ROM erase set word write failed\0A\00", [63 x i8] zeroinitializer }, align 32
@renesas_rom_erase._entry_ptr.54 = internal global ptr @renesas_rom_erase._entry.52, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@renesas_rom_erase.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.46, ptr @.str.2, ptr @.str.55, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Chip erase timedout: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@renesas_rom_erase.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.46, ptr @.str.2, ptr @.str.56, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ROM Erase... Done success\0A\00", [37 x i8] zeroinitializer }, align 32
@renesas_setup_rom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 453, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting external rom failed: %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"renesas_setup_rom\00", [46 x i8] zeroinitializer }, align 32
@renesas_setup_rom._entry_ptr = internal global ptr @renesas_setup_rom._entry, section ".printk_index", align 4
@renesas_setup_rom._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 463, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ROM Download Step %d failed at position %d bytes with (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@renesas_setup_rom._entry_ptr.61 = internal global ptr @renesas_setup_rom._entry.59, section ".printk_index", align 4
@renesas_setup_rom._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 482, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Final Firmware ROM Download step timed out\0A\00", [52 x i8] zeroinitializer }, align 32
@renesas_setup_rom._entry_ptr.64 = internal global ptr @renesas_setup_rom._entry.62, section ".printk_index", align 4
@renesas_setup_rom._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 498, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Read ROM status failed:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@renesas_setup_rom._entry_ptr.67 = internal global ptr @renesas_setup_rom._entry.65, section ".printk_index", align 4
@renesas_setup_rom.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.58, ptr @.str.2, ptr @.str.68, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Download ROM success\0A\00", [42 x i8] zeroinitializer }, align 32
@renesas_setup_rom._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.58, ptr @.str.2, i32 510, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Download to external ROM TO: %x\0A\00", [63 x i8] zeroinitializer }, align 32
@renesas_setup_rom._entry_ptr.71 = internal global ptr @renesas_setup_rom._entry.69, section ".printk_index", align 4
@renesas_setup_rom.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.58, ptr @.str.2, ptr @.str.72, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Download to external ROM succeeded\0A\00", [60 x i8] zeroinitializer }, align 32
@renesas_setup_rom._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.58, ptr @.str.2, i32 521, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Set ROM execute failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@renesas_setup_rom._entry_ptr.75 = internal global ptr @renesas_setup_rom._entry.73, section ".printk_index", align 4
@renesas_setup_rom._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.58, ptr @.str.2, i32 538, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ROM Exec timed out: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@renesas_setup_rom._entry_ptr.78 = internal global ptr @renesas_setup_rom._entry.76, section ".printk_index", align 4
@renesas_fw_download_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 80, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Read Status failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"renesas_fw_download_image\00", [38 x i8] zeroinitializer }, align 32
@renesas_fw_download_image._entry_ptr = internal global ptr @renesas_fw_download_image._entry, section ".printk_index", align 4
@renesas_fw_download_image._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 89, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout for Set DATAX step: %zd\0A\00", [63 x i8] zeroinitializer }, align 32
@renesas_fw_download_image._entry_ptr.83 = internal global ptr @renesas_fw_download_image._entry.81, section ".printk_index", align 4
@renesas_fw_download_image._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 102, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Write to DATAX failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@renesas_fw_download_image._entry_ptr.86 = internal global ptr @renesas_fw_download_image._entry.84, section ".printk_index", align 4
@renesas_fw_download_image._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.2, i32 112, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Write config for DATAX failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@renesas_fw_download_image._entry_ptr.89 = internal global ptr @renesas_fw_download_image._entry.87, section ".printk_index", align 4
@renesas_fw_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 318, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Firmware Download Step %zd failed at position %zd bytes with (%d).\00", [61 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"renesas_fw_download\00", [44 x i8] zeroinitializer }, align 32
@renesas_fw_download._entry_ptr = internal global ptr @renesas_fw_download._entry, section ".printk_index", align 4
@renesas_fw_download._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 339, ptr @.str.94, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Final Firmware Download step timed out.\00", [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@renesas_fw_download._entry_ptr.95 = internal global ptr @renesas_fw_download._entry.92, section ".printk_index", align 4
@renesas_fw_download._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.91, ptr @.str.2, i32 371, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FW Load timedout\00", [47 x i8] zeroinitializer }, align 32
@renesas_fw_download._entry_ptr.98 = internal global ptr @renesas_fw_download._entry.96, section ".printk_index", align 4
@switch.table.renesas_check_rom_state = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.renesas_check_rom_state.99 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.renesas_fw_check_running = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.renesas_load_fw = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.renesas_load_fw.100 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.renesas_load_fw.101 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.renesas_load_fw.102 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.pcibios_err_to_errno = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.renesas_rom_erase = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.renesas_rom_erase.103 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.108 = internal global [8 x i64] [i64 6, i64 32, i64 129, i64 131, i64 134, i64 135, i64 136, i64 137]
@__sancov_gen_cov_switch_values.109 = internal global [8 x i64] [i64 6, i64 32, i64 129, i64 131, i64 134, i64 135, i64 136, i64 137]
@__sancov_gen_cov_switch_values.110 = internal global [8 x i64] [i64 6, i64 32, i64 129, i64 131, i64 134, i64 135, i64 136, i64 137]
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 614, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 618, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 171, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 191, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 202, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 210, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 215, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 243, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 248, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 259, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 267, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 273, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 277, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 282, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 135, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 142, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 149, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 154, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 563, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 566, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 576, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 387, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 391, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 398, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 405, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 423, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 425, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 452, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 461, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 482, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 497, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 503, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 509, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 514, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 520, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 538, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 79, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 89, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 101, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 111, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 316, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 339, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private constant [39 x i8] c"../drivers/usb/host/xhci-pci-renesas.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 371, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant [37 x i8] c"switch.table.renesas_check_rom_state\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [40 x i8] c"switch.table.renesas_check_rom_state.99\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [38 x i8] c"switch.table.renesas_fw_check_running\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [29 x i8] c"switch.table.renesas_load_fw\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [33 x i8] c"switch.table.renesas_load_fw.100\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [33 x i8] c"switch.table.renesas_load_fw.101\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [33 x i8] c"switch.table.renesas_load_fw.102\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [34 x i8] c"switch.table.pcibios_err_to_errno\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [31 x i8] c"switch.table.renesas_rom_erase\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [35 x i8] c"switch.table.renesas_rom_erase.103\00", align 1
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_file362, ptr @__UNIQUE_ID_license363, ptr @__ksymtab_renesas_xhci_check_request_fw, ptr @renesas_check_rom_state._entry, ptr @renesas_check_rom_state._entry_ptr, ptr @renesas_fw_check_running._entry, ptr @renesas_fw_check_running._entry.20, ptr @renesas_fw_check_running._entry.25, ptr @renesas_fw_check_running._entry.28, ptr @renesas_fw_check_running._entry_ptr, ptr @renesas_fw_check_running._entry_ptr.22, ptr @renesas_fw_check_running._entry_ptr.27, ptr @renesas_fw_check_running._entry_ptr.30, ptr @renesas_fw_download._entry, ptr @renesas_fw_download._entry.92, ptr @renesas_fw_download._entry.96, ptr @renesas_fw_download._entry_ptr, ptr @renesas_fw_download._entry_ptr.95, ptr @renesas_fw_download._entry_ptr.98, ptr @renesas_fw_download_image._entry, ptr @renesas_fw_download_image._entry.81, ptr @renesas_fw_download_image._entry.84, ptr @renesas_fw_download_image._entry.87, ptr @renesas_fw_download_image._entry_ptr, ptr @renesas_fw_download_image._entry_ptr.83, ptr @renesas_fw_download_image._entry_ptr.86, ptr @renesas_fw_download_image._entry_ptr.89, ptr @renesas_fw_verify._entry, ptr @renesas_fw_verify._entry.33, ptr @renesas_fw_verify._entry.36, ptr @renesas_fw_verify._entry.39, ptr @renesas_fw_verify._entry_ptr, ptr @renesas_fw_verify._entry_ptr.35, ptr @renesas_fw_verify._entry_ptr.38, ptr @renesas_fw_verify._entry_ptr.41, ptr @renesas_load_fw._entry, ptr @renesas_load_fw._entry_ptr, ptr @renesas_rom_erase._entry, ptr @renesas_rom_erase._entry.49, ptr @renesas_rom_erase._entry.52, ptr @renesas_rom_erase._entry_ptr, ptr @renesas_rom_erase._entry_ptr.51, ptr @renesas_rom_erase._entry_ptr.54, ptr @renesas_setup_rom._entry, ptr @renesas_setup_rom._entry.59, ptr @renesas_setup_rom._entry.62, ptr @renesas_setup_rom._entry.65, ptr @renesas_setup_rom._entry.69, ptr @renesas_setup_rom._entry.73, ptr @renesas_setup_rom._entry.76, ptr @renesas_setup_rom._entry_ptr, ptr @renesas_setup_rom._entry_ptr.61, ptr @renesas_setup_rom._entry_ptr.64, ptr @renesas_setup_rom._entry_ptr.67, ptr @renesas_setup_rom._entry_ptr.71, ptr @renesas_setup_rom._entry_ptr.75, ptr @renesas_setup_rom._entry_ptr.78, ptr @renesas_xhci_check_request_fw._entry, ptr @renesas_xhci_check_request_fw._entry.5, ptr @renesas_xhci_check_request_fw._entry_ptr, ptr @renesas_xhci_check_request_fw._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.97, ptr @switch.table.renesas_check_rom_state, ptr @switch.table.renesas_check_rom_state.99, ptr @switch.table.renesas_fw_check_running, ptr @switch.table.renesas_load_fw, ptr @switch.table.renesas_load_fw.100, ptr @switch.table.renesas_load_fw.101, ptr @switch.table.renesas_load_fw.102, ptr @switch.table.pcibios_err_to_errno, ptr @switch.table.renesas_rom_erase, ptr @switch.table.renesas_rom_erase.103], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_xhci_check_request_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_xhci_check_request_fw._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_check_rom_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_check_running._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_check_running._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_check_running._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_check_running._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_verify._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_verify._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_verify._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_rom_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_rom_erase._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_rom_erase._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_setup_rom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_setup_rom._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_setup_rom._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_setup_rom._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_setup_rom._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_setup_rom._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_setup_rom._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_download_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_download_image._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_download_image._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_download_image._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_download._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_fw_download._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.renesas_check_rom_state to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.renesas_check_rom_state.99 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.renesas_fw_check_running to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.renesas_load_fw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.renesas_load_fw.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.renesas_load_fw.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.renesas_load_fw.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcibios_err_to_errno to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.renesas_rom_erase to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.renesas_rom_erase.103 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @renesas_xhci_check_request_fw(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %rom_status.i = alloca i16, align 2
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data1 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data1, align 4
  %2 = inttoptr i32 %1 to ptr
  %firmware = getelementptr inbounds %struct.xhci_driver_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %firmware, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !188
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rom_status.i) #6
  %6 = ptrtoint ptr %rom_status.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %rom_status.i, align 2, !annotation !188
  %call.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 246, ptr noundef nonnull %rom_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.renesas_check_rom.exit.thread_crit_edge

entry.renesas_check_rom.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_check_rom.exit.thread

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %rom_status.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rom_status.i, align 2
  %9 = and i16 %8, -32768
  store i16 %9, ptr %rom_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not.i = icmp eq i16 %9, 0
  br i1 %tobool3.not.i, label %if.end.i.renesas_check_rom.exit.thread_crit_edge, label %do.body.i

if.end.i.renesas_check_rom.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_check_rom.exit.thread

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_check_rom.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_xhci_check_request_fw, %if.then9.i)) #6
          to label %if.then [label %if.then9.i], !srcloc !189

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_check_rom.__UNIQUE_ID_ddebug348, ptr noundef %dev.i, ptr noundef nonnull @.str.11) #6
  br label %if.then

renesas_check_rom.exit.thread:                    ; preds = %if.end.i.renesas_check_rom.exit.thread_crit_edge, %entry.renesas_check_rom.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rom_status.i) #6
  br label %if.end7

if.then:                                          ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rom_status.i) #6
  %call2 = call fastcc i32 @renesas_check_rom_state(ptr noundef %pdev)
  %10 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %if.then5 [
    i32 0, label %if.then.cleanup_crit_edge
    i32 -2, label %if.then.if.end7_crit_edge
  ]

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge, %renesas_check_rom.exit.thread
  %has_rom.0.shrunk = phi i1 [ false, %if.then5 ], [ true, %if.then.if.end7_crit_edge ], [ false, %renesas_check_rom.exit.thread ]
  %call8 = call fastcc i32 @renesas_fw_check_running(ptr noundef %pdev)
  %11 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call8, label %if.then13 [
    i32 0, label %if.end7.cleanup_crit_edge
    i32 1, label %if.end15
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %has_rom.0.shrunk, i32 0, i32 %call8
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = call ptr @pci_dev_get(ptr noundef %pdev) #6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call17 = call i32 @firmware_request_nowarn(ptr noundef nonnull %fw, ptr noundef %4, ptr noundef %dev) #6
  call void @pci_dev_put(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end28, label %if.then19

if.then19:                                        ; preds = %if.end15
  br i1 %has_rom.0.shrunk, label %do.end, label %do.end26

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %4) #9
  br label %cleanup

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %4, i32 noundef %call17) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %18 = add i32 %17, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61440, i32 %18)
  %19 = icmp ult i32 %18, -61440
  br i1 %19, label %do.end.i, label %if.end.i60

do.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %17) #9
  br label %exit

if.end.i60:                                       ; preds = %if.end28
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %21)
  %cmp3.not.i = icmp eq i16 %21, -21931
  br i1 %cmp3.not.i, label %if.end11.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #9
  br label %exit

if.end11.i:                                       ; preds = %if.end.i60
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr.i, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23) #6
  %conv13.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %17)
  %cmp14.not.i = icmp ult i32 %add.i, %17
  br i1 %cmp14.not.i, label %if.end32, label %do.end19.i

do.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #9
  br label %exit

if.end32:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i = getelementptr i8, ptr %15, i32 %conv13.i
  %25 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr24.i, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26) #6
  %conv30.i = zext i16 %27 to i32
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv30.i) #9
  %28 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw, align 4
  %call33 = call fastcc i32 @renesas_load_fw(ptr noundef %pdev, ptr noundef %29)
  br label %exit

exit:                                             ; preds = %if.end32, %do.end19.i, %do.end8.i, %do.end.i
  %err.0 = phi i32 [ %call33, %if.end32 ], [ -22, %do.end.i ], [ -22, %do.end8.i ], [ -22, %do.end19.i ]
  %30 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %31) #6
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end26, %do.end, %if.then13, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then13 ], [ 0, %do.end ], [ %call17, %do.end26 ], [ %err.0, %exit ], [ %call2, %if.then.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @renesas_check_rom_state(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  %rom_state = alloca i16, align 2
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rom_state) #6
  %0 = ptrtoint ptr %rom_state to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %rom_state, align 2, !annotation !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #6
  %1 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %version, align 4, !annotation !188
  %call = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 108, ptr noundef nonnull %version) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.i = icmp slt i32 %call, 1
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %switch.tableidx = add i32 %call, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 9
  br i1 %2, label %switch.lookup, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version, align 4
  %and = lshr i32 %4, 8
  %shr = and i32 %and, 65535
  store i32 %shr, ptr %version, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_check_rom_state.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_check_rom_state, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !189

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_check_rom_state.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %6) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %call8 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 246, ptr noundef nonnull %rom_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp.i76 = icmp slt i32 %call8, 1
  br i1 %cmp.i76, label %if.then10.cleanup_crit_edge, label %if.end.i77

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i77:                                       ; preds = %if.then10
  %switch.tableidx90 = add i32 %call8, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx90)
  %7 = icmp ult i32 %switch.tableidx90, 9
  br i1 %7, label %switch.lookup89, label %if.end.i77.cleanup_crit_edge

if.end.i77.cleanup_crit_edge:                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %8 = ptrtoint ptr %rom_state to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rom_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %tobool14.not = icmp sgt i16 %9, -1
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %do.body16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body16:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_check_rom_state.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_check_rom_state, %if.then28)) #6
          to label %do.end32 [label %if.then28], !srcloc !189

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_check_rom_state.__UNIQUE_ID_ddebug350, ptr noundef %dev29, ptr noundef nonnull @.str.14) #6
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body16
  %10 = ptrtoint ptr %rom_state to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rom_state, align 2
  %12 = and i16 %11, 112
  %and34 = zext i16 %12 to i32
  %13 = zext i32 %and34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %and34, label %do.end56 [
    i32 16, label %do.end32.cleanup_crit_edge
    i32 0, label %do.body36
  ]

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body36:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_check_rom_state.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_check_rom_state, %if.then48)) #6
          to label %cleanup [label %if.then48], !srcloc !189

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_check_rom_state.__UNIQUE_ID_ddebug351, ptr noundef %dev49, ptr noundef nonnull @.str.15) #6
  br label %cleanup

do.end56:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.16) #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.renesas_check_rom_state, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

switch.lookup89:                                  ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep91 = getelementptr inbounds [9 x i32], ptr @switch.table.renesas_check_rom_state.99, i32 0, i32 %switch.tableidx90
  %15 = ptrtoint ptr %switch.gep91 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load92 = load i32, ptr %switch.gep91, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup89, %switch.lookup, %do.end56, %if.then48, %do.body36, %do.end32.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.i77.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end32.cleanup_crit_edge ], [ -2, %if.then48 ], [ -5, %do.end56 ], [ -5, %if.end12.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call8, %if.then10.cleanup_crit_edge ], [ -2, %do.body36 ], [ %switch.load, %switch.lookup ], [ -34, %if.end.i.cleanup_crit_edge ], [ %switch.load92, %switch.lookup89 ], [ -34, %if.end.i77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rom_state) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @renesas_fw_check_running(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  %fw_state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_state) #6
  %0 = ptrtoint ptr %fw_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %fw_state, align 1, !annotation !188
  %call = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 244, ptr noundef nonnull %fw_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.i = icmp slt i32 %call, 1
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %switch.tableidx = add i32 %call, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 9
  br i1 %1, label %switch.lookup, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_state, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_fw_check_running.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_fw_check_running, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !189

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_fw_check_running.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.18) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %4 = ptrtoint ptr %fw_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_state, align 1
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %do.end17, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %and21 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %and30 = and i32 %conv, 112
  %7 = zext i32 %and30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %and30, label %do.end73 [
    i32 0, label %do.body31
    i32 16, label %do.body49
    i32 32, label %do.end69
  ]

do.body31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_fw_check_running.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_fw_check_running, %if.then43)) #6
          to label %cleanup [label %if.then43], !srcloc !189

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_fw_check_running.__UNIQUE_ID_ddebug353, ptr noundef %dev44, ptr noundef nonnull @.str.23) #6
  br label %cleanup

do.body49:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_fw_check_running.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_fw_check_running, %if.then61)) #6
          to label %cleanup [label %if.then61], !srcloc !189

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_fw_check_running.__UNIQUE_ID_ddebug354, ptr noundef %dev62, ptr noundef nonnull @.str.24) #6
  br label %cleanup

do.end69:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull @.str.26) #9
  br label %cleanup

do.end73:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %shr = lshr exact i32 %and30, 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.29, i32 noundef %shr) #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.renesas_fw_check_running, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end73, %do.end69, %if.then61, %do.body49, %if.then43, %do.body31, %do.end26, %do.end17, %do.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end17 ], [ -5, %do.end26 ], [ -22, %do.end73 ], [ -19, %do.end69 ], [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.then43 ], [ 0, %if.then61 ], [ %call, %if.then.cleanup_crit_edge ], [ 1, %do.body31 ], [ 0, %do.body49 ], [ %switch.load, %switch.lookup ], [ -34, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_state) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @renesas_load_fw(ptr noundef %pdev, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  %fw_status.i = alloca i8, align 1
  %rom_status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rom_status.i) #6
  %0 = ptrtoint ptr %rom_status.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %rom_status.i, align 2, !annotation !188
  %call.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 246, ptr noundef nonnull %rom_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.renesas_check_rom.exit.thread_crit_edge

entry.renesas_check_rom.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_check_rom.exit.thread

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %rom_status.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %rom_status.i, align 2
  %3 = and i16 %2, -32768
  store i16 %3, ptr %rom_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.not.i = icmp eq i16 %3, 0
  br i1 %tobool3.not.i, label %if.end.i.renesas_check_rom.exit.thread_crit_edge, label %do.body.i

if.end.i.renesas_check_rom.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_check_rom.exit.thread

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_check_rom.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_load_fw, %if.then9.i)) #6
          to label %if.then [label %if.then9.i], !srcloc !189

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_check_rom.__UNIQUE_ID_ddebug348, ptr noundef %dev.i, ptr noundef nonnull @.str.11) #6
  br label %if.then

renesas_check_rom.exit.thread:                    ; preds = %if.end.i.renesas_check_rom.exit.thread_crit_edge, %entry.renesas_check_rom.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rom_status.i) #6
  br label %if.end29

if.then:                                          ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rom_status.i) #6
  call fastcc void @renesas_rom_erase(ptr noundef %pdev)
  %call1 = call fastcc zeroext i1 @renesas_setup_rom(ptr noundef %pdev, ptr noundef %fw)
  br i1 %call1, label %do.body11, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_load_fw.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_load_fw, %if.then10)) #6
          to label %if.end29 [label %if.then10], !srcloc !189

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_load_fw.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.43) #6
  br label %if.end29

do.body11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_load_fw.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_load_fw, %exit.thread)) #6
          to label %exit [label %exit.thread], !srcloc !189

exit.thread:                                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_load_fw.__UNIQUE_ID_ddebug361, ptr noundef %dev24, ptr noundef nonnull @.str.44) #6
  br label %if.end37

if.end29:                                         ; preds = %if.then10, %do.body, %renesas_check_rom.exit.thread
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_status.i) #6
  %6 = ptrtoint ptr %fw_status.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %fw_status.i, align 1, !annotation !188
  %call.i52 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 244, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %if.end29
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp134.not.i = icmp ult i32 %8, 4
  br i1 %cmp134.not.i, label %for.cond.preheader.i.for.body8.i.preheader_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.body8.i.preheader_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i.preheader

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i52)
  %cmp.i.i = icmp slt i32 %call.i52, 1
  br i1 %cmp.i.i, label %if.then.i.renesas_fw_download.exit_crit_edge, label %if.end.i.i

if.then.i.renesas_fw_download.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_fw_download.exit

if.end.i.i:                                       ; preds = %if.then.i
  %switch.tableidx = add i32 %call.i52, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 9
  br i1 %9, label %switch.lookup, label %if.end.i.i.renesas_fw_download.exit_crit_edge

if.end.i.i.renesas_fw_download.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_fw_download.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0135.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call2.i = call fastcc i32 @renesas_fw_download_image(ptr noundef %pdev, ptr noundef %5, i32 noundef %i.0135.i, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i54 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i54, label %for.inc.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i55 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %mul.i = shl i32 %i.0135.i, 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i55, ptr noundef nonnull @.str.90, i32 noundef %i.0135.i, i32 noundef %mul.i, i32 noundef %call2.i) #9
  br label %renesas_fw_download.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0135.i, 1
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw, align 4
  %div93.i = lshr i32 %11, 2
  %cmp.i = icmp ult i32 %inc.i, %div93.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.body8.i.preheader_crit_edge

for.inc.i.for.body8.i.preheader_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i.preheader

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body8.i.preheader:                            ; preds = %for.inc.i.for.body8.i.preheader_crit_edge, %for.cond.preheader.i.for.body8.i.preheader_crit_edge
  br label %for.body8.i

for.body8.i:                                      ; preds = %if.end16.i.for.body8.i_crit_edge, %for.body8.i.preheader
  %i.1136.i = phi i32 [ %inc18.i, %if.end16.i.for.body8.i_crit_edge ], [ 0, %for.body8.i.preheader ]
  %call9.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 245, ptr noundef nonnull %fw_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %if.then11.i

if.then11.i:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp.i94.i = icmp slt i32 %call9.i, 1
  br i1 %cmp.i94.i, label %if.then11.i.renesas_fw_download.exit_crit_edge, label %if.end.i95.i

if.then11.i.renesas_fw_download.exit_crit_edge:   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_fw_download.exit

if.end.i95.i:                                     ; preds = %if.then11.i
  %switch.tableidx88 = add i32 %call9.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx88)
  %12 = icmp ult i32 %switch.tableidx88, 9
  br i1 %12, label %switch.lookup87, label %if.end.i95.i.renesas_fw_download.exit_crit_edge

if.end.i95.i.renesas_fw_download.exit_crit_edge:  ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_fw_download.exit

if.end13.i:                                       ; preds = %for.body8.i
  %13 = ptrtoint ptr %fw_status.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fw_status.i, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not.i = icmp eq i8 %15, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end27.i_crit_edge, label %if.end16.i

if.end13.i.if.end27.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.end16.i:                                       ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 2147480) #6
  %inc18.i = add nuw nsw i32 %i.1136.i, 1
  %exitcond.not.i = icmp eq i32 %inc18.i, 10000
  br i1 %exitcond.not.i, label %do.end25.i, label %if.end16.i.for.body8.i_crit_edge

if.end16.i.for.body8.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i

do.end25.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.93) #9
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end25.i, %if.end13.i.if.end27.i_crit_edge
  %call28.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 244, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.for.body36.i_crit_edge, label %if.then30.i

if.end27.i.for.body36.i_crit_edge:                ; preds = %if.end27.i
  br label %for.body36.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28.i)
  %cmp.i104.i = icmp slt i32 %call28.i, 1
  br i1 %cmp.i104.i, label %if.then30.i.renesas_fw_download.exit_crit_edge, label %if.end.i105.i

if.then30.i.renesas_fw_download.exit_crit_edge:   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_fw_download.exit

if.end.i105.i:                                    ; preds = %if.then30.i
  %switch.tableidx92 = add i32 %call28.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx92)
  %17 = icmp ult i32 %switch.tableidx92, 9
  br i1 %17, label %switch.lookup91, label %if.end.i105.i.renesas_fw_download.exit_crit_edge

if.end.i105.i.renesas_fw_download.exit_crit_edge: ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_fw_download.exit

for.body36.i:                                     ; preds = %if.end46.i.for.body36.i_crit_edge, %if.end27.i.for.body36.i_crit_edge
  %i.2137.i = phi i32 [ %inc48.i, %if.end46.i.for.body36.i_crit_edge ], [ 0, %if.end27.i.for.body36.i_crit_edge ]
  %call37.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 244, ptr noundef nonnull %fw_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end41.i, label %if.then39.i

if.then39.i:                                      ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37.i)
  %cmp.i114.i = icmp slt i32 %call37.i, 1
  br i1 %cmp.i114.i, label %if.then39.i.renesas_fw_download.exit_crit_edge, label %if.end.i115.i

if.then39.i.renesas_fw_download.exit_crit_edge:   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_fw_download.exit

if.end.i115.i:                                    ; preds = %if.then39.i
  %switch.tableidx96 = add i32 %call37.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx96)
  %18 = icmp ult i32 %switch.tableidx96, 9
  br i1 %18, label %switch.lookup95, label %if.end.i115.i.renesas_fw_download.exit_crit_edge

if.end.i115.i.renesas_fw_download.exit_crit_edge: ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_fw_download.exit

if.end41.i:                                       ; preds = %for.body36.i
  %19 = ptrtoint ptr %fw_status.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fw_status.i, align 1
  %21 = and i8 %20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool44.not.i = icmp eq i8 %21, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.end41.i.if.end58.i_crit_edge

if.end41.i.if.end58.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.end46.i:                                       ; preds = %if.end41.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 2147480) #6
  %inc48.i = add nuw nsw i32 %i.2137.i, 1
  %exitcond144.not.i = icmp eq i32 %inc48.i, 10000
  br i1 %exitcond144.not.i, label %if.then52.i, label %if.end46.i.for.body36.i_crit_edge

if.end46.i.for.body36.i_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body36.i

if.then52.i:                                      ; preds = %if.end46.i
  %call53.i = call fastcc i32 @renesas_fw_check_running(ptr noundef %pdev) #6
  %23 = zext i32 %call53.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call53.i, label %if.then52.i.renesas_fw_download.exit_crit_edge [
    i32 0, label %if.then52.i.if.end58.i_crit_edge
    i32 1, label %do.end56.i
  ]

if.then52.i.if.end58.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then52.i.renesas_fw_download.exit_crit_edge:   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_fw_download.exit

do.end56.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57.i, ptr noundef nonnull @.str.97) #9
  br label %renesas_fw_download.exit

if.end58.i:                                       ; preds = %if.then52.i.if.end58.i_crit_edge, %if.end41.i.if.end58.i_crit_edge
  br label %renesas_fw_download.exit

switch.lookup:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.renesas_load_fw, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %renesas_fw_download.exit

switch.lookup87:                                  ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep89 = getelementptr inbounds [9 x i32], ptr @switch.table.renesas_load_fw.100, i32 0, i32 %switch.tableidx88
  %25 = ptrtoint ptr %switch.gep89 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load90 = load i32, ptr %switch.gep89, align 4
  br label %renesas_fw_download.exit

switch.lookup91:                                  ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep93 = getelementptr inbounds [9 x i32], ptr @switch.table.renesas_load_fw.101, i32 0, i32 %switch.tableidx92
  %26 = ptrtoint ptr %switch.gep93 to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load94 = load i32, ptr %switch.gep93, align 4
  br label %renesas_fw_download.exit

switch.lookup95:                                  ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep97 = getelementptr inbounds [9 x i32], ptr @switch.table.renesas_load_fw.102, i32 0, i32 %switch.tableidx96
  %27 = ptrtoint ptr %switch.gep97 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load98 = load i32, ptr %switch.gep97, align 4
  br label %renesas_fw_download.exit

renesas_fw_download.exit:                         ; preds = %switch.lookup95, %switch.lookup91, %switch.lookup87, %switch.lookup, %if.end58.i, %do.end56.i, %if.then52.i.renesas_fw_download.exit_crit_edge, %if.end.i115.i.renesas_fw_download.exit_crit_edge, %if.then39.i.renesas_fw_download.exit_crit_edge, %if.end.i105.i.renesas_fw_download.exit_crit_edge, %if.then30.i.renesas_fw_download.exit_crit_edge, %if.end.i95.i.renesas_fw_download.exit_crit_edge, %if.then11.i.renesas_fw_download.exit_crit_edge, %do.end.i, %if.end.i.i.renesas_fw_download.exit_crit_edge, %if.then.i.renesas_fw_download.exit_crit_edge
  %retval.0.i56 = phi i32 [ %call2.i, %do.end.i ], [ -110, %do.end56.i ], [ 0, %if.end58.i ], [ %call53.i, %if.then52.i.renesas_fw_download.exit_crit_edge ], [ %call.i52, %if.then.i.renesas_fw_download.exit_crit_edge ], [ %call9.i, %if.then11.i.renesas_fw_download.exit_crit_edge ], [ %call28.i, %if.then30.i.renesas_fw_download.exit_crit_edge ], [ %call37.i, %if.then39.i.renesas_fw_download.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ -34, %if.end.i.i.renesas_fw_download.exit_crit_edge ], [ %switch.load90, %switch.lookup87 ], [ -34, %if.end.i95.i.renesas_fw_download.exit_crit_edge ], [ %switch.load94, %switch.lookup91 ], [ -34, %if.end.i105.i.renesas_fw_download.exit_crit_edge ], [ %switch.load98, %switch.lookup95 ], [ -34, %if.end.i115.i.renesas_fw_download.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_status.i) #6
  br label %exit

exit:                                             ; preds = %renesas_fw_download.exit, %do.body11
  %err.0 = phi i32 [ %retval.0.i56, %renesas_fw_download.exit ], [ 0, %do.body11 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool31.not = icmp eq i32 %err.0, 0
  br i1 %tobool31.not, label %exit.if.end37_crit_edge, label %do.end35

exit.if.end37_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end35:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.45, i32 noundef %err.0) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %exit.if.end37_crit_edge, %exit.thread
  %err.062 = phi i32 [ 0, %exit.thread ], [ %err.0, %do.end35 ], [ 0, %exit.if.end37_crit_edge ]
  ret i32 %err.062
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @pcibios_err_to_errno(i32 noundef %err) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err)
  %cmp = icmp slt i32 %err, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %err, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  br i1 %0, label %switch.lookup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.pcibios_err_to_errno, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %err, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ -34, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @renesas_rom_erase(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_rom_erase.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_rom_erase, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !189

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_rom_erase.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.47) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 248, i32 noundef 1516597871) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %do.end
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.i = icmp slt i32 %call3, 1
  br i1 %cmp.i, label %do.end8.pcibios_err_to_errno.exit_crit_edge, label %if.end.i

do.end8.pcibios_err_to_errno.exit_crit_edge:      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcibios_err_to_errno.exit

if.end.i:                                         ; preds = %do.end8
  %switch.tableidx = add i32 %call3, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 9
  br i1 %1, label %switch.lookup, label %if.end.i.pcibios_err_to_errno.exit_crit_edge

if.end.i.pcibios_err_to_errno.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcibios_err_to_errno.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.renesas_rom_erase, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %pcibios_err_to_errno.exit

pcibios_err_to_errno.exit:                        ; preds = %switch.lookup, %if.end.i.pcibios_err_to_errno.exit_crit_edge, %do.end8.pcibios_err_to_errno.exit_crit_edge
  %retval.0.i100 = phi i32 [ %call3, %do.end8.pcibios_err_to_errno.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ -34, %if.end.i.pcibios_err_to_errno.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i100) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 246, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end11
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp.i101 = icmp slt i32 %call12, 1
  br i1 %cmp.i101, label %do.end17.pcibios_err_to_errno.exit110_crit_edge, label %if.end.i102

do.end17.pcibios_err_to_errno.exit110_crit_edge:  ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcibios_err_to_errno.exit110

if.end.i102:                                      ; preds = %do.end17
  %switch.tableidx119 = add i32 %call12, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx119)
  %3 = icmp ult i32 %switch.tableidx119, 9
  br i1 %3, label %switch.lookup118, label %if.end.i102.pcibios_err_to_errno.exit110_crit_edge

if.end.i102.pcibios_err_to_errno.exit110_crit_edge: ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcibios_err_to_errno.exit110

switch.lookup118:                                 ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep120 = getelementptr inbounds [9 x i32], ptr @switch.table.renesas_rom_erase.103, i32 0, i32 %switch.tableidx119
  %4 = ptrtoint ptr %switch.gep120 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load121 = load i32, ptr %switch.gep120, align 4
  br label %pcibios_err_to_errno.exit110

pcibios_err_to_errno.exit110:                     ; preds = %switch.lookup118, %if.end.i102.pcibios_err_to_errno.exit110_crit_edge, %do.end17.pcibios_err_to_errno.exit110_crit_edge
  %retval.0.i109 = phi i32 [ %call12, %do.end17.pcibios_err_to_errno.exit110_crit_edge ], [ %switch.load121, %switch.lookup118 ], [ -34, %if.end.i102.pcibios_err_to_errno.exit110_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i109) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status, align 1
  %7 = or i8 %6, 2
  store i8 %7, ptr %status, align 1
  %call22 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 246, i8 noundef zeroext %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.53) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  call void @msleep(i32 noundef 20) #6
  br label %for.body

for.body:                                         ; preds = %while.body.preheader.for.body_crit_edge, %if.end29
  %i.0117 = phi i32 [ 0, %if.end29 ], [ %inc, %while.body.preheader.for.body_crit_edge ]
  %call31 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 246, ptr noundef nonnull %status) #6
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status, align 1
  %10 = and i8 %9, 2
  store i8 %10, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool34.not = icmp eq i8 %10, 0
  br i1 %tobool34.not, label %for.body.do.body60_crit_edge, label %while.body.preheader

for.body.do.body60_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body60

while.body.preheader:                             ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %do.body41, label %while.body.preheader.for.body_crit_edge

while.body.preheader.for.body_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body41:                                        ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_rom_erase.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_rom_erase, %if.then53)) #6
          to label %do.body60 [label %if.then53], !srcloc !189

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status, align 1
  %conv55 = zext i8 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_rom_erase.__UNIQUE_ID_ddebug356, ptr noundef %dev54, ptr noundef nonnull @.str.55, i32 noundef %conv55) #6
  br label %do.body60

do.body60:                                        ; preds = %if.then53, %do.body41, %for.body.do.body60_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_rom_erase.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_rom_erase, %if.then72)) #6
          to label %cleanup [label %if.then72], !srcloc !189

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_rom_erase.__UNIQUE_ID_ddebug357, ptr noundef %dev73, ptr noundef nonnull @.str.56) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body60, %do.end27, %pcibios_err_to_errno.exit110, %pcibios_err_to_errno.exit
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @renesas_setup_rom(ptr noundef %pdev, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %status, align 1, !annotation !188
  %call = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 248, i32 noundef 1397903181) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 246, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.remove_bypass_crit_edge

if.end.remove_bypass_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_bypass

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 246, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.remove_bypass_crit_edge

if.end4.remove_bypass_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_bypass

if.end8:                                          ; preds = %if.end4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status, align 1
  %5 = and i8 %4, 112
  store i8 %5, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end8
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp210.not = icmp ult i32 %7, 4
  br i1 %cmp210.not, label %for.cond.preheader.for.body26.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.body26.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.preheader

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %conv12 = zext i8 %5 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %conv12) #9
  br label %remove_bypass

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0211 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call15 = call fastcc i32 @renesas_fw_download_image(ptr noundef %pdev, ptr noundef %1, i32 noundef %i.0211, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.inc, label %do.end20

do.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %mul = shl i32 %i.0211, 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.60, i32 noundef %i.0211, i32 noundef %mul, i32 noundef %call15) #9
  br label %remove_bypass

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0211, 1
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw, align 4
  %div192 = lshr i32 %9, 2
  %cmp = icmp ult i32 %inc, %div192
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.body26.preheader_crit_edge

for.inc.for.body26.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body26.preheader:                             ; preds = %for.inc.for.body26.preheader_crit_edge, %for.cond.preheader.for.body26.preheader_crit_edge
  br label %for.body26

for.body26:                                       ; preds = %if.end35.for.body26_crit_edge, %for.body26.preheader
  %i.1212 = phi i32 [ %inc37, %if.end35.for.body26_crit_edge ], [ 0, %for.body26.preheader ]
  %call27 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 247, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %for.body26.remove_bypass_crit_edge

for.body26.remove_bypass_crit_edge:               ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_bypass

if.end30:                                         ; preds = %for.body26
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool33.not = icmp eq i8 %12, 0
  br i1 %tobool33.not, label %if.end46, label %if.end35

if.end35:                                         ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 2147480) #6
  %inc37 = add nuw nsw i32 %i.1212, 1
  %exitcond.not = icmp eq i32 %inc37, 10000
  br i1 %exitcond.not, label %do.end44, label %if.end35.for.body26_crit_edge

if.end35.for.body26_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.63) #9
  br label %remove_bypass

if.end46:                                         ; preds = %if.end30
  %call47 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 246, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 2147480) #6
  br label %for.body54

for.body54:                                       ; preds = %if.end81.for.body54_crit_edge, %if.end50
  %i.2213 = phi i32 [ 0, %if.end50 ], [ %inc83, %if.end81.for.body54_crit_edge ]
  %call55 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 246, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end63, label %do.end60

do.end60:                                         ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #8
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call62 = call fastcc i32 @pcibios_err_to_errno(i32 noundef %call55)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.66, i32 noundef %call62) #9
  br label %cleanup

if.end63:                                         ; preds = %for.body54
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status, align 1
  %17 = and i8 %16, 112
  store i8 %17, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %17)
  %cmp68 = icmp eq i8 %17, 16
  br i1 %cmp68, label %do.body71, label %if.end81

do.body71:                                        ; preds = %if.end63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_setup_rom.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_setup_rom, %for.end84.thread)) #6
          to label %for.end84 [label %for.end84.thread], !srcloc !189

for.end84.thread:                                 ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_setup_rom.__UNIQUE_ID_ddebug358, ptr noundef %dev77, ptr noundef nonnull @.str.68) #6
  br label %do.body94

if.end81:                                         ; preds = %if.end63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 2147480) #6
  %inc83 = add nuw nsw i32 %i.2213, 1
  %exitcond221.not = icmp eq i32 %inc83, 10000
  br i1 %exitcond221.not, label %if.end81.do.end90_crit_edge, label %if.end81.for.body54_crit_edge

if.end81.for.body54_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body54

if.end81.do.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

for.end84:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %i.2213)
  %cmp85 = icmp eq i32 %i.2213, 10000
  br i1 %cmp85, label %for.end84.do.end90_crit_edge, label %for.end84.do.body94_crit_edge

for.end84.do.body94_crit_edge:                    ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body94

for.end84.do.end90_crit_edge:                     ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

do.end90:                                         ; preds = %for.end84.do.end90_crit_edge, %if.end81.do.end90_crit_edge
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %status, align 1
  %conv92 = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev91, ptr noundef nonnull @.str.70, i32 noundef %conv92) #9
  br label %cleanup

do.body94:                                        ; preds = %for.end84.do.body94_crit_edge, %for.end84.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_setup_rom.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_setup_rom, %if.then106)) #6
          to label %do.end110 [label %if.then106], !srcloc !189

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_setup_rom.__UNIQUE_ID_ddebug359, ptr noundef %dev107, ptr noundef nonnull @.str.72) #6
  br label %do.end110

do.end110:                                        ; preds = %if.then106, %do.body94
  %call111 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 246, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %do.end110.for.body123_crit_edge, label %do.end116

do.end110.for.body123_crit_edge:                  ; preds = %do.end110
  br label %for.body123

do.end116:                                        ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #8
  %dev117 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call118 = call fastcc i32 @pcibios_err_to_errno(i32 noundef %call111)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev117, ptr noundef nonnull @.str.74, i32 noundef %call118) #9
  br label %cleanup

for.body123:                                      ; preds = %if.end132.for.body123_crit_edge, %do.end110.for.body123_crit_edge
  %i.3214 = phi i32 [ %inc134, %if.end132.for.body123_crit_edge ], [ 0, %do.end110.for.body123_crit_edge ]
  %call124 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 246, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %for.body123.cleanup_crit_edge

for.body123.cleanup_crit_edge:                    ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end127:                                        ; preds = %for.body123
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status, align 1
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool130.not = icmp eq i8 %23, 0
  br i1 %tobool130.not, label %if.end127.cleanup_crit_edge, label %if.end132

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end132:                                        ; preds = %if.end127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 2147480) #6
  %inc134 = add nuw nsw i32 %i.3214, 1
  %exitcond222.not = icmp eq i32 %inc134, 10000
  br i1 %exitcond222.not, label %do.end141, label %if.end132.for.body123_crit_edge

if.end132.for.body123_crit_edge:                  ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body123

do.end141:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  %dev142 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status, align 1
  %conv143 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev142, ptr noundef nonnull @.str.77, i32 noundef %conv143) #9
  br label %cleanup

remove_bypass:                                    ; preds = %do.end44, %for.body26.remove_bypass_crit_edge, %do.end20, %do.end, %if.end4.remove_bypass_crit_edge, %if.end.remove_bypass_crit_edge
  %call145 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 246, i8 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %remove_bypass, %do.end141, %if.end127.cleanup_crit_edge, %for.body123.cleanup_crit_edge, %do.end116, %do.end90, %do.end60, %if.end46.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %remove_bypass ], [ false, %do.end60 ], [ false, %do.end90 ], [ false, %do.end116 ], [ false, %do.end141 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end46.cleanup_crit_edge ], [ %tobool125.not, %for.body123.cleanup_crit_edge ], [ %tobool125.not, %if.end127.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @renesas_fw_download_image(ptr noundef %dev, ptr nocapture noundef readonly %fw, i32 noundef %step, i1 noundef zeroext %rom) unnamed_addr #0 align 64 {
entry:
  %fw_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_status) #6
  %0 = ptrtoint ptr %fw_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %fw_status, align 1, !annotation !188
  %. = select i1 %rom, i32 247, i32 245
  %and = and i32 %step, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %shl = shl nuw nsw i32 1, %and
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %entry
  %i.0164 = phi i32 [ 0, %entry ], [ %inc, %if.end14.for.body_crit_edge ]
  %call = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef %., ptr noundef nonnull %fw_status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end8, label %do.end

do.end:                                           ; preds = %for.body
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.i = icmp slt i32 %call, 1
  br i1 %cmp.i, label %pcibios_err_to_errno.exit, label %if.end.i

if.end.i:                                         ; preds = %do.end
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %call, label %if.end.i75 [
    i32 129, label %if.end.i75.thread
    i32 131, label %if.end.i75.thread126
    i32 134, label %if.end.i75.thread128
    i32 135, label %if.end.i75.thread130
    i32 136, label %if.end.i75.thread132
    i32 137, label %if.end.i75.thread134
  ]

if.end.i75.thread:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.79, i32 noundef -2) #9
  br label %cleanup

if.end.i75.thread126:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.79, i32 noundef -25) #9
  br label %cleanup

if.end.i75.thread128:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.79, i32 noundef -19) #9
  br label %cleanup

if.end.i75.thread130:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.79, i32 noundef -14) #9
  br label %cleanup

if.end.i75.thread132:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.79, i32 noundef -5) #9
  br label %cleanup

if.end.i75.thread134:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.79, i32 noundef -28) #9
  br label %cleanup

pcibios_err_to_errno.exit:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.79, i32 noundef %call) #9
  br label %cleanup

if.end.i75:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.79, i32 noundef -34) #9
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %2 = ptrtoint ptr %fw_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_status, align 1
  %conv = zext i8 %3 to i32
  %and11 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end22, label %if.end14

if.end14:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 2147480) #6
  %inc = add nuw nsw i32 %i.0164, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %do.end20, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.82, i32 noundef %step) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  %cond = select i1 %cmp.not, i32 248, i32 252
  %arrayidx = getelementptr i32, ptr %fw, i32 %step
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %call25 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %cond, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end34, label %do.end30

do.end30:                                         ; preds = %if.end22
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp.i84 = icmp slt i32 %call25, 1
  br i1 %cmp.i84, label %pcibios_err_to_errno.exit93, label %if.end.i85

if.end.i85:                                       ; preds = %do.end30
  %8 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %call25, label %if.end.i95 [
    i32 129, label %if.end.i95.thread
    i32 131, label %if.end.i95.thread139
    i32 134, label %if.end.i95.thread141
    i32 135, label %if.end.i95.thread143
    i32 136, label %if.end.i95.thread145
    i32 137, label %if.end.i95.thread147
  ]

if.end.i95.thread:                                ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.85, i32 noundef -2) #9
  br label %cleanup

if.end.i95.thread139:                             ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.85, i32 noundef -25) #9
  br label %cleanup

if.end.i95.thread141:                             ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.85, i32 noundef -19) #9
  br label %cleanup

if.end.i95.thread143:                             ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.85, i32 noundef -14) #9
  br label %cleanup

if.end.i95.thread145:                             ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.85, i32 noundef -5) #9
  br label %cleanup

if.end.i95.thread147:                             ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.85, i32 noundef -28) #9
  br label %cleanup

pcibios_err_to_errno.exit93:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.85, i32 noundef %call25) #9
  br label %cleanup

if.end.i95:                                       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.85, i32 noundef -34) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 21474800) #6
  %conv38 = trunc i32 %shl to i8
  %call39 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %., i8 noundef zeroext %conv38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end34.cleanup_crit_edge, label %do.end44

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end44:                                         ; preds = %if.end34
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp.i104 = icmp slt i32 %call39, 1
  br i1 %cmp.i104, label %pcibios_err_to_errno.exit113, label %if.end.i105

if.end.i105:                                      ; preds = %do.end44
  %10 = zext i32 %call39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %call39, label %if.end.i115 [
    i32 129, label %if.end.i115.thread
    i32 131, label %if.end.i115.thread151
    i32 134, label %if.end.i115.thread153
    i32 135, label %if.end.i115.thread155
    i32 136, label %if.end.i115.thread157
    i32 137, label %if.end.i115.thread159
  ]

if.end.i115.thread:                               ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.88, i32 noundef -2) #9
  br label %cleanup

if.end.i115.thread151:                            ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.88, i32 noundef -25) #9
  br label %cleanup

if.end.i115.thread153:                            ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.88, i32 noundef -19) #9
  br label %cleanup

if.end.i115.thread155:                            ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.88, i32 noundef -14) #9
  br label %cleanup

if.end.i115.thread157:                            ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.88, i32 noundef -5) #9
  br label %cleanup

if.end.i115.thread159:                            ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.88, i32 noundef -28) #9
  br label %cleanup

pcibios_err_to_errno.exit113:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.88, i32 noundef %call39) #9
  br label %cleanup

if.end.i115:                                      ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.88, i32 noundef -34) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i115, %pcibios_err_to_errno.exit113, %if.end.i115.thread159, %if.end.i115.thread157, %if.end.i115.thread155, %if.end.i115.thread153, %if.end.i115.thread151, %if.end.i115.thread, %if.end34.cleanup_crit_edge, %if.end.i95, %pcibios_err_to_errno.exit93, %if.end.i95.thread147, %if.end.i95.thread145, %if.end.i95.thread143, %if.end.i95.thread141, %if.end.i95.thread139, %if.end.i95.thread, %do.end20, %if.end.i75, %pcibios_err_to_errno.exit, %if.end.i75.thread134, %if.end.i75.thread132, %if.end.i75.thread130, %if.end.i75.thread128, %if.end.i75.thread126, %if.end.i75.thread
  %retval.0 = phi i32 [ -110, %do.end20 ], [ 0, %if.end34.cleanup_crit_edge ], [ -34, %if.end.i75 ], [ -28, %if.end.i75.thread134 ], [ -5, %if.end.i75.thread132 ], [ -14, %if.end.i75.thread130 ], [ -19, %if.end.i75.thread128 ], [ -25, %if.end.i75.thread126 ], [ %call, %pcibios_err_to_errno.exit ], [ -2, %if.end.i75.thread ], [ -34, %if.end.i95 ], [ -28, %if.end.i95.thread147 ], [ -5, %if.end.i95.thread145 ], [ -14, %if.end.i95.thread143 ], [ -19, %if.end.i95.thread141 ], [ -25, %if.end.i95.thread139 ], [ %call25, %pcibios_err_to_errno.exit93 ], [ -2, %if.end.i95.thread ], [ -34, %if.end.i115 ], [ -28, %if.end.i115.thread159 ], [ -5, %if.end.i115.thread157 ], [ -14, %if.end.i115.thread155 ], [ -19, %if.end.i115.thread153 ], [ -25, %if.end.i115.thread151 ], [ %call39, %pcibios_err_to_errno.exit113 ], [ -2, %if.end.i115.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_status) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 614, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @renesas_xhci_check_request_fw._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @renesas_xhci_check_request_fw._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 618, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @renesas_xhci_check_request_fw._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @renesas_xhci_check_request_fw._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_renesas_xhci_check_request_fw, !14, !"__ksymtab_renesas_xhci_check_request_fw", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 632, i32 1}
!15 = !{ptr @__UNIQUE_ID_file362, !16, !"__UNIQUE_ID_file362", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 634, i32 1}
!17 = !{ptr @__UNIQUE_ID_license363, !16, !"__UNIQUE_ID_license363", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 171, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @renesas_check_rom.__UNIQUE_ID_ddebug348, !19, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 191, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @renesas_check_rom_state.__UNIQUE_ID_ddebug349, !24, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 202, i32 3}
!29 = !{ptr @renesas_check_rom_state.__UNIQUE_ID_ddebug350, !28, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 210, i32 4}
!32 = !{ptr @renesas_check_rom_state.__UNIQUE_ID_ddebug351, !31, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 215, i32 4}
!35 = !{ptr @renesas_check_rom_state._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @renesas_check_rom_state._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 243, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @renesas_fw_check_running.__UNIQUE_ID_ddebug352, !38, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 248, i32 3}
!43 = !{ptr @renesas_fw_check_running._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @renesas_fw_check_running._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 259, i32 3}
!47 = !{ptr @renesas_fw_check_running._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @renesas_fw_check_running._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 267, i32 3}
!51 = !{ptr @renesas_fw_check_running.__UNIQUE_ID_ddebug353, !50, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 273, i32 3}
!54 = !{ptr @renesas_fw_check_running.__UNIQUE_ID_ddebug354, !53, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 277, i32 3}
!57 = !{ptr @renesas_fw_check_running._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @renesas_fw_check_running._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 282, i32 3}
!61 = !{ptr @renesas_fw_check_running._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @renesas_fw_check_running._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 135, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @renesas_fw_verify._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @renesas_fw_verify._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 142, i32 3}
!70 = !{ptr @renesas_fw_verify._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @renesas_fw_verify._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 149, i32 3}
!74 = !{ptr @renesas_fw_verify._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @renesas_fw_verify._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 154, i32 2}
!78 = !{ptr @renesas_fw_verify._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @renesas_fw_verify._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 563, i32 4}
!82 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @renesas_load_fw.__UNIQUE_ID_ddebug360, !81, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 566, i32 4}
!86 = !{ptr @renesas_load_fw.__UNIQUE_ID_ddebug361, !85, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 576, i32 3}
!89 = !{ptr @renesas_load_fw._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @renesas_load_fw._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 387, i32 2}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @renesas_rom_erase.__UNIQUE_ID_ddebug355, !92, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 391, i32 3}
!97 = !{ptr @renesas_rom_erase._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @renesas_rom_erase._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 398, i32 3}
!101 = !{ptr @renesas_rom_erase._entry.49, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @renesas_rom_erase._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 405, i32 3}
!105 = !{ptr @renesas_rom_erase._entry.52, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @renesas_rom_erase._entry_ptr.54, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 423, i32 3}
!109 = !{ptr @renesas_rom_erase.__UNIQUE_ID_ddebug356, !108, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 425, i32 2}
!112 = !{ptr @renesas_rom_erase.__UNIQUE_ID_ddebug357, !111, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 452, i32 3}
!115 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @renesas_setup_rom._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @renesas_setup_rom._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 461, i32 4}
!120 = !{ptr @renesas_setup_rom._entry.59, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @renesas_setup_rom._entry_ptr.61, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 482, i32 3}
!124 = !{ptr @renesas_setup_rom._entry.62, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @renesas_setup_rom._entry_ptr.64, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 497, i32 4}
!128 = !{ptr @renesas_setup_rom._entry.65, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @renesas_setup_rom._entry_ptr.67, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 503, i32 4}
!132 = !{ptr @renesas_setup_rom.__UNIQUE_ID_ddebug358, !131, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 509, i32 3}
!135 = !{ptr @renesas_setup_rom._entry.69, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @renesas_setup_rom._entry_ptr.71, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 514, i32 2}
!139 = !{ptr @renesas_setup_rom.__UNIQUE_ID_ddebug359, !138, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 520, i32 3}
!142 = !{ptr @renesas_setup_rom._entry.73, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @renesas_setup_rom._entry_ptr.75, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 538, i32 3}
!146 = !{ptr @renesas_setup_rom._entry.76, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @renesas_setup_rom._entry_ptr.78, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 79, i32 4}
!150 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @renesas_fw_download_image._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @renesas_fw_download_image._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 89, i32 3}
!155 = !{ptr @renesas_fw_download_image._entry.81, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @renesas_fw_download_image._entry_ptr.83, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 101, i32 3}
!159 = !{ptr @renesas_fw_download_image._entry.84, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @renesas_fw_download_image._entry_ptr.86, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 111, i32 3}
!163 = !{ptr @renesas_fw_download_image._entry.87, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @renesas_fw_download_image._entry_ptr.89, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 316, i32 4}
!167 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @renesas_fw_download._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @renesas_fw_download._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.93, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 339, i32 3}
!172 = !{ptr @.str.94, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @renesas_fw_download._entry.92, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @renesas_fw_download._entry_ptr.95, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.97, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/host/xhci-pci-renesas.c", i32 371, i32 4}
!177 = !{ptr @renesas_fw_download._entry.96, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @renesas_fw_download._entry_ptr.98, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"auto-init"}
!189 = !{i64 2148961887, i64 2148961892, i64 2148961905, i64 2148961949, i64 2148961983, i64 2148962004}
