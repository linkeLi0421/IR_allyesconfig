; ModuleID = '/llk/IR_all_yes/drivers/vfio/pci/vfio_pci_config.c_pt.bc'
source_filename = "../drivers/vfio/pci/vfio_pci_config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.perm_bits = type { ptr, ptr, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vfio_pci_core_device = type { %struct.vfio_device, ptr, [6 x ptr], [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.mutex, ptr, i32, i32, i32, ptr, i8, i8, i16, i32, [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.notifier_block, %struct.mutex, %struct.list_head, %struct.rw_semaphore }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cap_perms = internal global { [21 x %struct.perm_bits], [80 x i8] } { [21 x %struct.perm_bits] [%struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }], [80 x i8] zeroinitializer }, align 32
@ecap_perms = internal global { [39 x %struct.perm_bits], [144 x i8] } { [39 x %struct.perm_bits] [%struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }, %struct.perm_bits { ptr null, ptr null, ptr @vfio_direct_config_read, ptr null }], [144 x i8] zeroinitializer }, align 32
@known_bogus_vf_intx_pin = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 9996, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vfio_config_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1739, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Hardware bug: VF reports bogus INTx pin %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfio_config_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/vfio/pci/vfio_pci_config.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfio_config_init._entry_ptr = internal global ptr @vfio_config_init._entry, section ".printk_index", align 4
@vfio_bar_restore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 426, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: reset recovery - restoring BARs\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfio_bar_restore\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vfio_bar_restore._entry_ptr = internal global ptr @vfio_bar_restore._entry, section ".printk_index", align 4
@pci_cap_length = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"@\08\0C\08\00\FF\00\FF\FF\FF\00\00\00\00\00\00\FF\0C\FF\06\00", [43 x i8] zeroinitializer }, align 32
@pci_ext_cap_length = internal constant { <{ [25 x i16], [14 x i16] }>, [50 x i8] } { <{ [25 x i16], [14 x i16] }> <{ [25 x i16] [i16 0, i16 44, i16 255, i16 12, i16 16, i16 0, i16 0, i16 0, i16 255, i16 255, i16 0, i16 255, i16 0, i16 255, i16 8, i16 8, i16 64, i16 0, i16 40, i16 16, i16 0, i16 255, i16 255, i16 255, i16 8], [14 x i16] zeroinitializer }>, [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vfio_cap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1516, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: hiding cap %#x@%#x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vfio_cap_init\00", [18 x i8] zeroinitializer }, align 32
@vfio_cap_init._entry_ptr = internal global ptr @vfio_cap_init._entry, section ".printk_index", align 4
@vfio_cap_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 1528, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: PCI config conflict @%#x, was cap %#x now cap %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@vfio_cap_init._entry_ptr.13 = internal global ptr @vfio_cap_init._entry.11, section ".printk_index", align 4
@vfio_cap_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: unknown length for PCI cap %#x@%#x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vfio_cap_len\00", [19 x i8] zeroinitializer }, align 32
@vfio_cap_len._entry_ptr = internal global ptr @vfio_cap_len._entry, section ".printk_index", align 4
@vfio_ecap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1590, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: hiding ecap %#x@%#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vfio_ecap_init\00", [17 x i8] zeroinitializer }, align 32
@vfio_ecap_init._entry_ptr = internal global ptr @vfio_ecap_init._entry, section ".printk_index", align 4
@vfio_ecap_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 1613, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: PCI config conflict @%#x, was ecap %#x now ecap %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@vfio_ecap_init._entry_ptr.20 = internal global ptr @vfio_ecap_init._entry.18, section ".printk_index", align 4
@vfio_ext_cap_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1409, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: unknown length for PCI ecap %#x@%#x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfio_ext_cap_len\00", [47 x i8] zeroinitializer }, align 32
@vfio_ext_cap_len._entry_ptr = internal global ptr @vfio_ext_cap_len._entry, section ".printk_index", align 4
@unassigned_perms = internal global { %struct.perm_bits, [16 x i8] } { %struct.perm_bits { ptr null, ptr null, ptr @vfio_raw_config_read, ptr @vfio_raw_config_write }, [16 x i8] zeroinitializer }, align 32
@virt_perms = internal global { %struct.perm_bits, [16 x i8] } { %struct.perm_bits { ptr null, ptr null, ptr @vfio_virt_config_read, ptr @vfio_virt_config_write }, [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.26 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.27 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.28 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.29 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.30 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.31 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.32 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.33 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.34 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.35 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.36 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.vfio_config_init.37 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.pcibios_err_to_errno = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 8, i64 5, i64 7, i64 8, i64 9, i64 16, i64 18]
@__sancov_gen_cov_switch_values.39 = internal global [10 x i64] [i64 8, i64 16, i64 2, i64 8, i64 9, i64 11, i64 13, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"cap_perms\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 316, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"ecap_perms\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 319, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant [24 x i8] c"known_bogus_vf_intx_pin\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1654, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1737, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 426, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"pci_cap_length\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 43, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"pci_ext_cap_length\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 71, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1515, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1527, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1334, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1589, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1612, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1408, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"unassigned_perms\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 328, i32 25 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"virt_perms\00", align 1
@___asan_gen_.144 = private constant [38 x i8] c"../drivers/vfio/pci/vfio_pci_config.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 333, i32 25 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 156, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [30 x i8] c"switch.table.vfio_config_init\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.26\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.27\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.28\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.29\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.30\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.31\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.32\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.33\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.34\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.35\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.36\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [33 x i8] c"switch.table.vfio_config_init.37\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [34 x i8] c"switch.table.pcibios_err_to_errno\00", align 1
@llvm.compiler.used = appending global [56 x ptr] [ptr @vfio_bar_restore._entry, ptr @vfio_bar_restore._entry_ptr, ptr @vfio_cap_init._entry, ptr @vfio_cap_init._entry.11, ptr @vfio_cap_init._entry_ptr, ptr @vfio_cap_init._entry_ptr.13, ptr @vfio_cap_len._entry, ptr @vfio_cap_len._entry_ptr, ptr @vfio_config_init._entry, ptr @vfio_config_init._entry_ptr, ptr @vfio_ecap_init._entry, ptr @vfio_ecap_init._entry.18, ptr @vfio_ecap_init._entry_ptr, ptr @vfio_ecap_init._entry_ptr.20, ptr @vfio_ext_cap_len._entry, ptr @vfio_ext_cap_len._entry_ptr, ptr @cap_perms, ptr @ecap_perms, ptr @known_bogus_vf_intx_pin, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pci_cap_length, ptr @pci_ext_cap_length, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @unassigned_perms, ptr @virt_perms, ptr @.str.25, ptr @switch.table.vfio_config_init, ptr @switch.table.vfio_config_init.26, ptr @switch.table.vfio_config_init.27, ptr @switch.table.vfio_config_init.28, ptr @switch.table.vfio_config_init.29, ptr @switch.table.vfio_config_init.30, ptr @switch.table.vfio_config_init.31, ptr @switch.table.vfio_config_init.32, ptr @switch.table.vfio_config_init.33, ptr @switch.table.vfio_config_init.34, ptr @switch.table.vfio_config_init.35, ptr @switch.table.vfio_config_init.36, ptr @switch.table.vfio_config_init.37, ptr @switch.table.pcibios_err_to_errno], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_perms to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecap_perms to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @known_bogus_vf_intx_pin to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_config_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_bar_restore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_cap_length to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ext_cap_length to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_cap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_cap_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_cap_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_ecap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_ecap_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_ext_cap_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unassigned_perms to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_perms to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfio_config_init.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcibios_err_to_errno to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @__vfio_pci_memory_enabled(ptr nocapture noundef readonly %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %no_command_memory = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %no_command_memory to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %no_command_memory, align 1
  %3 = and i40 %bf.load, 8
  %tobool.not = icmp eq i40 %3, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %4 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vconfig, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = and i16 %7, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2 = icmp ne i16 %8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %9 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool2, %lor.rhs ]
  ret i1 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfio_pci_uninit_perm_bits() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cap_perms, align 4
  tail call void @kfree(ptr noundef %0) #12
  %1 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  tail call void @kfree(ptr noundef %1) #12
  store ptr null, ptr @cap_perms, align 4
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %2 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 1), align 4
  tail call void @kfree(ptr noundef %2) #12
  %3 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 1, i32 1), align 4
  tail call void @kfree(ptr noundef %3) #12
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 1, i32 1), align 4
  %4 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3), align 4
  tail call void @kfree(ptr noundef %4) #12
  %5 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3, i32 1), align 4
  tail call void @kfree(ptr noundef %5) #12
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3, i32 1), align 4
  %6 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7), align 4
  tail call void @kfree(ptr noundef %6) #12
  %7 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7, i32 1), align 4
  tail call void @kfree(ptr noundef %7) #12
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7), align 4
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7, i32 1), align 4
  %8 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16), align 4
  tail call void @kfree(ptr noundef %8) #12
  %9 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16, i32 1), align 4
  tail call void @kfree(ptr noundef %9) #12
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16), align 4
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16, i32 1), align 4
  %10 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 19), align 4
  tail call void @kfree(ptr noundef %10) #12
  %11 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 19, i32 1), align 4
  tail call void @kfree(ptr noundef %11) #12
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 19), align 4
  store ptr null, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 19, i32 1), align 4
  %12 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1), align 4
  tail call void @kfree(ptr noundef %12) #12
  %13 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1, i32 1), align 4
  tail call void @kfree(ptr noundef %13) #12
  store ptr null, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1, i32 1), align 4
  %14 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 4), align 4
  tail call void @kfree(ptr noundef %14) #12
  %15 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 4, i32 1), align 4
  tail call void @kfree(ptr noundef %15) #12
  store ptr null, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 4), align 4
  store ptr null, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 4, i32 1), align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_pci_init_perm_bits() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_pci_cap_basic_perm() #15
  %call1 = tail call fastcc i32 @init_pci_cap_pm_perm() #15
  %or = or i32 %call1, %call
  %call2 = tail call fastcc i32 @init_pci_cap_vpd_perm() #15
  %or3 = or i32 %or, %call2
  %call4 = tail call fastcc i32 @init_pci_cap_pcix_perm() #15
  %or5 = or i32 %or3, %call4
  store ptr @vfio_raw_config_write, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 9, i32 3), align 4
  %call6 = tail call fastcc i32 @init_pci_cap_exp_perm() #15
  %or7 = or i32 %or5, %call6
  %call8 = tail call fastcc i32 @init_pci_cap_af_perm() #15
  %or9 = or i32 %or7, %call8
  %call10 = tail call fastcc i32 @init_pci_ext_cap_err_perm() #15
  %or11 = or i32 %or9, %call10
  %call12 = tail call fastcc i32 @init_pci_ext_cap_pwr_perm() #15
  %or13 = or i32 %or11, %call12
  store ptr @vfio_raw_config_write, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 11, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or13)
  %tobool.not = icmp eq i32 %or13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vfio_pci_uninit_perm_bits()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %or13
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_pci_cap_basic_perm() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_perm_bits(ptr noundef nonnull @cap_perms, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr @vfio_basic_config_read, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 2), align 4
  store ptr @vfio_basic_config_write, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 3), align 4
  %0 = load ptr, ptr @cap_perms, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %0, align 2
  %2 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %2, align 2
  %4 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i = getelementptr i8, ptr %4, i32 2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %arrayidx.i, align 2
  %6 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayidx3.i, align 2
  %8 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i1 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %arrayidx.i1, align 2
  %10 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i2 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx3.i2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %arrayidx3.i2, align 2
  %12 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i3 = getelementptr i8, ptr %12, i32 6
  %13 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4096, ptr %arrayidx.i3, align 2
  %14 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i4 = getelementptr i8, ptr %14, i32 6
  %15 = ptrtoint ptr %arrayidx3.i4 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %arrayidx3.i4, align 2
  %16 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i5 = getelementptr i8, ptr %16, i32 12
  %17 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx.i5, align 1
  %18 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i6 = getelementptr i8, ptr %18, i32 12
  %19 = ptrtoint ptr %arrayidx3.i6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx3.i6, align 1
  %20 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i7 = getelementptr i8, ptr %20, i32 13
  %21 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx.i7, align 1
  %22 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i8 = getelementptr i8, ptr %22, i32 13
  %23 = ptrtoint ptr %arrayidx3.i8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %arrayidx3.i8, align 1
  %24 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i9 = getelementptr i8, ptr %24, i32 15
  %25 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx.i9, align 1
  %26 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i10 = getelementptr i8, ptr %26, i32 15
  %27 = ptrtoint ptr %arrayidx3.i10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %arrayidx3.i10, align 1
  %28 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i11 = getelementptr i8, ptr %28, i32 16
  %29 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %arrayidx.i11, align 4
  %30 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i12 = getelementptr i8, ptr %30, i32 16
  %31 = ptrtoint ptr %arrayidx3.i12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %arrayidx3.i12, align 4
  %32 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i13 = getelementptr i8, ptr %32, i32 20
  %33 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %arrayidx.i13, align 4
  %34 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i14 = getelementptr i8, ptr %34, i32 20
  %35 = ptrtoint ptr %arrayidx3.i14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %arrayidx3.i14, align 4
  %36 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i15 = getelementptr i8, ptr %36, i32 24
  %37 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %arrayidx.i15, align 4
  %38 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i16 = getelementptr i8, ptr %38, i32 24
  %39 = ptrtoint ptr %arrayidx3.i16 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %arrayidx3.i16, align 4
  %40 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i17 = getelementptr i8, ptr %40, i32 28
  %41 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %arrayidx.i17, align 4
  %42 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i18 = getelementptr i8, ptr %42, i32 28
  %43 = ptrtoint ptr %arrayidx3.i18 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %arrayidx3.i18, align 4
  %44 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i19 = getelementptr i8, ptr %44, i32 32
  %45 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %arrayidx.i19, align 4
  %46 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i20 = getelementptr i8, ptr %46, i32 32
  %47 = ptrtoint ptr %arrayidx3.i20 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %arrayidx3.i20, align 4
  %48 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i21 = getelementptr i8, ptr %48, i32 36
  %49 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %arrayidx.i21, align 4
  %50 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i22 = getelementptr i8, ptr %50, i32 36
  %51 = ptrtoint ptr %arrayidx3.i22 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %arrayidx3.i22, align 4
  %52 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i23 = getelementptr i8, ptr %52, i32 48
  %53 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %arrayidx.i23, align 4
  %54 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i24 = getelementptr i8, ptr %54, i32 48
  %55 = ptrtoint ptr %arrayidx3.i24 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %arrayidx3.i24, align 4
  %56 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i25 = getelementptr i8, ptr %56, i32 52
  %57 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %arrayidx.i25, align 1
  %58 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i26 = getelementptr i8, ptr %58, i32 52
  %59 = ptrtoint ptr %arrayidx3.i26 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx3.i26, align 1
  %60 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i27 = getelementptr i8, ptr %60, i32 60
  %61 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %arrayidx.i27, align 1
  %62 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i28 = getelementptr i8, ptr %62, i32 60
  %63 = ptrtoint ptr %arrayidx3.i28 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %arrayidx3.i28, align 1
  %64 = load ptr, ptr @cap_perms, align 4
  %arrayidx.i29 = getelementptr i8, ptr %64, i32 61
  %65 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %arrayidx.i29, align 1
  %66 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 0, i32 1), align 4
  %arrayidx3.i30 = getelementptr i8, ptr %66, i32 61
  %67 = ptrtoint ptr %arrayidx3.i30 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx3.i30, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_pci_cap_pm_perm() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_perm_bits(ptr noundef getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 1), i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr @vfio_pm_config_write, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 1, i32 3), align 4
  %0 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 1), align 4
  %arrayidx.i = getelementptr i8, ptr %0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx.i, align 1
  %2 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 1, i32 1), align 4
  %arrayidx3.i = getelementptr i8, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx3.i, align 1
  %4 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 1), align 4
  %arrayidx.i1 = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx.i1, align 4
  %6 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 1, i32 1), align 4
  %arrayidx3.i2 = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %arrayidx3.i2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -50331649, ptr %arrayidx3.i2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_pci_cap_vpd_perm() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_perm_bits(ptr noundef getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3), i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr @vfio_vpd_config_write, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3, i32 3), align 4
  %0 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3), align 4
  %arrayidx.i = getelementptr i8, ptr %0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx.i, align 1
  %2 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3, i32 1), align 4
  %arrayidx3.i = getelementptr i8, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx3.i, align 1
  %4 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3), align 4
  %arrayidx.i1 = getelementptr i8, ptr %4, i32 2
  %5 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %arrayidx.i1, align 2
  %6 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3, i32 1), align 4
  %arrayidx3.i2 = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx3.i2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %arrayidx3.i2, align 2
  %8 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3), align 4
  %arrayidx.i3 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %arrayidx.i3, align 4
  %10 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 3, i32 1), align 4
  %arrayidx3.i4 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx3.i4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %arrayidx3.i4, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_pci_cap_pcix_perm() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_perm_bits(ptr noundef getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7), i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7), align 4
  %arrayidx.i = getelementptr i8, ptr %0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx.i, align 1
  %2 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7, i32 1), align 4
  %arrayidx3.i = getelementptr i8, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx3.i, align 1
  %4 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7), align 4
  %arrayidx.i1 = getelementptr i8, ptr %4, i32 2
  %5 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %arrayidx.i1, align 2
  %6 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7, i32 1), align 4
  %arrayidx3.i2 = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx3.i2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %arrayidx3.i2, align 2
  %8 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7), align 4
  %arrayidx.i3 = getelementptr i8, ptr %8, i32 8
  %9 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx.i3, align 4
  %10 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 7, i32 1), align 4
  %arrayidx3.i4 = getelementptr i8, ptr %10, i32 8
  %11 = ptrtoint ptr %arrayidx3.i4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %arrayidx3.i4, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_raw_config_write(ptr nocapture noundef readonly %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readnone %perm, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #12
  %3 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %count, label %entry.vfio_user_config_write.exit.thread_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb4.i
  ]

entry.vfio_user_config_write.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_user_config_write.exit.thread

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = trunc i32 %2 to i8
  %call.i = tail call i32 @pci_user_write_config_byte(ptr noundef %1, i32 noundef %pos, i8 noundef zeroext %conv.i) #12
  br label %vfio_user_config_write.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv2.i = trunc i32 %2 to i16
  %call3.i = tail call i32 @pci_user_write_config_word(ptr noundef %1, i32 noundef %pos, i16 noundef zeroext %conv2.i) #12
  br label %vfio_user_config_write.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call i32 @pci_user_write_config_dword(ptr noundef %1, i32 noundef %pos, i32 noundef %2) #12
  br label %vfio_user_config_write.exit

vfio_user_config_write.exit:                      ; preds = %sw.bb4.i, %sw.bb1.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call5.i, %sw.bb4.i ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %ret.0.i
  br label %vfio_user_config_write.exit.thread

vfio_user_config_write.exit.thread:               ; preds = %vfio_user_config_write.exit, %entry.vfio_user_config_write.exit.thread_crit_edge
  %4 = phi i32 [ -22, %entry.vfio_user_config_write.exit.thread_crit_edge ], [ %spec.select, %vfio_user_config_write.exit ]
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_pci_cap_exp_perm() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_perm_bits(ptr noundef getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16), i32 noundef 50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr @vfio_exp_config_write, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16, i32 3), align 4
  %0 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16), align 4
  %arrayidx.i = getelementptr i8, ptr %0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx.i, align 1
  %2 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16, i32 1), align 4
  %arrayidx3.i = getelementptr i8, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx3.i, align 1
  %4 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16), align 4
  %arrayidx.i1 = getelementptr i8, ptr %4, i32 8
  %5 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -7952, ptr %arrayidx.i1, align 2
  %6 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16, i32 1), align 4
  %arrayidx3.i2 = getelementptr i8, ptr %6, i32 8
  %7 = ptrtoint ptr %arrayidx3.i2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -3, ptr %arrayidx3.i2, align 2
  %8 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16), align 4
  %arrayidx.i3 = getelementptr i8, ptr %8, i32 40
  %9 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %arrayidx.i3, align 2
  %10 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 16, i32 1), align 4
  %arrayidx3.i4 = getelementptr i8, ptr %10, i32 40
  %11 = ptrtoint ptr %arrayidx3.i4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -8193, ptr %arrayidx3.i4, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_pci_cap_af_perm() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_perm_bits(ptr noundef getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 19), i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr @vfio_af_config_write, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 19, i32 3), align 4
  %0 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 19), align 4
  %arrayidx.i = getelementptr i8, ptr %0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx.i, align 1
  %2 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 19, i32 1), align 4
  %arrayidx3.i = getelementptr i8, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx3.i, align 1
  %4 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 19), align 4
  %arrayidx.i1 = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx.i1, align 1
  %6 = load ptr, ptr getelementptr inbounds ([21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 19, i32 1), align 4
  %arrayidx3.i2 = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %arrayidx3.i2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx3.i2, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_pci_ext_cap_err_perm() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_perm_bits(ptr noundef getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1), i32 noundef 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1, i32 1), align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1), align 4
  %arrayidx.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx.i, align 4
  %6 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1, i32 1), align 4
  %arrayidx3.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 837877507, ptr %arrayidx3.i, align 4
  %8 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1), align 4
  %arrayidx.i1 = getelementptr i8, ptr %8, i32 8
  %9 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx.i1, align 4
  %10 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1, i32 1), align 4
  %arrayidx3.i2 = getelementptr i8, ptr %10, i32 8
  %11 = ptrtoint ptr %arrayidx3.i2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 837877507, ptr %arrayidx3.i2, align 4
  %12 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1), align 4
  %arrayidx.i3 = getelementptr i8, ptr %12, i32 12
  %13 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx.i3, align 4
  %14 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1, i32 1), align 4
  %arrayidx3.i4 = getelementptr i8, ptr %14, i32 12
  %15 = ptrtoint ptr %arrayidx3.i4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 837877507, ptr %arrayidx3.i4, align 4
  %16 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1), align 4
  %arrayidx.i5 = getelementptr i8, ptr %16, i32 16
  %17 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.i5, align 4
  %18 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1, i32 1), align 4
  %arrayidx3.i6 = getelementptr i8, ptr %18, i32 16
  %19 = ptrtoint ptr %arrayidx3.i6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1041170432, ptr %arrayidx3.i6, align 4
  %20 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1), align 4
  %arrayidx.i7 = getelementptr i8, ptr %20, i32 20
  %21 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx.i7, align 4
  %22 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1, i32 1), align 4
  %arrayidx3.i8 = getelementptr i8, ptr %22, i32 20
  %23 = ptrtoint ptr %arrayidx3.i8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1041170432, ptr %arrayidx3.i8, align 4
  %24 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1), align 4
  %arrayidx.i9 = getelementptr i8, ptr %24, i32 24
  %25 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx.i9, align 4
  %26 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 1, i32 1), align 4
  %arrayidx3.i10 = getelementptr i8, ptr %26, i32 24
  %27 = ptrtoint ptr %arrayidx3.i10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1073807360, ptr %arrayidx3.i10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_pci_ext_cap_pwr_perm() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_perm_bits(ptr noundef getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 4), i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 4), align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 4, i32 1), align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 4), align 4
  %arrayidx.i = getelementptr i8, ptr %4, i32 8
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  %6 = load ptr, ptr getelementptr inbounds ([39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 4, i32 1), align 4
  %arrayidx3.i = getelementptr i8, ptr %6, i32 8
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %arrayidx3.i, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_config_init(ptr noundef %vdev) local_unnamed_addr #3 align 64 {
entry:
  %tmp.i.i.i = alloca i32, align 4
  %byte.i.i160 = alloca i8, align 1
  %dword.i.i161 = alloca i32, align 4
  %header.i = alloca i32, align 4
  %flags.i.i.i = alloca i16, align 2
  %dword.i.i = alloca i32, align 4
  %word.i.i = alloca i16, align 2
  %byte.i.i = alloca i8, align 1
  %status.i = alloca i16, align 2
  %pos.i = alloca i8, align 1
  %cap.i = alloca i8, align 1
  %next.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg_size, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i149

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i149:                                     ; preds = %entry
  %4 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg_size, align 8
  %call9.i148 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #16
  %tobool4.not = icmp eq ptr %call9.i148, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end8.i149
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i149
  %pci_config_map = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 4
  %6 = ptrtoint ptr %pci_config_map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %pci_config_map, align 4
  %vconfig7 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %7 = ptrtoint ptr %vconfig7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i148, ptr %vconfig7, align 4
  %8 = call ptr @memset(ptr %call9.i, i32 0, i32 64)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 64
  %9 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cfg_size, align 8
  %sub = add i32 %10, -64
  %11 = call ptr @memset(ptr %add.ptr, i32 255, i32 %sub)
  %call9 = tail call fastcc i32 @vfio_fill_vconfig_bytes(ptr noundef %vdev, i32 noundef 0, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end12:                                         ; preds = %if.end6
  %bardirty = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 23
  %12 = ptrtoint ptr %bardirty to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bardirty, align 4
  %arrayidx = getelementptr i8, ptr %call9.i148, i32 16
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 16
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %rbar = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18
  %16 = ptrtoint ptr %rbar to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rbar, align 4
  %arrayidx14 = getelementptr i8, ptr %call9.i148, i32 20
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx14, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx16 = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr i8, ptr %call9.i148, i32 24
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx17, align 8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %arrayidx19 = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 2
  %24 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr i8, ptr %call9.i148, i32 28
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx20, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %arrayidx22 = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 3
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx22, align 4
  %arrayidx23 = getelementptr i8, ptr %call9.i148, i32 32
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx23, align 32
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %arrayidx25 = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 4
  %32 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx25, align 4
  %arrayidx26 = getelementptr i8, ptr %call9.i148, i32 36
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx26, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %arrayidx28 = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 5
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx28, align 4
  %arrayidx29 = getelementptr i8, ptr %call9.i148, i32 48
  %37 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx29, align 16
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %arrayidx31 = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 6
  %40 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx31, align 4
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  %41 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %41, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %42 = and i40 %bf.load, 65536
  %tobool32.not = icmp eq i40 %42, 0
  br i1 %tobool32.not, label %if.end12.if.end45_crit_edge, label %if.then33

if.end12.if.end45_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then33:                                        ; preds = %if.end12
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vendor, align 8
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %46 = ptrtoint ptr %call9.i148 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %call9.i148, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %device, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %arrayidx35 = getelementptr i8, ptr %call9.i148, i32 2
  %50 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %arrayidx35, align 2
  %arrayidx36 = getelementptr i8, ptr %call9.i148, i32 61
  %51 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool37.not = icmp eq i8 %52, 0
  br i1 %tobool37.not, label %if.then33.if.end43_crit_edge, label %land.lhs.true

if.then33.if.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true:                                    ; preds = %if.then33
  %call38 = tail call ptr @pci_match_id(ptr noundef nonnull @known_bogus_vf_intx_pin, ptr noundef %1) #12
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.end, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %53 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx36, align 1
  %conv42 = zext i8 %54 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv42) #17
  br label %if.end43

if.end43:                                         ; preds = %do.end, %land.lhs.true.if.end43_crit_edge, %if.then33.if.end43_crit_edge
  %55 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx36, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end12.if.end45_crit_edge
  %56 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %56, i32 5)
  %bf.load46 = load i40, ptr %is_virtfn, align 1
  %57 = and i40 %bf.load46, 8
  %tobool50.not = icmp eq i40 %57, 0
  br i1 %tobool50.not, label %if.end45.if.end55_crit_edge, label %if.then51

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx52 = getelementptr i8, ptr %call9.i148, i32 4
  %58 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx52, align 4
  %60 = or i16 %59, 512
  store i16 %60, ptr %arrayidx52, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end45.if.end55_crit_edge
  %nointx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 26
  %61 = ptrtoint ptr %nointx to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nointx, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool56.not = icmp eq i8 %62, 0
  br i1 %tobool56.not, label %if.end55.if.end60_crit_edge, label %if.then58

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx59 = getelementptr i8, ptr %call9.i148, i32 61
  %63 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx59, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55.if.end60_crit_edge
  %64 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev1, align 4
  %66 = ptrtoint ptr %pci_config_map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pci_config_map, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #12
  %68 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %status.i, align 2, !annotation !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pos.i) #12
  %69 = ptrtoint ptr %pos.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %pos.i, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cap.i) #12
  %70 = ptrtoint ptr %cap.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %cap.i, align 1, !annotation !74
  %call.i = call i32 @pci_read_config_word(ptr noundef %65, i32 noundef 6, ptr noundef nonnull %status.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i152, label %if.end60.vfio_cap_init.exit_crit_edge

if.end60.vfio_cap_init.exit_crit_edge:            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_init.exit

if.end.i152:                                      ; preds = %if.end60
  %71 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %status.i, align 2
  %73 = and i16 %72, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool2.not.i = icmp eq i16 %73, 0
  br i1 %tobool2.not.i, label %if.end.i152.if.end64_crit_edge, label %if.end4.i153

if.end.i152.if.end64_crit_edge:                   ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.end4.i153:                                     ; preds = %if.end.i152
  %call5.i = call i32 @pci_read_config_byte(ptr noundef %65, i32 noundef 52, ptr noundef nonnull %pos.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i154, label %if.end4.i153.vfio_cap_init.exit_crit_edge

if.end4.i153.vfio_cap_init.exit_crit_edge:        ; preds = %if.end4.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_init.exit

if.end8.i154:                                     ; preds = %if.end4.i153
  %74 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool10.not165.i = icmp eq i8 %75, 0
  br i1 %tobool10.not165.i, label %if.end8.i154.if.then85.i_crit_edge, label %land.rhs.lr.ph.i

if.end8.i154.if.then85.i_crit_edge:               ; preds = %if.end8.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85.i

land.rhs.lr.ph.i:                                 ; preds = %if.end8.i154
  %76 = ptrtoint ptr %vconfig7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vconfig7, align 4
  %arrayidx.i = getelementptr i8, ptr %77, i32 52
  %extended_caps32.i.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 22
  %msi_perm.i.i.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 6
  %dev59.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %78 = phi i8 [ %75, %land.rhs.lr.ph.i ], [ %218, %cleanup.i.land.rhs.i_crit_edge ]
  %caps.0168.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %caps.1.i, %cleanup.i.land.rhs.i_crit_edge ]
  %loops.0167.i = phi i32 [ 48, %land.rhs.lr.ph.i ], [ %dec.i, %cleanup.i.land.rhs.i_crit_edge ]
  %prev.0166.i = phi ptr [ %arrayidx.i, %land.rhs.lr.ph.i ], [ %prev.1.i, %cleanup.i.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %loops.0167.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0167.i)
  %tobool11.not.i = icmp eq i32 %loops.0167.i, 0
  br i1 %tobool11.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %next.i) #12
  %79 = ptrtoint ptr %next.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %next.i, align 1, !annotation !74
  %conv12.i = zext i8 %78 to i32
  %call13.i = call i32 @pci_read_config_byte(ptr noundef %65, i32 noundef %conv12.i, ptr noundef nonnull %cap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %while.body.i.cleanup.thread.i_crit_edge

while.body.i.cleanup.thread.i_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end16.i:                                       ; preds = %while.body.i
  %80 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pos.i, align 1
  %conv17.i = zext i8 %81 to i32
  %add.i = add nuw nsw i32 %conv17.i, 1
  %call18.i = call i32 @pci_read_config_byte(ptr noundef %65, i32 noundef %add.i, ptr noundef nonnull %next.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.cleanup.thread.i_crit_edge

if.end16.i.cleanup.thread.i_crit_edge:            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end21.i:                                       ; preds = %if.end16.i
  %82 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %cap.i, align 1
  %conv22.i = zext i8 %83 to i32
  %84 = add i8 %83, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %84)
  %85 = icmp ult i8 %84, 20
  br i1 %85, label %if.then26.i, label %if.end21.i.do.end.i_crit_edge

if.end21.i.do.end.i_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then26.i:                                      ; preds = %if.end21.i
  %arrayidx27.i = getelementptr [21 x i8], ptr @pci_cap_length, i32 0, i32 %conv22.i
  %86 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = zext i8 %87 to i32
  %88 = lshr i32 328608, %conv22.i
  %89 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp29.not.i = icmp eq i32 %89, 0
  br i1 %cmp29.not.i, label %if.then26.i.if.end38.i_crit_edge, label %if.then31.i

if.then26.i.if.end38.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

if.then31.i:                                      ; preds = %if.then26.i
  %90 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pos.i, align 1
  %92 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dword.i.i) #12
  %94 = ptrtoint ptr %dword.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %dword.i.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word.i.i) #12
  %95 = ptrtoint ptr %word.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -1, ptr %word.i.i, align 2, !annotation !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i.i) #12
  %96 = ptrtoint ptr %byte.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -1, ptr %byte.i.i, align 1, !annotation !74
  %97 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %83, label %do.end.i.i [
    i8 5, label %sw.bb.i.i
    i8 7, label %sw.bb2.i.i
    i8 9, label %sw.bb15.i.i
    i8 16, label %sw.bb24.i.i
    i8 8, label %sw.bb52.i.i
    i8 18, label %sw.bb63.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then31.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %flags.i.i.i) #12
  %98 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -1, ptr %flags.i.i.i, align 2, !annotation !74
  %conv.i.i.i = zext i8 %91 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 2
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %93, i32 noundef %add.i.i.i, ptr noundef nonnull %flags.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread142.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  %switch.tableidx = add i32 %call.i.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %99 = icmp ult i32 %switch.tableidx, 9
  br i1 %99, label %switch.lookup, label %if.end.i.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge

if.end.i.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread142.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %100 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %flags.i.i.i, align 2
  %102 = and i16 %101, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool4.not.i.i.i = icmp eq i16 %102, 0
  %spec.select.i.i.i = select i1 %tobool4.not.i.i.i, i32 10, i32 14
  %103 = and i16 %101, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool10.not.i.i.i = icmp eq i16 %103, 0
  %add12.i.i.i = add nuw nsw i32 %spec.select.i.i.i, 10
  %len.1.i.i.i = select i1 %tobool10.not.i.i.i, i32 %spec.select.i.i.i, i32 %add12.i.i.i
  %104 = ptrtoint ptr %msi_perm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %msi_perm.i.i.i, align 4
  %tobool14.not.i.i.i = icmp eq ptr %105, null
  br i1 %tobool14.not.i.i.i, label %if.end16.i.i.i, label %if.end.i.i.i.if.end38.thread.i_crit_edge

if.end.i.i.i.if.end38.thread.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread.i

if.end16.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %106 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 3264, i32 noundef 16) #18
  %107 = ptrtoint ptr %msi_perm.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7.i.i.i.i, ptr %msi_perm.i.i.i, align 4
  %tobool20.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool20.not.i.i.i, label %if.end16.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge, label %if.end22.i.i.i

if.end16.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge: ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread142.i

if.end22.i.i.i:                                   ; preds = %if.end16.i.i.i
  %108 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %flags.i.i.i, align 2
  %sub.i.i.i.i.i = add nsw i32 %len.1.i.i.i, -1
  %or.i.i.i.i.i = or i32 %sub.i.i.i.i.i, 3
  %add.i.i.i.i.i = add nsw i32 %or.i.i.i.i.i, 1
  %call9.i.i.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i.i.i, i32 noundef 3520) #16
  %110 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call9.i.i.i.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %call9.i.i37.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i.i.i, i32 noundef 3520) #16
  %write.i.i.i.i.i = getelementptr inbounds %struct.perm_bits, ptr %call7.i.i.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %write.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call9.i.i37.i.i.i.i.i, ptr %write.i.i.i.i.i, align 4
  %112 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call7.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %113, null
  %tobool4.not.i.i.i.i.i = icmp eq ptr %call9.i.i37.i.i.i.i.i, null
  %or.cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i1 true, i1 %tobool4.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %if.then26.i.i.i, label %if.end.i44.i.i.i

if.end.i44.i.i.i:                                 ; preds = %if.end22.i.i.i
  %readfn.i.i.i.i.i = getelementptr inbounds %struct.perm_bits, ptr %call7.i.i.i.i, i32 0, i32 2
  %writefn.i.i.i.i.i = getelementptr inbounds %struct.perm_bits, ptr %call7.i.i.i.i, i32 0, i32 3
  %114 = ptrtoint ptr %readfn.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @vfio_msi_config_read, ptr %readfn.i.i.i.i.i, align 8
  %115 = ptrtoint ptr %writefn.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @vfio_msi_config_write, ptr %writefn.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr i8, ptr %113, i32 1
  %116 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -1, ptr %arrayidx.i.i.i.i.i, align 1
  %117 = ptrtoint ptr %write.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write.i.i.i.i.i, align 4
  %arrayidx3.i.i.i.i.i = getelementptr i8, ptr %118, i32 1
  %119 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %arrayidx3.i.i.i.i.i, align 1
  %120 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call7.i.i.i.i, align 8
  %arrayidx.i28.i.i.i.i = getelementptr i8, ptr %121, i32 2
  %122 = ptrtoint ptr %arrayidx.i28.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -1, ptr %arrayidx.i28.i.i.i.i, align 1
  %123 = load ptr, ptr %write.i.i.i.i.i, align 4
  %arrayidx3.i30.i.i.i.i = getelementptr i8, ptr %123, i32 2
  %124 = ptrtoint ptr %arrayidx3.i30.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -1, ptr %arrayidx3.i30.i.i.i.i, align 1
  %125 = load ptr, ptr %call7.i.i.i.i, align 8
  %arrayidx.i31.i.i.i.i = getelementptr i8, ptr %125, i32 4
  %126 = ptrtoint ptr %arrayidx.i31.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %arrayidx.i31.i.i.i.i, align 4
  %127 = load ptr, ptr %write.i.i.i.i.i, align 4
  %arrayidx3.i33.i.i.i.i = getelementptr i8, ptr %127, i32 4
  %128 = ptrtoint ptr %arrayidx3.i33.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %arrayidx3.i33.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %109 to i32
  %and.i.i.i.i = and i32 %conv.i.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %129 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call7.i.i.i.i, align 8
  %arrayidx.i46.i.i.i.i = getelementptr i8, ptr %130, i32 8
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then2.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i44.i.i.i
  %131 = ptrtoint ptr %arrayidx.i46.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %arrayidx.i46.i.i.i.i, align 4
  %132 = ptrtoint ptr %write.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write.i.i.i.i.i, align 4
  %arrayidx3.i36.i.i.i.i = getelementptr i8, ptr %133, i32 8
  %134 = ptrtoint ptr %arrayidx3.i36.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %arrayidx3.i36.i.i.i.i, align 4
  %135 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %call7.i.i.i.i, align 8
  %arrayidx.i37.i.i.i.i = getelementptr i8, ptr %136, i32 12
  %137 = ptrtoint ptr %arrayidx.i37.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -1, ptr %arrayidx.i37.i.i.i.i, align 2
  %138 = load ptr, ptr %write.i.i.i.i.i, align 4
  %arrayidx3.i39.i.i.i.i = getelementptr i8, ptr %138, i32 12
  %139 = ptrtoint ptr %arrayidx3.i39.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -1, ptr %arrayidx3.i39.i.i.i.i, align 2
  %and4.i.i.i.i = and i32 %conv.i.i.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %and4.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i, label %if.then2.i.i.i.i.if.end38.thread.i_crit_edge, label %if.then2.i.i.i.i.if.end38.thread.sink.split.i_crit_edge

if.then2.i.i.i.i.if.end38.thread.sink.split.i_crit_edge: ; preds = %if.then2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread.sink.split.i

if.then2.i.i.i.i.if.end38.thread.i_crit_edge:     ; preds = %if.then2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread.i

if.else.i.i.i.i:                                  ; preds = %if.end.i44.i.i.i
  %140 = ptrtoint ptr %arrayidx.i46.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 -1, ptr %arrayidx.i46.i.i.i.i, align 2
  %141 = ptrtoint ptr %write.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write.i.i.i.i.i, align 4
  %arrayidx3.i48.i.i.i.i = getelementptr i8, ptr %142, i32 8
  %143 = ptrtoint ptr %arrayidx3.i48.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 -1, ptr %arrayidx3.i48.i.i.i.i, align 2
  %and9.i.i.i.i = and i32 %conv.i.i.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i.i)
  %tobool10.not.i.i.i.i = icmp eq i32 %and9.i.i.i.i, 0
  br i1 %tobool10.not.i.i.i.i, label %if.else.i.i.i.i.if.end38.thread.i_crit_edge, label %if.else.i.i.i.i.if.end38.thread.sink.split.i_crit_edge

if.else.i.i.i.i.if.end38.thread.sink.split.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread.sink.split.i

if.else.i.i.i.i.if.end38.thread.i_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread.i

if.then26.i.i.i:                                  ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %113) #12
  %144 = ptrtoint ptr %write.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write.i.i.i.i.i, align 4
  call void @kfree(ptr noundef %145) #12
  %146 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %call7.i.i.i.i, align 8
  %147 = ptrtoint ptr %write.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %write.i.i.i.i.i, align 4
  %148 = ptrtoint ptr %msi_perm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %msi_perm.i.i.i, align 4
  call void @kfree(ptr noundef %149) #12
  br label %vfio_cap_len.exit.thread142.i

sw.bb2.i.i:                                       ; preds = %if.then31.i
  %conv3.i.i = zext i8 %91 to i32
  %add.i.i = add nuw nsw i32 %conv3.i.i, 2
  %call4.i.i = call i32 @pci_read_config_word(ptr noundef %93, i32 noundef %add.i.i, ptr noundef nonnull %word.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i155 = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i155, label %if.end.i.i156, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp.i.i.i = icmp slt i32 %call4.i.i, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.vfio_cap_len.exit.thread.i_crit_edge, label %if.end.i114.i.i

if.then.i.i.vfio_cap_len.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread.i

if.end.i114.i.i:                                  ; preds = %if.then.i.i
  %switch.tableidx246 = add i32 %call4.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx246)
  %150 = icmp ult i32 %switch.tableidx246, 9
  br i1 %150, label %switch.lookup245, label %if.end.i114.i.i.vfio_cap_len.exit.thread.i_crit_edge

if.end.i114.i.i.vfio_cap_len.exit.thread.i_crit_edge: ; preds = %if.end.i114.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread.i

if.end.i.i156:                                    ; preds = %sw.bb2.i.i
  %151 = ptrtoint ptr %word.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %word.i.i, align 2
  %153 = and i16 %152, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool7.not.i.i = icmp eq i16 %153, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i156.vfio_cap_len.exit.thread138.i_crit_edge, label %if.then8.i.i

if.end.i.i156.vfio_cap_len.exit.thread138.i_crit_edge: ; preds = %if.end.i.i156
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread138.i

if.then8.i.i:                                     ; preds = %if.end.i.i156
  %cfg_size.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 45
  %154 = ptrtoint ptr %cfg_size.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cfg_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %155)
  %cmp.i.i157 = icmp sgt i32 %155, 256
  br i1 %cmp.i.i157, label %if.then10.i.i, label %if.then8.i.i.vfio_cap_len.exit.thread138.i_crit_edge

if.then8.i.i.vfio_cap_len.exit.thread138.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread138.i

if.then10.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i.i = call i32 @pci_read_config_dword(ptr noundef %93, i32 noundef 256, ptr noundef nonnull %dword.i.i) #12
  %156 = ptrtoint ptr %dword.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %dword.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp12.i.i = icmp ne i32 %157, 0
  %frombool.i.i = zext i1 %cmp12.i.i to i8
  %158 = ptrtoint ptr %extended_caps32.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %frombool.i.i, ptr %extended_caps32.i.i, align 1
  br label %vfio_cap_len.exit.thread138.i

sw.bb15.i.i:                                      ; preds = %if.then31.i
  %conv16.i.i = zext i8 %91 to i32
  %add17.i.i = add nuw nsw i32 %conv16.i.i, 2
  %call18.i.i = call i32 @pci_read_config_byte(ptr noundef %93, i32 noundef %add17.i.i, ptr noundef nonnull %byte.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end22.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i.i)
  %cmp.i116.i.i = icmp slt i32 %call18.i.i, 1
  br i1 %cmp.i116.i.i, label %if.then20.i.i.vfio_cap_len.exit.thread.i_crit_edge, label %if.end.i117.i.i

if.then20.i.i.vfio_cap_len.exit.thread.i_crit_edge: ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread.i

if.end.i117.i.i:                                  ; preds = %if.then20.i.i
  %switch.tableidx250 = add i32 %call18.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx250)
  %159 = icmp ult i32 %switch.tableidx250, 9
  br i1 %159, label %switch.lookup249, label %if.end.i117.i.i.vfio_cap_len.exit.thread.i_crit_edge

if.end.i117.i.i.vfio_cap_len.exit.thread.i_crit_edge: ; preds = %if.end.i117.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread.i

if.end22.i.i:                                     ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %160 = ptrtoint ptr %byte.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %byte.i.i, align 1
  %conv23.i.i = zext i8 %161 to i32
  br label %vfio_cap_len.exit.thread138.i

sw.bb24.i.i:                                      ; preds = %if.then31.i
  %cfg_size25.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 45
  %162 = ptrtoint ptr %cfg_size25.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cfg_size25.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %163)
  %cmp26.i.i = icmp sgt i32 %163, 256
  br i1 %cmp26.i.i, label %if.then28.i.i, label %sw.bb24.i.i.if.end34.i.i_crit_edge

sw.bb24.i.i.if.end34.i.i_crit_edge:               ; preds = %sw.bb24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i.i

if.then28.i.i:                                    ; preds = %sw.bb24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call29.i.i = call i32 @pci_read_config_dword(ptr noundef %93, i32 noundef 256, ptr noundef nonnull %dword.i.i) #12
  %164 = ptrtoint ptr %dword.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dword.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp30.i.i158 = icmp ne i32 %165, 0
  %frombool33.i.i = zext i1 %cmp30.i.i158 to i8
  %166 = ptrtoint ptr %extended_caps32.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %frombool33.i.i, ptr %extended_caps32.i.i, align 1
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then28.i.i, %sw.bb24.i.i.if.end34.i.i_crit_edge
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 25
  %167 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %169 = and i16 %168, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %169)
  %cmp38.i.i = icmp eq i16 %169, 1
  %170 = and i16 %168, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 144, i16 %170)
  %cmp42.i.i = icmp eq i16 %170, 144
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.else46.i.i

if.then40.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %..i.i = select i1 %cmp42.i.i, i32 12, i32 20
  br label %vfio_cap_len.exit.thread138.i

if.else46.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %.112.i.i = select i1 %cmp42.i.i, i32 44, i32 50
  br label %vfio_cap_len.exit.thread138.i

sw.bb52.i.i:                                      ; preds = %if.then31.i
  %conv53.i.i = zext i8 %91 to i32
  %add54.i.i = add nuw nsw i32 %conv53.i.i, 3
  %call55.i.i = call i32 @pci_read_config_byte(ptr noundef %93, i32 noundef %add54.i.i, ptr noundef nonnull %byte.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %if.end59.i.i, label %if.then57.i.i

if.then57.i.i:                                    ; preds = %sw.bb52.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i.i)
  %cmp.i127.i.i = icmp slt i32 %call55.i.i, 1
  br i1 %cmp.i127.i.i, label %if.then57.i.i.vfio_cap_len.exit.thread.i_crit_edge, label %if.end.i128.i.i

if.then57.i.i.vfio_cap_len.exit.thread.i_crit_edge: ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread.i

if.end.i128.i.i:                                  ; preds = %if.then57.i.i
  %switch.tableidx254 = add i32 %call55.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx254)
  %171 = icmp ult i32 %switch.tableidx254, 9
  br i1 %171, label %switch.lookup253, label %if.end.i128.i.i.vfio_cap_len.exit.thread.i_crit_edge

if.end.i128.i.i.vfio_cap_len.exit.thread.i_crit_edge: ; preds = %if.end.i128.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread.i

if.end59.i.i:                                     ; preds = %sw.bb52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %byte.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %byte.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %173)
  %tobool62.not.i.i = icmp ult i8 %173, 32
  %cond.i.i = select i1 %tobool62.not.i.i, i32 28, i32 24
  br label %vfio_cap_len.exit.thread138.i

sw.bb63.i.i:                                      ; preds = %if.then31.i
  %conv64.i.i = zext i8 %91 to i32
  %add65.i.i = add nuw nsw i32 %conv64.i.i, 4
  %call66.i.i = call i32 @pci_read_config_byte(ptr noundef %93, i32 noundef %add65.i.i, ptr noundef nonnull %byte.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i)
  %tobool67.not.i.i = icmp eq i32 %call66.i.i, 0
  br i1 %tobool67.not.i.i, label %if.end70.i.i, label %if.then68.i.i

if.then68.i.i:                                    ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66.i.i)
  %cmp.i137.i.i = icmp slt i32 %call66.i.i, 1
  br i1 %cmp.i137.i.i, label %if.then68.i.i.vfio_cap_len.exit.thread.i_crit_edge, label %if.end.i138.i.i

if.then68.i.i.vfio_cap_len.exit.thread.i_crit_edge: ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread.i

if.end.i138.i.i:                                  ; preds = %if.then68.i.i
  %switch.tableidx258 = add i32 %call66.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx258)
  %174 = icmp ult i32 %switch.tableidx258, 9
  br i1 %174, label %switch.lookup257, label %if.end.i138.i.i.vfio_cap_len.exit.thread.i_crit_edge

if.end.i138.i.i.vfio_cap_len.exit.thread.i_crit_edge: ; preds = %if.end.i138.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_cap_len.exit.thread.i

if.end70.i.i:                                     ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %byte.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %byte.i.i, align 1
  %177 = and i8 %176, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %177)
  %cmp75.i.i = icmp eq i8 %177, 15
  %.113.i.i = select i1 %cmp75.i.i, i32 16, i32 8
  br label %vfio_cap_len.exit.thread138.i

do.end.i.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %conv80.i.i = zext i8 %91 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %conv22.i, i32 noundef %conv80.i.i) #17
  br label %vfio_cap_len.exit.thread138.i

switch.lookup245:                                 ; preds = %if.end.i114.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep247 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.26, i32 0, i32 %switch.tableidx246
  br label %vfio_cap_len.exit.thread.i.sink.split

switch.lookup249:                                 ; preds = %if.end.i117.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep251 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.27, i32 0, i32 %switch.tableidx250
  br label %vfio_cap_len.exit.thread.i.sink.split

switch.lookup253:                                 ; preds = %if.end.i128.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep255 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.28, i32 0, i32 %switch.tableidx254
  br label %vfio_cap_len.exit.thread.i.sink.split

switch.lookup257:                                 ; preds = %if.end.i138.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep259 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.29, i32 0, i32 %switch.tableidx258
  br label %vfio_cap_len.exit.thread.i.sink.split

vfio_cap_len.exit.thread.i.sink.split:            ; preds = %switch.lookup257, %switch.lookup253, %switch.lookup249, %switch.lookup245
  %switch.gep259.sink = phi ptr [ %switch.gep259, %switch.lookup257 ], [ %switch.gep255, %switch.lookup253 ], [ %switch.gep251, %switch.lookup249 ], [ %switch.gep247, %switch.lookup245 ]
  %178 = ptrtoint ptr %switch.gep259.sink to i32
  call void @__asan_load4_noabort(i32 %178)
  %switch.load260 = load i32, ptr %switch.gep259.sink, align 4
  br label %vfio_cap_len.exit.thread.i

vfio_cap_len.exit.thread.i:                       ; preds = %vfio_cap_len.exit.thread.i.sink.split, %if.end.i138.i.i.vfio_cap_len.exit.thread.i_crit_edge, %if.then68.i.i.vfio_cap_len.exit.thread.i_crit_edge, %if.end.i128.i.i.vfio_cap_len.exit.thread.i_crit_edge, %if.then57.i.i.vfio_cap_len.exit.thread.i_crit_edge, %if.end.i117.i.i.vfio_cap_len.exit.thread.i_crit_edge, %if.then20.i.i.vfio_cap_len.exit.thread.i_crit_edge, %if.end.i114.i.i.vfio_cap_len.exit.thread.i_crit_edge, %if.then.i.i.vfio_cap_len.exit.thread.i_crit_edge
  %retval.0.i.ph.i159 = phi i32 [ %call66.i.i, %if.then68.i.i.vfio_cap_len.exit.thread.i_crit_edge ], [ %call55.i.i, %if.then57.i.i.vfio_cap_len.exit.thread.i_crit_edge ], [ %call18.i.i, %if.then20.i.i.vfio_cap_len.exit.thread.i_crit_edge ], [ %call4.i.i, %if.then.i.i.vfio_cap_len.exit.thread.i_crit_edge ], [ -34, %if.end.i114.i.i.vfio_cap_len.exit.thread.i_crit_edge ], [ -34, %if.end.i117.i.i.vfio_cap_len.exit.thread.i_crit_edge ], [ -34, %if.end.i128.i.i.vfio_cap_len.exit.thread.i_crit_edge ], [ -34, %if.end.i138.i.i.vfio_cap_len.exit.thread.i_crit_edge ], [ %switch.load260, %vfio_cap_len.exit.thread.i.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword.i.i) #12
  br label %cleanup.thread.i

vfio_cap_len.exit.thread138.i:                    ; preds = %do.end.i.i, %if.end70.i.i, %if.end59.i.i, %if.else46.i.i, %if.then40.i.i, %if.end22.i.i, %if.then10.i.i, %if.then8.i.i.vfio_cap_len.exit.thread138.i_crit_edge, %if.end.i.i156.vfio_cap_len.exit.thread138.i_crit_edge
  %retval.0.i.ph137.i = phi i32 [ %.113.i.i, %if.end70.i.i ], [ %.112.i.i, %if.else46.i.i ], [ %..i.i, %if.then40.i.i ], [ 8, %if.end.i.i156.vfio_cap_len.exit.thread138.i_crit_edge ], [ 24, %if.then8.i.i.vfio_cap_len.exit.thread138.i_crit_edge ], [ 24, %if.then10.i.i ], [ %conv23.i.i, %if.end22.i.i ], [ %cond.i.i, %if.end59.i.i ], [ 0, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword.i.i) #12
  br label %if.end38.i

switch.lookup:                                    ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init, i32 0, i32 %switch.tableidx
  %179 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %179)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %vfio_cap_len.exit.thread142.i

vfio_cap_len.exit.thread142.i:                    ; preds = %switch.lookup, %if.then26.i.i.i, %if.end16.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge, %if.end.i.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge, %if.then.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge
  %retval.0.i.i.ph.i = phi i32 [ %call.i.i.i, %if.then.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge ], [ -12, %if.then26.i.i.i ], [ %switch.load, %switch.lookup ], [ -34, %if.end.i.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge ], [ -12, %if.end16.i.i.i.vfio_cap_len.exit.thread142.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %flags.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword.i.i) #12
  br label %cleanup.thread.i

if.end38.thread.sink.split.i:                     ; preds = %if.else.i.i.i.i.if.end38.thread.sink.split.i_crit_edge, %if.then2.i.i.i.i.if.end38.thread.sink.split.i_crit_edge
  %.sink184.i = phi i32 [ 16, %if.then2.i.i.i.i.if.end38.thread.sink.split.i_crit_edge ], [ 12, %if.else.i.i.i.i.if.end38.thread.sink.split.i_crit_edge ]
  %.sink182.i = phi i32 [ 20, %if.then2.i.i.i.i.if.end38.thread.sink.split.i_crit_edge ], [ 16, %if.else.i.i.i.i.if.end38.thread.sink.split.i_crit_edge ]
  %180 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %call7.i.i.i.i, align 8
  %arrayidx.i49.i.i.i.i = getelementptr i8, ptr %181, i32 %.sink184.i
  %182 = ptrtoint ptr %arrayidx.i49.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %arrayidx.i49.i.i.i.i, align 4
  %183 = ptrtoint ptr %write.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write.i.i.i.i.i, align 4
  %arrayidx3.i51.i.i.i.i = getelementptr i8, ptr %184, i32 %.sink184.i
  %185 = ptrtoint ptr %arrayidx3.i51.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %arrayidx3.i51.i.i.i.i, align 4
  %186 = load ptr, ptr %call7.i.i.i.i, align 8
  %arrayidx.i52.i.i.i.i = getelementptr i8, ptr %186, i32 %.sink182.i
  %187 = ptrtoint ptr %arrayidx.i52.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %arrayidx.i52.i.i.i.i, align 4
  %188 = load ptr, ptr %write.i.i.i.i.i, align 4
  %arrayidx3.i54.i.i.i.i = getelementptr i8, ptr %188, i32 %.sink182.i
  %189 = ptrtoint ptr %arrayidx3.i54.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -1, ptr %arrayidx3.i54.i.i.i.i, align 4
  br label %if.end38.thread.i

if.end38.thread.i:                                ; preds = %if.end38.thread.sink.split.i, %if.else.i.i.i.i.if.end38.thread.i_crit_edge, %if.then2.i.i.i.i.if.end38.thread.i_crit_edge, %if.end.i.i.i.if.end38.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %flags.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword.i.i) #12
  br label %for.body.preheader.i

if.end38.i:                                       ; preds = %vfio_cap_len.exit.thread138.i, %if.then26.i.if.end38.i_crit_edge
  %len.0.i = phi i32 [ %conv28.i, %if.then26.i.if.end38.i_crit_edge ], [ %retval.0.i.ph137.i, %vfio_cap_len.exit.thread138.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool39.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool39.not.i, label %if.end38.i.do.end.i_crit_edge, label %if.end38.i.for.body.preheader.i_crit_edge

if.end38.i.for.body.preheader.i_crit_edge:        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader.i

if.end38.i.do.end.i_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.preheader.i:                             ; preds = %if.end38.i.for.body.preheader.i_crit_edge, %if.end38.thread.i
  %len.0175.i = phi i32 [ %len.1.i.i.i, %if.end38.thread.i ], [ %len.0.i, %if.end38.i.for.body.preheader.i_crit_edge ]
  br label %for.body.i

do.end.i:                                         ; preds = %if.end38.i.do.end.i_crit_edge, %if.end21.i.do.end.i_crit_edge
  %190 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %cap.i, align 1
  %conv41.i = zext i8 %191 to i32
  %192 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %pos.i, align 1
  %conv42.i = zext i8 %193 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev59.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %conv41.i, i32 noundef %conv42.i) #17
  %194 = ptrtoint ptr %next.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %next.i, align 1
  %196 = ptrtoint ptr %prev.0166.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %prev.0166.i, align 1
  %197 = load i8, ptr %next.i, align 1
  %198 = ptrtoint ptr %pos.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %pos.i, align 1
  br label %cleanup.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0164.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %199 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %pos.i, align 1
  %conv46.i = zext i8 %200 to i32
  %add47.i = add nuw nsw i32 %i.0164.i, %conv46.i
  %arrayidx48.i = getelementptr i8, ptr %67, i32 %add47.i
  %201 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %202)
  %cmp50.i = icmp eq i8 %202, -1
  br i1 %cmp50.i, label %for.body.i.for.inc.i_crit_edge, label %do.end58.i, !prof !75

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end58.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv49.i = zext i8 %202 to i32
  %203 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %cap.i, align 1
  %conv66.i = zext i8 %204 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev59.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %add47.i, i32 noundef %conv49.i, i32 noundef %conv66.i) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end58.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0164.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len.0175.i
  br i1 %exitcond.not.i, label %do.end69.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end69.i:                                       ; preds = %for.inc.i
  %205 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %pos.i, align 1
  %conv70.i = zext i8 %206 to i32
  %add.ptr.i = getelementptr i8, ptr %67, i32 %conv70.i
  %207 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %cap.i, align 1
  %209 = zext i8 %208 to i32
  %210 = call ptr @memset(ptr %add.ptr.i, i32 %209, i32 %len.0175.i)
  %211 = load i8, ptr %pos.i, align 1
  %conv72.i = zext i8 %211 to i32
  %call73.i = call fastcc i32 @vfio_fill_vconfig_bytes(ptr noundef %vdev, i32 noundef %conv72.i, i32 noundef %len.0175.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %do.end69.i.cleanup.thread.i_crit_edge

do.end69.i.cleanup.thread.i_crit_edge:            ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end76.i:                                       ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %vconfig7 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %vconfig7, align 4
  %214 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %pos.i, align 1
  %conv78.i = zext i8 %215 to i32
  %add79.i = add nuw nsw i32 %conv78.i, 1
  %arrayidx80.i = getelementptr i8, ptr %213, i32 %add79.i
  %216 = ptrtoint ptr %next.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %next.i, align 1
  store i8 %217, ptr %pos.i, align 1
  %inc81.i = add i32 %caps.0168.i, 1
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %do.end69.i.cleanup.thread.i_crit_edge, %vfio_cap_len.exit.thread142.i, %vfio_cap_len.exit.thread.i, %if.end16.i.cleanup.thread.i_crit_edge, %while.body.i.cleanup.thread.i_crit_edge
  %retval.1.ph.i = phi i32 [ %retval.0.i.i.ph.i, %vfio_cap_len.exit.thread142.i ], [ %retval.0.i.ph.i159, %vfio_cap_len.exit.thread.i ], [ %call73.i, %do.end69.i.cleanup.thread.i_crit_edge ], [ %call18.i, %if.end16.i.cleanup.thread.i_crit_edge ], [ %call13.i, %while.body.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %next.i) #12
  br label %vfio_cap_init.exit

cleanup.i:                                        ; preds = %if.end76.i, %do.end.i
  %218 = phi i8 [ %217, %if.end76.i ], [ %197, %do.end.i ]
  %prev.1.i = phi ptr [ %arrayidx80.i, %if.end76.i ], [ %prev.0166.i, %do.end.i ]
  %caps.1.i = phi i32 [ %inc81.i, %if.end76.i ], [ %caps.0168.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %next.i) #12
  %tobool10.not.i = icmp eq i8 %218, 0
  br i1 %tobool10.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.land.rhs.i_crit_edge

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge
  %caps.0.lcssa.i = phi i32 [ %caps.0168.i, %land.rhs.i.while.end.i_crit_edge ], [ %caps.1.i, %cleanup.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %caps.0.lcssa.i)
  %tobool84.not.i = icmp eq i32 %caps.0.lcssa.i, 0
  br i1 %tobool84.not.i, label %while.end.i.if.then85.i_crit_edge, label %while.end.i.if.end64_crit_edge

while.end.i.if.end64_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

while.end.i.if.then85.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85.i

if.then85.i:                                      ; preds = %while.end.i.if.then85.i_crit_edge, %if.end8.i154.if.then85.i_crit_edge
  %219 = ptrtoint ptr %vconfig7 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %vconfig7, align 4
  %arrayidx87.i = getelementptr i8, ptr %220, i32 6
  %221 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %arrayidx87.i, align 2
  %223 = and i16 %222, -4097
  store i16 %223, ptr %arrayidx87.i, align 2
  br label %if.end64

vfio_cap_init.exit:                               ; preds = %cleanup.thread.i, %if.end4.i153.vfio_cap_init.exit_crit_edge, %if.end60.vfio_cap_init.exit_crit_edge
  %retval.2.i = phi i32 [ %call.i, %if.end60.vfio_cap_init.exit_crit_edge ], [ %call5.i, %if.end4.i153.vfio_cap_init.exit_crit_edge ], [ %retval.1.ph.i, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cap.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pos.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #12
  br label %out

if.end64:                                         ; preds = %if.then85.i, %while.end.i.if.end64_crit_edge, %if.end.i152.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cap.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pos.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #12
  %224 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pdev1, align 4
  %226 = ptrtoint ptr %pci_config_map to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pci_config_map, align 4
  %extended_caps.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 22
  %228 = ptrtoint ptr %extended_caps.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %extended_caps.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool.not.i164 = icmp eq i8 %229, 0
  br i1 %tobool.not.i164, label %if.end64.cleanup_crit_edge, label %if.end.i165

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i165:                                      ; preds = %if.end64
  %cfg_size.i = getelementptr inbounds %struct.pci_dev, ptr %225, i32 0, i32 45
  %230 = ptrtoint ptr %cfg_size.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %cfg_size.i, align 8
  %sub.off.i = add i32 %231, -253
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.off.i)
  %232 = icmp ult i32 %sub.off.i, 7
  br i1 %232, label %if.end.i165.if.then86.i_crit_edge, label %land.rhs.lr.ph.i167

if.end.i165.if.then86.i_crit_edge:                ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then86.i

land.rhs.lr.ph.i167:                              ; preds = %if.end.i165
  %sub.i = add i32 %231, -256
  %div.i = sdiv i32 %sub.i, 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %225, i32 0, i32 44
  br label %land.rhs.i169

land.rhs.i169:                                    ; preds = %cleanup.i218.land.rhs.i169_crit_edge, %land.rhs.lr.ph.i167
  %dec170.in.i = phi i32 [ %div.i, %land.rhs.lr.ph.i167 ], [ %dec170.i, %cleanup.i218.land.rhs.i169_crit_edge ]
  %ecaps.0168.i = phi i32 [ 0, %land.rhs.lr.ph.i167 ], [ %ecaps.2.i, %cleanup.i218.land.rhs.i169_crit_edge ]
  %prev.0167.i = phi ptr [ null, %land.rhs.lr.ph.i167 ], [ %prev.1.i216, %cleanup.i218.land.rhs.i169_crit_edge ]
  %epos.0166.i = phi i16 [ 256, %land.rhs.lr.ph.i167 ], [ %epos.1.i, %cleanup.i218.land.rhs.i169_crit_edge ]
  %dec170.i = add i32 %dec170.in.i, -1
  %conv.i = zext i16 %epos.0166.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %epos.0166.i)
  %cmp.i168 = icmp ugt i16 %epos.0166.i, 255
  br i1 %cmp.i168, label %while.body.i171, label %land.rhs.i169.while.end.i219_crit_edge

land.rhs.i169.while.end.i219_crit_edge:           ; preds = %land.rhs.i169
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i219

while.body.i171:                                  ; preds = %land.rhs.i169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i) #12
  %233 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 -1, ptr %header.i, align 4, !annotation !74
  %call.i170 = call i32 @pci_read_config_dword(ptr noundef %225, i32 noundef %conv.i, ptr noundef nonnull %header.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool5.not.i = icmp eq i32 %call.i170, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %while.body.i171.vfio_ecap_init.exit_crit_edge

while.body.i171.vfio_ecap_init.exit_crit_edge:    ; preds = %while.body.i171
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ecap_init.exit

if.end7.i:                                        ; preds = %while.body.i171
  %234 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %header.i, align 4
  %conv8.i = trunc i32 %235 to i16
  %conv9.i = and i32 %235, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %conv9.i)
  %cmp10.i = icmp ult i32 %conv9.i, 39
  br i1 %cmp10.i, label %if.then12.i, label %if.end7.i.do.end.i206_crit_edge

if.end7.i.do.end.i206_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i206

if.then12.i:                                      ; preds = %if.end7.i
  %arrayidx.i172 = getelementptr [39 x i16], ptr @pci_ext_cap_length, i32 0, i32 %conv9.i
  %236 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %arrayidx.i172, align 2
  %conv13.i = zext i16 %237 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %237)
  %cmp14.i = icmp eq i16 %237, 255
  br i1 %cmp14.i, label %if.then16.i, label %if.then12.i.if.end23.i_crit_edge

if.then12.i.if.end23.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then16.i:                                      ; preds = %if.then12.i
  %238 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i.i160) #12
  %240 = ptrtoint ptr %byte.i.i160 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 -1, ptr %byte.i.i160, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dword.i.i161) #12
  %241 = ptrtoint ptr %dword.i.i161 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 -1, ptr %dword.i.i161, align 4, !annotation !74
  %242 = zext i16 %conv8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %conv8.i, label %do.end.i.i204 [
    i16 11, label %sw.bb.i.i175
    i16 2, label %if.then16.i.sw.bb4.i.i_crit_edge
    i16 9, label %if.then16.i.sw.bb4.i.i_crit_edge299
    i16 8, label %if.then16.i.sw.bb4.i.i_crit_edge300
    i16 13, label %sw.bb6.i.i
    i16 21, label %sw.bb30.i.i
    i16 22, label %sw.bb46.i.i
    i16 23, label %sw.bb60.i.i
  ]

if.then16.i.sw.bb4.i.i_crit_edge300:              ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4.i.i

if.then16.i.sw.bb4.i.i_crit_edge299:              ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4.i.i

if.then16.i.sw.bb4.i.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4.i.i

sw.bb.i.i175:                                     ; preds = %if.then16.i
  %add.i.i173 = add nuw nsw i32 %conv.i, 4
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %239, i32 noundef %add.i.i173, ptr noundef nonnull %dword.i.i161) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i174 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i174, label %if.end.i.i185, label %if.then.i.i177

if.then.i.i177:                                   ; preds = %sw.bb.i.i175
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i.i176 = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i.i.i176, label %if.then.i.i177.vfio_ext_cap_len.exit.thread.i_crit_edge, label %if.end.i.i.i178

if.then.i.i177.vfio_ext_cap_len.exit.thread.i_crit_edge: ; preds = %if.then.i.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread.i

if.end.i.i.i178:                                  ; preds = %if.then.i.i177
  %switch.tableidx262 = add i32 %call.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx262)
  %243 = icmp ult i32 %switch.tableidx262, 9
  br i1 %243, label %switch.lookup261, label %if.end.i.i.i178.vfio_ext_cap_len.exit.thread.i_crit_edge

if.end.i.i.i178.vfio_ext_cap_len.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread.i

if.end.i.i185:                                    ; preds = %sw.bb.i.i175
  call void @__sanitizer_cov_trace_pc() #14
  %244 = ptrtoint ptr %dword.i.i161 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %dword.i.i161, align 4
  %shr.i.i = lshr i32 %245, 20
  br label %vfio_ext_cap_len.exit.thread144.i

sw.bb4.i.i:                                       ; preds = %if.then16.i.sw.bb4.i.i_crit_edge, %if.then16.i.sw.bb4.i.i_crit_edge299, %if.then16.i.sw.bb4.i.i_crit_edge300
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #12
  %246 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !74
  %add.i.i.i186 = add nuw nsw i32 %conv.i, 4
  %call.i.i.i187 = call i32 @pci_read_config_dword(ptr noundef %239, i32 noundef %add.i.i.i186, ptr noundef nonnull %tmp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i187)
  %tobool.not.i.i.i188 = icmp eq i32 %call.i.i.i187, 0
  br i1 %tobool.not.i.i.i188, label %if.end.i112.i.i, label %if.then.i.i.i190

if.then.i.i.i190:                                 ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i187)
  %cmp.i.i.i.i189 = icmp slt i32 %call.i.i.i187, 1
  br i1 %cmp.i.i.i.i189, label %if.then.i.i.i190.vfio_vc_cap_len.exit.i.i_crit_edge, label %if.end.i.i.i.i191

if.then.i.i.i190.vfio_vc_cap_len.exit.i.i_crit_edge: ; preds = %if.then.i.i.i190
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_vc_cap_len.exit.i.i

if.end.i.i.i.i191:                                ; preds = %if.then.i.i.i190
  %switch.tableidx266 = add i32 %call.i.i.i187, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx266)
  %247 = icmp ult i32 %switch.tableidx266, 9
  br i1 %247, label %switch.lookup265, label %if.end.i.i.i.i191.vfio_vc_cap_len.exit.i.i_crit_edge

if.end.i.i.i.i191.vfio_vc_cap_len.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i191
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_vc_cap_len.exit.i.i

if.end.i112.i.i:                                  ; preds = %sw.bb4.i.i
  %248 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %tmp.i.i.i, align 4
  %and.i.i.i = and i32 %249, 7
  %add4.i.i.i = add nuw nsw i32 %conv.i, 8
  %call5.i.i.i = call i32 @pci_read_config_dword(ptr noundef %239, i32 noundef %add4.i.i.i, ptr noundef nonnull %tmp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end9.i.i.i, label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i112.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i.i.i)
  %cmp.i48.i.i.i = icmp slt i32 %call5.i.i.i, 1
  br i1 %cmp.i48.i.i.i, label %if.then7.i.i.i.vfio_vc_cap_len.exit.i.i_crit_edge, label %if.end.i49.i.i.i

if.then7.i.i.i.vfio_vc_cap_len.exit.i.i_crit_edge: ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_vc_cap_len.exit.i.i

if.end.i49.i.i.i:                                 ; preds = %if.then7.i.i.i
  %switch.tableidx270 = add i32 %call5.i.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx270)
  %250 = icmp ult i32 %switch.tableidx270, 9
  br i1 %250, label %switch.lookup269, label %if.end.i49.i.i.i.vfio_vc_cap_len.exit.i.i_crit_edge

if.end.i49.i.i.i.vfio_vc_cap_len.exit.i.i_crit_edge: ; preds = %if.end.i49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_vc_cap_len.exit.i.i

if.end9.i.i.i:                                    ; preds = %if.end.i112.i.i
  %251 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %tmp.i.i.i, align 4
  %and10.i.i.i = and i32 %252, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.else.i.i.i, label %if.end9.i.i.i.if.end23.thread.i.i.i_crit_edge

if.end9.i.i.i.if.end23.thread.i.i.i_crit_edge:    ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.thread.i.i.i

if.else.i.i.i:                                    ; preds = %if.end9.i.i.i
  %and13.i.i.i = and i32 %252, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i.i)
  %tobool14.not.i.i.i198 = icmp eq i32 %and13.i.i.i, 0
  br i1 %tobool14.not.i.i.i198, label %if.end23.i.i.i, label %if.else.i.i.i.if.end23.thread.i.i.i_crit_edge

if.else.i.i.i.if.end23.thread.i.i.i_crit_edge:    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.thread.i.i.i

if.end23.thread.i.i.i:                            ; preds = %if.else.i.i.i.if.end23.thread.i.i.i_crit_edge, %if.end9.i.i.i.if.end23.thread.i.i.i_crit_edge
  %phases.0.ph.i.i.i = phi i32 [ 32, %if.else.i.i.i.if.end23.thread.i.i.i_crit_edge ], [ 64, %if.end9.i.i.i.if.end23.thread.i.i.i_crit_edge ]
  %253 = mul nuw nsw i32 %and.i.i.i, 12
  %sub61.i.i.i = add nuw nsw i32 %253, 27
  %or62.i.i.i = or i32 %sub61.i.i.i, 15
  %add2963.i.i.i = add nuw nsw i32 %or62.i.i.i, 1
  %add3064.i.i.i = add nuw nsw i32 %add2963.i.i.i, %phases.0.ph.i.i.i
  br label %vfio_vc_cap_len.exit.i.i

if.end23.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and17.i.i.i = and i32 %252, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and17.i.i.i, 0
  %254 = shl nuw nsw i32 %and17.i.i.i, 3
  %255 = mul nuw nsw i32 %and.i.i.i, 12
  %add26.i.i.i = add nuw nsw i32 %255, 28
  %sub.i.i.i199 = add nuw nsw i32 %255, 27
  %or.i.i.i = or i32 %sub.i.i.i199, 15
  %add29.i.i.i = add nuw nsw i32 %or.i.i.i, 1
  %add30.i.i.i = add nuw nsw i32 %add29.i.i.i, %254
  %spec.select.i.i.i200 = select i1 %tobool18.not.i.i.i, i32 %add26.i.i.i, i32 %add30.i.i.i
  br label %vfio_vc_cap_len.exit.i.i

switch.lookup265:                                 ; preds = %if.end.i.i.i.i191
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep267 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.31, i32 0, i32 %switch.tableidx266
  %256 = ptrtoint ptr %switch.gep267 to i32
  call void @__asan_load4_noabort(i32 %256)
  %switch.load268 = load i32, ptr %switch.gep267, align 4
  br label %vfio_vc_cap_len.exit.i.i

switch.lookup269:                                 ; preds = %if.end.i49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep271 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.32, i32 0, i32 %switch.tableidx270
  %257 = ptrtoint ptr %switch.gep271 to i32
  call void @__asan_load4_noabort(i32 %257)
  %switch.load272 = load i32, ptr %switch.gep271, align 4
  br label %vfio_vc_cap_len.exit.i.i

vfio_vc_cap_len.exit.i.i:                         ; preds = %switch.lookup269, %switch.lookup265, %if.end23.i.i.i, %if.end23.thread.i.i.i, %if.end.i49.i.i.i.vfio_vc_cap_len.exit.i.i_crit_edge, %if.then7.i.i.i.vfio_vc_cap_len.exit.i.i_crit_edge, %if.end.i.i.i.i191.vfio_vc_cap_len.exit.i.i_crit_edge, %if.then.i.i.i190.vfio_vc_cap_len.exit.i.i_crit_edge
  %retval.0.i113.i.i = phi i32 [ %call.i.i.i187, %if.then.i.i.i190.vfio_vc_cap_len.exit.i.i_crit_edge ], [ %call5.i.i.i, %if.then7.i.i.i.vfio_vc_cap_len.exit.i.i_crit_edge ], [ %add3064.i.i.i, %if.end23.thread.i.i.i ], [ %spec.select.i.i.i200, %if.end23.i.i.i ], [ %switch.load268, %switch.lookup265 ], [ -34, %if.end.i.i.i.i191.vfio_vc_cap_len.exit.i.i_crit_edge ], [ %switch.load272, %switch.lookup269 ], [ -34, %if.end.i49.i.i.i.vfio_vc_cap_len.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #12
  br label %vfio_ext_cap_len.exit.i

sw.bb6.i.i:                                       ; preds = %if.then16.i
  %add8.i.i = add nuw nsw i32 %conv.i, 4
  %call9.i.i = call i32 @pci_read_config_byte(ptr noundef %239, i32 noundef %add8.i.i, ptr noundef nonnull %byte.i.i160) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end13.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i)
  %cmp.i114.i.i = icmp slt i32 %call9.i.i, 1
  br i1 %cmp.i114.i.i, label %if.then11.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, label %if.end.i115.i.i

if.then11.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread.i

if.end.i115.i.i:                                  ; preds = %if.then11.i.i
  %switch.tableidx274 = add i32 %call9.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx274)
  %258 = icmp ult i32 %switch.tableidx274, 9
  br i1 %258, label %switch.lookup273, label %if.end.i115.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge

if.end.i115.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge: ; preds = %if.end.i115.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread.i

if.end13.i.i:                                     ; preds = %sw.bb6.i.i
  %259 = ptrtoint ptr %byte.i.i160 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %byte.i.i160, align 1
  %261 = and i8 %260, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool15.not.i.i = icmp eq i8 %261, 0
  br i1 %tobool15.not.i.i, label %if.end13.i.i.vfio_ext_cap_len.exit.thread144.i_crit_edge, label %if.then16.i.i

if.end13.i.i.vfio_ext_cap_len.exit.thread144.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread144.i

if.then16.i.i:                                    ; preds = %if.end13.i.i
  %add18.i.i = add nuw nsw i32 %conv.i, 5
  %call19.i.i = call i32 @pci_read_config_byte(ptr noundef %239, i32 noundef %add18.i.i, ptr noundef nonnull %byte.i.i160) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end23.i.i201, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i.i = call fastcc i32 @pcibios_err_to_errno(i32 noundef %call19.i.i) #12
  br label %vfio_ext_cap_len.exit.i

if.end23.i.i201:                                  ; preds = %if.then16.i.i
  %262 = ptrtoint ptr %byte.i.i160 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %byte.i.i160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool25.not.i.i = icmp eq i8 %263, 0
  br i1 %tobool25.not.i.i, label %if.end23.i.i201.vfio_ext_cap_len.exit.thread144.i_crit_edge, label %cond.true.i.i

if.end23.i.i201.vfio_ext_cap_len.exit.thread144.i_crit_edge: ; preds = %if.end23.i.i201
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread144.i

cond.true.i.i:                                    ; preds = %if.end23.i.i201
  call void @__sanitizer_cov_trace_pc() #14
  %conv24.i.i = zext i8 %263 to i32
  %sub.i.i = add nsw i32 %conv24.i.i, -1
  %or.i.i = or i32 %sub.i.i, 31
  %add27.i.i = add nsw i32 %or.i.i, 1
  %phi.bo.i.i = sdiv i32 %add27.i.i, 8
  %phi.bo111.i.i = add nsw i32 %phi.bo.i.i, 8
  br label %vfio_ext_cap_len.exit.i

sw.bb30.i.i:                                      ; preds = %if.then16.i
  %add32.i.i = add nuw nsw i32 %conv.i, 8
  %call33.i.i = call i32 @pci_read_config_byte(ptr noundef %239, i32 noundef %add32.i.i, ptr noundef nonnull %byte.i.i160) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end37.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33.i.i)
  %cmp.i124.i.i = icmp slt i32 %call33.i.i, 1
  br i1 %cmp.i124.i.i, label %if.then35.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, label %if.end.i125.i.i

if.then35.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge: ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread.i

if.end.i125.i.i:                                  ; preds = %if.then35.i.i
  %switch.tableidx278 = add i32 %call33.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx278)
  %264 = icmp ult i32 %switch.tableidx278, 9
  br i1 %264, label %switch.lookup277, label %if.end.i125.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge

if.end.i125.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge: ; preds = %if.end.i125.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread.i

if.end37.i.i:                                     ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %265 = ptrtoint ptr %byte.i.i160 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %byte.i.i160, align 1
  %267 = lshr i8 %266, 2
  %268 = and i8 %267, 56
  %269 = or i8 %268, 4
  %add45.i.i = zext i8 %269 to i32
  br label %vfio_ext_cap_len.exit.thread144.i

sw.bb46.i.i:                                      ; preds = %if.then16.i
  %add48.i.i = add nuw nsw i32 %conv.i, 4
  %call49.i.i = call i32 @pci_read_config_byte(ptr noundef %239, i32 noundef %add48.i.i, ptr noundef nonnull %byte.i.i160) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end53.i.i, label %if.then51.i.i

if.then51.i.i:                                    ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call49.i.i)
  %cmp.i134.i.i = icmp slt i32 %call49.i.i, 1
  br i1 %cmp.i134.i.i, label %if.then51.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, label %if.end.i135.i.i

if.then51.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge: ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread.i

if.end.i135.i.i:                                  ; preds = %if.then51.i.i
  %switch.tableidx282 = add i32 %call49.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx282)
  %270 = icmp ult i32 %switch.tableidx282, 9
  br i1 %270, label %switch.lookup281, label %if.end.i135.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge

if.end.i135.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge: ; preds = %if.end.i135.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread.i

if.end53.i.i:                                     ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %271 = ptrtoint ptr %byte.i.i160 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %byte.i.i160, align 1
  %273 = and i8 %272, 31
  %narrow.i.i = add nuw nsw i8 %273, 17
  %add59.i.i = zext i8 %narrow.i.i to i32
  br label %vfio_ext_cap_len.exit.thread144.i

sw.bb60.i.i:                                      ; preds = %if.then16.i
  %add62.i.i = add nuw nsw i32 %conv.i, 4
  %call63.i.i = call i32 @pci_read_config_dword(ptr noundef %239, i32 noundef %add62.i.i, ptr noundef nonnull %dword.i.i161) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %tobool64.not.i.i = icmp eq i32 %call63.i.i, 0
  br i1 %tobool64.not.i.i, label %if.end67.i.i, label %if.then65.i.i

if.then65.i.i:                                    ; preds = %sw.bb60.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call63.i.i)
  %cmp.i144.i.i = icmp slt i32 %call63.i.i, 1
  br i1 %cmp.i144.i.i, label %if.then65.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, label %if.end.i145.i.i

if.then65.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge: ; preds = %if.then65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread.i

if.end.i145.i.i:                                  ; preds = %if.then65.i.i
  %switch.tableidx286 = add i32 %call63.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx286)
  %274 = icmp ult i32 %switch.tableidx286, 9
  br i1 %274, label %switch.lookup285, label %if.end.i145.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge

if.end.i145.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge: ; preds = %if.end.i145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread.i

if.end67.i.i:                                     ; preds = %sw.bb60.i.i
  %275 = ptrtoint ptr %dword.i.i161 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %dword.i.i161, align 4
  %and68.i.i = and i32 %276, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and68.i.i)
  %cmp.i.i202 = icmp eq i32 %and68.i.i, 512
  br i1 %cmp.i.i202, label %if.then70.i.i, label %if.end67.i.i.vfio_ext_cap_len.exit.thread144.i_crit_edge

if.end67.i.i.vfio_ext_cap_len.exit.thread144.i_crit_edge: ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ext_cap_len.exit.thread144.i

if.then70.i.i:                                    ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %277 = lshr i32 %276, 15
  %mul73.i.i = and i32 %277, 4094
  %add75.i.i = add nuw nsw i32 %mul73.i.i, 14
  br label %vfio_ext_cap_len.exit.thread144.i

do.end.i.i204:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i203 = getelementptr inbounds %struct.pci_dev, ptr %239, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i203, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %conv9.i, i32 noundef %conv.i) #17
  br label %vfio_ext_cap_len.exit.thread144.i

switch.lookup261:                                 ; preds = %if.end.i.i.i178
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep263 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.30, i32 0, i32 %switch.tableidx262
  br label %vfio_ext_cap_len.exit.thread.i.sink.split

switch.lookup273:                                 ; preds = %if.end.i115.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep275 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.33, i32 0, i32 %switch.tableidx274
  br label %vfio_ext_cap_len.exit.thread.i.sink.split

switch.lookup277:                                 ; preds = %if.end.i125.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep279 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.34, i32 0, i32 %switch.tableidx278
  br label %vfio_ext_cap_len.exit.thread.i.sink.split

switch.lookup281:                                 ; preds = %if.end.i135.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep283 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.35, i32 0, i32 %switch.tableidx282
  br label %vfio_ext_cap_len.exit.thread.i.sink.split

switch.lookup285:                                 ; preds = %if.end.i145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep287 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.36, i32 0, i32 %switch.tableidx286
  br label %vfio_ext_cap_len.exit.thread.i.sink.split

vfio_ext_cap_len.exit.thread.i.sink.split:        ; preds = %switch.lookup285, %switch.lookup281, %switch.lookup277, %switch.lookup273, %switch.lookup261
  %switch.gep287.sink = phi ptr [ %switch.gep287, %switch.lookup285 ], [ %switch.gep283, %switch.lookup281 ], [ %switch.gep279, %switch.lookup277 ], [ %switch.gep275, %switch.lookup273 ], [ %switch.gep263, %switch.lookup261 ]
  %278 = ptrtoint ptr %switch.gep287.sink to i32
  call void @__asan_load4_noabort(i32 %278)
  %switch.load288 = load i32, ptr %switch.gep287.sink, align 4
  br label %vfio_ext_cap_len.exit.thread.i

vfio_ext_cap_len.exit.thread.i:                   ; preds = %vfio_ext_cap_len.exit.thread.i.sink.split, %if.end.i145.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, %if.then65.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, %if.end.i135.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, %if.then51.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, %if.end.i125.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, %if.then35.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, %if.end.i115.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, %if.then11.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge, %if.end.i.i.i178.vfio_ext_cap_len.exit.thread.i_crit_edge, %if.then.i.i177.vfio_ext_cap_len.exit.thread.i_crit_edge
  %retval.1.i.ph.i = phi i32 [ %call63.i.i, %if.then65.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge ], [ %call49.i.i, %if.then51.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge ], [ %call33.i.i, %if.then35.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge ], [ %call9.i.i, %if.then11.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge ], [ %call.i.i, %if.then.i.i177.vfio_ext_cap_len.exit.thread.i_crit_edge ], [ -34, %if.end.i.i.i178.vfio_ext_cap_len.exit.thread.i_crit_edge ], [ -34, %if.end.i115.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge ], [ -34, %if.end.i125.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge ], [ -34, %if.end.i135.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge ], [ -34, %if.end.i145.i.i.vfio_ext_cap_len.exit.thread.i_crit_edge ], [ %switch.load288, %vfio_ext_cap_len.exit.thread.i.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword.i.i161) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i.i160) #12
  br label %vfio_ecap_init.exit

vfio_ext_cap_len.exit.thread144.i:                ; preds = %do.end.i.i204, %if.then70.i.i, %if.end67.i.i.vfio_ext_cap_len.exit.thread144.i_crit_edge, %if.end53.i.i, %if.end37.i.i, %if.end23.i.i201.vfio_ext_cap_len.exit.thread144.i_crit_edge, %if.end13.i.i.vfio_ext_cap_len.exit.thread144.i_crit_edge, %if.end.i.i185
  %retval.1.i.ph143.i = phi i32 [ 12, %if.end67.i.i.vfio_ext_cap_len.exit.thread144.i_crit_edge ], [ 8, %if.end13.i.i.vfio_ext_cap_len.exit.thread144.i_crit_edge ], [ 40, %if.end23.i.i201.vfio_ext_cap_len.exit.thread144.i_crit_edge ], [ %shr.i.i, %if.end.i.i185 ], [ %add45.i.i, %if.end37.i.i ], [ %add59.i.i, %if.end53.i.i ], [ %add75.i.i, %if.then70.i.i ], [ 0, %do.end.i.i204 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword.i.i161) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i.i160) #12
  br label %if.end23.i

vfio_ext_cap_len.exit.i:                          ; preds = %cond.true.i.i, %if.then21.i.i, %vfio_vc_cap_len.exit.i.i
  %retval.1.i.i = phi i32 [ %retval.0.i113.i.i, %vfio_vc_cap_len.exit.i.i ], [ %call22.i.i, %if.then21.i.i ], [ %phi.bo111.i.i, %cond.true.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword.i.i161) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i.i160) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i.i)
  %cmp18.i = icmp slt i32 %retval.1.i.i, 0
  br i1 %cmp18.i, label %vfio_ext_cap_len.exit.i.vfio_ecap_init.exit_crit_edge, label %vfio_ext_cap_len.exit.i.if.end23.i_crit_edge

vfio_ext_cap_len.exit.i.if.end23.i_crit_edge:     ; preds = %vfio_ext_cap_len.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

vfio_ext_cap_len.exit.i.vfio_ecap_init.exit_crit_edge: ; preds = %vfio_ext_cap_len.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ecap_init.exit

if.end23.i:                                       ; preds = %vfio_ext_cap_len.exit.i.if.end23.i_crit_edge, %vfio_ext_cap_len.exit.thread144.i, %if.then12.i.if.end23.i_crit_edge
  %len.0.i205 = phi i32 [ %retval.1.i.i, %vfio_ext_cap_len.exit.i.if.end23.i_crit_edge ], [ %conv13.i, %if.then12.i.if.end23.i_crit_edge ], [ %retval.1.i.ph143.i, %vfio_ext_cap_len.exit.thread144.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i205)
  %tobool24.not.i = icmp eq i32 %len.0.i205, 0
  br i1 %tobool24.not.i, label %if.end23.i.do.end.i206_crit_edge, label %if.end23.i.for.body.preheader.i207_crit_edge

if.end23.i.for.body.preheader.i207_crit_edge:     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader.i207

if.end23.i.do.end.i206_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i206

do.end.i206:                                      ; preds = %if.end23.i.do.end.i206_crit_edge, %if.end7.i.do.end.i206_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %conv9.i, i32 noundef %conv.i) #17
  %tobool28.not.i = icmp eq ptr %prev.0167.i, null
  br i1 %tobool28.not.i, label %do.end.i206.for.body.preheader.i207_crit_edge, label %if.then29.i

do.end.i206.for.body.preheader.i207_crit_edge:    ; preds = %do.end.i206
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader.i207

if.then29.i:                                      ; preds = %do.end.i206
  call void @__sanitizer_cov_trace_pc() #14
  %279 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %header.i, align 4
  %shr.i = lshr i32 %280, 20
  %281 = trunc i32 %shr.i to i16
  %conv31.i = and i16 %281, 4092
  %conv32.i = zext i16 %conv31.i to i32
  %282 = ptrtoint ptr %prev.0167.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %prev.0167.i, align 4
  %and33.i = and i32 %283, -49408
  %shl.i = shl nuw i32 %conv32.i, 20
  %284 = call i32 @llvm.bswap.i32(i32 %shl.i) #12
  %or.i = or i32 %284, %and33.i
  %285 = ptrtoint ptr %prev.0167.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %or.i, ptr %prev.0167.i, align 4
  br label %cleanup.i218

for.body.preheader.i207:                          ; preds = %do.end.i206.for.body.preheader.i207_crit_edge, %if.end23.i.for.body.preheader.i207_crit_edge
  %tobool24.not149.i = phi i1 [ false, %if.end23.i.for.body.preheader.i207_crit_edge ], [ true, %do.end.i206.for.body.preheader.i207_crit_edge ]
  %len.1.i = phi i32 [ %len.0.i205, %if.end23.i.for.body.preheader.i207_crit_edge ], [ 4, %do.end.i206.for.body.preheader.i207_crit_edge ]
  br label %for.body.i209

for.body.i209:                                    ; preds = %for.inc.i212.for.body.i209_crit_edge, %for.body.preheader.i207
  %i.0163.i = phi i32 [ %inc.i210, %for.inc.i212.for.body.i209_crit_edge ], [ 0, %for.body.preheader.i207 ]
  %add.i208 = add nuw i32 %i.0163.i, %conv.i
  %arrayidx39.i = getelementptr i8, ptr %227, i32 %add.i208
  %286 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %287)
  %cmp41.i = icmp eq i8 %287, -1
  br i1 %cmp41.i, label %for.body.i209.for.inc.i212_crit_edge, label %do.end49.i, !prof !75

for.body.i209.for.inc.i212_crit_edge:             ; preds = %for.body.i209
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i212

do.end49.i:                                       ; preds = %for.body.i209
  call void @__sanitizer_cov_trace_pc() #14
  %conv40.i = zext i8 %287 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %add.i208, i32 noundef %conv40.i, i32 noundef %conv9.i) #17
  br label %for.inc.i212

for.inc.i212:                                     ; preds = %do.end49.i, %for.body.i209.for.inc.i212_crit_edge
  %inc.i210 = add nuw nsw i32 %i.0163.i, 1
  %exitcond.not.i211 = icmp eq i32 %inc.i210, %len.1.i
  br i1 %exitcond.not.i211, label %do.end60.i, label %for.inc.i212.for.body.i209_crit_edge

for.inc.i212.for.body.i209_crit_edge:             ; preds = %for.inc.i212
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i209

do.end60.i:                                       ; preds = %for.inc.i212
  %add.ptr.i213 = getelementptr i8, ptr %227, i32 %conv.i
  %288 = trunc i32 %235 to i8
  %289 = zext i8 %288 to i32
  %290 = call ptr @memset(ptr %add.ptr.i213, i32 %289, i32 %len.1.i)
  %call64.i = call fastcc i32 @vfio_fill_vconfig_bytes(ptr noundef %vdev, i32 noundef %conv.i, i32 noundef %len.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %do.end60.i.vfio_ecap_init.exit_crit_edge

do.end60.i.vfio_ecap_init.exit_crit_edge:         ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_ecap_init.exit

if.end67.i:                                       ; preds = %do.end60.i
  br i1 %tobool24.not149.i, label %if.then69.i, label %if.else.i

if.then69.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  %291 = ptrtoint ptr %vconfig7 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %vconfig7, align 4
  %arrayidx71.i = getelementptr i8, ptr %292, i32 %conv.i
  %293 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx71.i, align 4
  %and72.i = and i32 %294, 49407
  store i32 %and72.i, ptr %arrayidx71.i, align 4
  br label %if.end74.i

if.else.i:                                        ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc73.i = add i32 %ecaps.0168.i, 1
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else.i, %if.then69.i
  %ecaps.1.i = phi i32 [ %ecaps.0168.i, %if.then69.i ], [ %inc73.i, %if.else.i ]
  %295 = ptrtoint ptr %vconfig7 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %vconfig7, align 4
  %arrayidx77.i = getelementptr i8, ptr %296, i32 %conv.i
  %297 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %header.i, align 4
  %shr78.i = lshr i32 %298, 20
  %299 = trunc i32 %shr78.i to i16
  %conv80.i = and i16 %299, 4092
  br label %cleanup.i218

cleanup.i218:                                     ; preds = %if.end74.i, %if.then29.i
  %epos.1.i = phi i16 [ %conv80.i, %if.end74.i ], [ %conv31.i, %if.then29.i ]
  %prev.1.i216 = phi ptr [ %arrayidx77.i, %if.end74.i ], [ %prev.0167.i, %if.then29.i ]
  %ecaps.2.i = phi i32 [ %ecaps.1.i, %if.end74.i ], [ %ecaps.0168.i, %if.then29.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i) #12
  %tobool2.not.i217 = icmp eq i32 %dec170.i, 0
  br i1 %tobool2.not.i217, label %cleanup.i218.while.end.i219_crit_edge, label %cleanup.i218.land.rhs.i169_crit_edge

cleanup.i218.land.rhs.i169_crit_edge:             ; preds = %cleanup.i218
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i169

cleanup.i218.while.end.i219_crit_edge:            ; preds = %cleanup.i218
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i219

while.end.i219:                                   ; preds = %cleanup.i218.while.end.i219_crit_edge, %land.rhs.i169.while.end.i219_crit_edge
  %ecaps.0.lcssa.i = phi i32 [ %ecaps.0168.i, %land.rhs.i169.while.end.i219_crit_edge ], [ %ecaps.2.i, %cleanup.i218.while.end.i219_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ecaps.0.lcssa.i)
  %tobool85.not.i = icmp eq i32 %ecaps.0.lcssa.i, 0
  br i1 %tobool85.not.i, label %while.end.i219.if.then86.i_crit_edge, label %while.end.i219.cleanup_crit_edge

while.end.i219.cleanup_crit_edge:                 ; preds = %while.end.i219
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.end.i219.if.then86.i_crit_edge:             ; preds = %while.end.i219
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then86.i

if.then86.i:                                      ; preds = %while.end.i219.if.then86.i_crit_edge, %if.end.i165.if.then86.i_crit_edge
  %300 = ptrtoint ptr %vconfig7 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %vconfig7, align 4
  %arrayidx88.i = getelementptr i8, ptr %301, i32 256
  %302 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 0, ptr %arrayidx88.i, align 4
  br label %cleanup

vfio_ecap_init.exit:                              ; preds = %do.end60.i.vfio_ecap_init.exit_crit_edge, %vfio_ext_cap_len.exit.i.vfio_ecap_init.exit_crit_edge, %vfio_ext_cap_len.exit.thread.i, %while.body.i171.vfio_ecap_init.exit_crit_edge
  %retval.1.ph.i214 = phi i32 [ %retval.1.i.ph.i, %vfio_ext_cap_len.exit.thread.i ], [ %call64.i, %do.end60.i.vfio_ecap_init.exit_crit_edge ], [ %retval.1.i.i, %vfio_ext_cap_len.exit.i.vfio_ecap_init.exit_crit_edge ], [ %call.i170, %while.body.i171.vfio_ecap_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i) #12
  br label %out

out:                                              ; preds = %vfio_ecap_init.exit, %vfio_cap_init.exit, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end6.out_crit_edge ], [ %retval.2.i, %vfio_cap_init.exit ], [ %retval.1.ph.i214, %vfio_ecap_init.exit ]
  call void @kfree(ptr noundef nonnull %call9.i) #12
  %303 = ptrtoint ptr %pci_config_map to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr null, ptr %pci_config_map, align 4
  call void @kfree(ptr noundef nonnull %call9.i148) #12
  %304 = ptrtoint ptr %vconfig7 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr null, ptr %vconfig7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp.i221 = icmp slt i32 %ret.0, 1
  br i1 %cmp.i221, label %out.cleanup_crit_edge, label %if.end.i222

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i222:                                      ; preds = %out
  %switch.tableidx290 = add i32 %ret.0, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx290)
  %305 = icmp ult i32 %switch.tableidx290, 9
  br i1 %305, label %switch.lookup289, label %if.end.i222.cleanup_crit_edge

if.end.i222.cleanup_crit_edge:                    ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup289:                                 ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep291 = getelementptr inbounds [9 x i32], ptr @switch.table.vfio_config_init.37, i32 0, i32 %switch.tableidx290
  %306 = ptrtoint ptr %switch.gep291 to i32
  call void @__asan_load4_noabort(i32 %306)
  %switch.load292 = load i32, ptr %switch.gep291, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup289, %if.end.i222.cleanup_crit_edge, %out.cleanup_crit_edge, %if.then86.i, %while.end.i219.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ], [ 0, %if.then86.i ], [ 0, %while.end.i219.cleanup_crit_edge ], [ %switch.load292, %switch.lookup289 ], [ -34, %if.end.i222.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_fill_vconfig_bytes(ptr nocapture noundef readonly %vdev, i32 noundef %offset, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  %dword = alloca i32, align 4
  %word = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not77 = icmp eq i32 %size, 0
  br i1 %tobool.not77, label %entry.cleanup36_crit_edge, label %while.body.lr.ph

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup36

while.body.lr.ph:                                 ; preds = %entry
  %vconfig22 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup33.while.body_crit_edge, %while.body.lr.ph
  %size.addr.080 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %cleanup33.while.body_crit_edge ]
  %offset.addr.078 = phi i32 [ %offset, %while.body.lr.ph ], [ %add, %cleanup33.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size.addr.080)
  %cmp = icmp sgt i32 %size.addr.080, 3
  %2 = and i32 %offset.addr.078, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  %or.cond = select i1 %cmp, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = ptrtoint ptr %vconfig22 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vconfig22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dword) #12
  %5 = ptrtoint ptr %dword to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dword, align 4, !annotation !74
  %call = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %offset.addr.078, ptr noundef nonnull %dword) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr i8, ptr %4, i32 %offset.addr.078
  %6 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dword, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword) #12
  br label %cleanup33

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword) #12
  br label %cleanup36

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size.addr.080)
  %cmp6 = icmp sgt i32 %size.addr.080, 1
  %10 = and i32 %offset.addr.078, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  %or.cond67 = select i1 %cmp6, i1 %tobool9.not, i1 false
  %11 = ptrtoint ptr %vconfig22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vconfig22, align 4
  br i1 %or.cond67, label %if.then10, label %if.else21

if.then10:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word) #12
  %13 = ptrtoint ptr %word to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %word, align 2, !annotation !74
  %call13 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef %offset.addr.078, ptr noundef nonnull %word) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup17.thread, label %cleanup17

cleanup17.thread:                                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx12 = getelementptr i8, ptr %12, i32 %offset.addr.078
  %14 = ptrtoint ptr %word to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %word, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx12, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word) #12
  br label %cleanup33

cleanup17:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word) #12
  br label %cleanup36

if.else21:                                        ; preds = %if.else
  %arrayidx23 = getelementptr i8, ptr %12, i32 %offset.addr.078
  %call24 = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef %offset.addr.078, ptr noundef %arrayidx23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else21.cleanup33_crit_edge, label %if.else21.cleanup36_crit_edge

if.else21.cleanup36_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup36

if.else21.cleanup33_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

cleanup33:                                        ; preds = %if.else21.cleanup33_crit_edge, %cleanup17.thread, %cleanup.thread
  %filled.3 = phi i32 [ 1, %if.else21.cleanup33_crit_edge ], [ 4, %cleanup.thread ], [ 2, %cleanup17.thread ]
  %add = add i32 %filled.3, %offset.addr.078
  %sub = sub i32 %size.addr.080, %filled.3
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup33.cleanup36_crit_edge, label %cleanup33.while.body_crit_edge

cleanup33.while.body_crit_edge:                   ; preds = %cleanup33
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup33.cleanup36_crit_edge:                    ; preds = %cleanup33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup33.cleanup36_crit_edge, %if.else21.cleanup36_crit_edge, %cleanup17, %cleanup, %entry.cleanup36_crit_edge
  %retval.6 = phi i32 [ %call, %cleanup ], [ %call13, %cleanup17 ], [ 0, %entry.cleanup36_crit_edge ], [ 0, %cleanup33.cleanup36_crit_edge ], [ %call24, %if.else21.cleanup36_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @pcibios_err_to_errno(i32 noundef %err) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err)
  %cmp = icmp slt i32 %err, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %err, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  br i1 %0, label %switch.lookup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.pcibios_err_to_errno, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %err, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ -34, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfio_config_free(ptr nocapture noundef %vdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vconfig, align 4
  tail call void @kfree(ptr noundef %1) #12
  %2 = ptrtoint ptr %vconfig to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vconfig, align 4
  %pci_config_map = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 4
  %3 = ptrtoint ptr %pci_config_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_config_map, align 4
  tail call void @kfree(ptr noundef %4) #12
  %5 = ptrtoint ptr %pci_config_map to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pci_config_map, align 4
  %msi_perm = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 6
  %6 = ptrtoint ptr %msi_perm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msi_perm, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %9) #12
  %write.i = getelementptr inbounds %struct.perm_bits, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  tail call void @kfree(ptr noundef %11) #12
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %7, align 4
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %write.i, align 4
  %14 = ptrtoint ptr %msi_perm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msi_perm, align 4
  tail call void @kfree(ptr noundef %15) #12
  %16 = ptrtoint ptr %msi_perm to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %msi_perm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_pci_config_rw(ptr noundef %vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos, i1 noundef zeroext %iswrite) local_unnamed_addr #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not35 = icmp eq i32 %count, 0
  br i1 %tobool.not35, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %and = and i64 %1, 1099511627775
  %pdev1.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %pci_config_map.i.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 4
  %msi_perm.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %done.041 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end.while.body_crit_edge ]
  %buf.addr.038 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end.while.body_crit_edge ]
  %count.addr.037 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  %storemerge36 = phi i64 [ %and, %while.body.lr.ph ], [ %add2, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %storemerge36)
  %cmp.i = icmp slt i64 %storemerge36, 0
  br i1 %cmp.i, label %while.body.vfio_config_do_rw.exit.thread_crit_edge, label %lor.lhs.false.i

while.body.vfio_config_do_rw.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_config_do_rw.exit.thread

lor.lhs.false.i:                                  ; preds = %while.body
  %cfg_size.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 45
  %5 = ptrtoint ptr %cfg_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cfg_size.i, align 8
  %conv.i = sext i32 %6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %storemerge36, i64 %conv.i)
  %cmp2.not.i = icmp slt i64 %storemerge36, %conv.i
  br i1 %cmp2.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.vfio_config_do_rw.exit.thread_crit_edge

lor.lhs.false.i.vfio_config_do_rw.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_config_do_rw.exit.thread

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %conv5.i = zext i32 %count.addr.037 to i64
  %add.i = add nuw i64 %storemerge36, %conv5.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp8.i = icmp sgt i64 %add.i, %conv.i
  br i1 %cmp8.i, label %lor.lhs.false4.i.vfio_config_do_rw.exit.thread_crit_edge, label %if.end.i

lor.lhs.false4.i.vfio_config_do_rw.exit.thread_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_config_do_rw.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false4.i
  %7 = ptrtoint ptr %pci_config_map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_config_map.i.i, align 4
  %idxprom.i.i = trunc i64 %storemerge36 to i32
  %arrayidx.i.i = getelementptr i8, ptr %8, i32 %idxprom.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  %add15.i.i = add nuw nsw i64 %storemerge36, 1
  %11 = and i64 %add15.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not16.i.i = icmp eq i64 %11, 0
  br i1 %tobool.not16.i.i, label %if.end.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge, label %land.rhs.preheader.i.i

if.end.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_pci_cap_remaining_dword.exit.i

land.rhs.preheader.i.i:                           ; preds = %if.end.i
  %12 = trunc i64 %storemerge36 to i2
  %13 = sub i2 -2, %12
  %14 = zext i2 %13 to i32
  %15 = add nuw nsw i32 %14, 2
  %extract.t20.i.i = trunc i64 %add15.i.i to i32
  %arrayidx5.i.i = getelementptr i8, ptr %8, i32 %extract.t20.i.i
  %16 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %10)
  %cmp.i.i = icmp eq i8 %17, %10
  br i1 %cmp.i.i, label %for.inc.i.i, label %land.rhs.preheader.i.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge

land.rhs.preheader.i.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge: ; preds = %land.rhs.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_pci_cap_remaining_dword.exit.i

for.inc.i.i:                                      ; preds = %land.rhs.preheader.i.i
  %18 = sext i2 %12 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %18)
  %exitcond = icmp eq i2 %12, -2
  br i1 %exitcond, label %for.inc.i.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge, label %land.rhs.i.i.1

for.inc.i.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_pci_cap_remaining_dword.exit.i

land.rhs.i.i.1:                                   ; preds = %for.inc.i.i
  %extract.t.i.i = add i32 %idxprom.i.i, 2
  %arrayidx5.i.i.1 = getelementptr i8, ptr %8, i32 %extract.t.i.i
  %19 = ptrtoint ptr %arrayidx5.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx5.i.i.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %10)
  %cmp.i.i.1 = icmp eq i8 %20, %10
  br i1 %cmp.i.i.1, label %for.inc.i.i.1, label %land.rhs.i.i.1.vfio_pci_cap_remaining_dword.exit.i_crit_edge

land.rhs.i.i.1.vfio_pci_cap_remaining_dword.exit.i_crit_edge: ; preds = %land.rhs.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_pci_cap_remaining_dword.exit.i

for.inc.i.i.1:                                    ; preds = %land.rhs.i.i.1
  %21 = sext i2 %12 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %exitcond.1 = icmp eq i2 %12, 1
  br i1 %exitcond.1, label %for.inc.i.i.1.vfio_pci_cap_remaining_dword.exit.i_crit_edge, label %land.rhs.i.i.2

for.inc.i.i.1.vfio_pci_cap_remaining_dword.exit.i_crit_edge: ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_pci_cap_remaining_dword.exit.i

land.rhs.i.i.2:                                   ; preds = %for.inc.i.i.1
  %extract.t.i.i.1 = add i32 %idxprom.i.i, 3
  %arrayidx5.i.i.2 = getelementptr i8, ptr %8, i32 %extract.t.i.i.1
  %22 = ptrtoint ptr %arrayidx5.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx5.i.i.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %10)
  %cmp.i.i.2 = icmp eq i8 %23, %10
  br i1 %cmp.i.i.2, label %for.inc.i.i.2, label %land.rhs.i.i.2.vfio_pci_cap_remaining_dword.exit.i_crit_edge

land.rhs.i.i.2.vfio_pci_cap_remaining_dword.exit.i_crit_edge: ; preds = %land.rhs.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_pci_cap_remaining_dword.exit.i

for.inc.i.i.2:                                    ; preds = %land.rhs.i.i.2
  %24 = sext i2 %12 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %exitcond.2 = icmp eq i2 %12, 0
  br i1 %exitcond.2, label %for.inc.i.i.2.vfio_pci_cap_remaining_dword.exit.i_crit_edge, label %land.rhs.i.i.3

for.inc.i.i.2.vfio_pci_cap_remaining_dword.exit.i_crit_edge: ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_pci_cap_remaining_dword.exit.i

land.rhs.i.i.3:                                   ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %extract.t.i.i.2 = add i32 %idxprom.i.i, 4
  %arrayidx5.i.i.3 = getelementptr i8, ptr %8, i32 %extract.t.i.i.2
  %25 = ptrtoint ptr %arrayidx5.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx5.i.i.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %10)
  %cmp.i.i.3 = icmp eq i8 %26, %10
  %spec.select = select i1 %cmp.i.i.3, i32 %15, i32 4
  br label %vfio_pci_cap_remaining_dword.exit.i

vfio_pci_cap_remaining_dword.exit.i:              ; preds = %land.rhs.i.i.3, %for.inc.i.i.2.vfio_pci_cap_remaining_dword.exit.i_crit_edge, %land.rhs.i.i.2.vfio_pci_cap_remaining_dword.exit.i_crit_edge, %for.inc.i.i.1.vfio_pci_cap_remaining_dword.exit.i_crit_edge, %land.rhs.i.i.1.vfio_pci_cap_remaining_dword.exit.i_crit_edge, %for.inc.i.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge, %land.rhs.preheader.i.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge, %if.end.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 1, %if.end.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge ], [ %15, %for.inc.i.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge ], [ 1, %land.rhs.preheader.i.i.vfio_pci_cap_remaining_dword.exit.i_crit_edge ], [ 2, %land.rhs.i.i.1.vfio_pci_cap_remaining_dword.exit.i_crit_edge ], [ %15, %for.inc.i.i.1.vfio_pci_cap_remaining_dword.exit.i_crit_edge ], [ 3, %land.rhs.i.i.2.vfio_pci_cap_remaining_dword.exit.i_crit_edge ], [ %15, %for.inc.i.i.2.vfio_pci_cap_remaining_dword.exit.i_crit_edge ], [ %spec.select, %land.rhs.i.i.3 ]
  %27 = call i32 @llvm.umin.i32(i32 %i.0.lcssa.i.i, i32 %count.addr.037) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp12.i = icmp ugt i32 %27, 3
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %vfio_pci_cap_remaining_dword.exit.i
  %28 = and i64 %storemerge36, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool.not.i = icmp eq i64 %28, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %land.lhs.true17.i

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.else.i:                                        ; preds = %vfio_pci_cap_remaining_dword.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp15.i = icmp ugt i32 %27, 1
  %29 = and i64 %storemerge36, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool19.not.i = icmp eq i64 %29, 0
  %or.cond.i = select i1 %cmp15.i, i1 %tobool19.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i.if.end23.i_crit_edge, label %if.else.i.if.else21.i_crit_edge

if.else.i.if.else21.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else21.i

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %.old.i = and i64 %storemerge36, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.old.i)
  %tobool19.not.old.i = icmp eq i64 %.old.i, 0
  br i1 %tobool19.not.old.i, label %land.lhs.true17.i.if.end23.i_crit_edge, label %land.lhs.true17.i.if.else21.i_crit_edge

land.lhs.true17.i.if.else21.i_crit_edge:          ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else21.i

land.lhs.true17.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.else21.i:                                      ; preds = %land.lhs.true17.i.if.else21.i_crit_edge, %if.else.i.if.else21.i_crit_edge
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else21.i, %land.lhs.true17.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %land.lhs.true.i.if.end23.i_crit_edge
  %count.addr.0.i = phi i32 [ 1, %if.else21.i ], [ 4, %land.lhs.true.i.if.end23.i_crit_edge ], [ 2, %land.lhs.true17.i.if.end23.i_crit_edge ], [ 2, %if.else.i.if.end23.i_crit_edge ]
  %conv24.i = zext i8 %10 to i32
  %30 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %10, label %if.else35.i [
    i8 -1, label %if.end23.i.if.end118.i_crit_edge
    i8 -2, label %if.then33.i
  ]

if.end23.i.if.end118.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

if.then33.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

if.else35.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %storemerge36)
  %cmp36.i = icmp sgt i64 %storemerge36, 255
  br i1 %cmp36.i, label %if.then38.i, label %if.else68.i

if.then38.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %10)
  %cmp40.i = icmp ugt i8 %10, 38
  br i1 %cmp40.i, label %do.end.i, label %if.then38.i.if.end56.i_crit_edge, !prof !76

if.then38.i.if.end56.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

do.end.i:                                         ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1843, i32 noundef 9, ptr noundef null) #12
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end.i, %if.then38.i.if.end56.i_crit_edge
  %arrayidx65.i = getelementptr [39 x %struct.perm_bits], ptr @ecap_perms, i32 0, i32 %conv24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %idxprom.i.i)
  %cmp.inv.i.i = icmp slt i32 %idxprom.i.i, 256
  %cond.i.i = select i1 %cmp.inv.i.i, i32 64, i32 256
  %31 = ptrtoint ptr %pci_config_map.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_config_map.i.i, align 4
  %arrayidx.i296.i = getelementptr i8, ptr %32, i32 %idxprom.i.i
  %33 = ptrtoint ptr %arrayidx.i296.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i296.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp1.i.i = icmp eq i8 %34, 0
  br i1 %cmp1.i.i, label %if.end56.i.if.end118.i_crit_edge, label %if.end56.i.while.cond.i.i_crit_edge

if.end56.i.while.cond.i.i_crit_edge:              ; preds = %if.end56.i
  br label %while.cond.i.i

if.end56.i.if.end118.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

while.cond.i.i:                                   ; preds = %land.rhs.i297.i.while.cond.i.i_crit_edge, %if.end56.i.while.cond.i.i_crit_edge
  %pos.addr.0.i.i = phi i32 [ %sub.i.i, %land.rhs.i297.i.while.cond.i.i_crit_edge ], [ %idxprom.i.i, %if.end56.i.while.cond.i.i_crit_edge ]
  %sub.i.i = add i32 %pos.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %cond.i.i)
  %cmp3.not.i.i = icmp slt i32 %sub.i.i, %cond.i.i
  br i1 %cmp3.not.i.i, label %while.cond.i.i.if.end118.i_crit_edge, label %land.rhs.i297.i

while.cond.i.i.if.end118.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

land.rhs.i297.i:                                  ; preds = %while.cond.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %32, i32 %sub.i.i
  %35 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx7.i.i, align 1
  %cmp10.i.i = icmp eq i8 %36, %34
  br i1 %cmp10.i.i, label %land.rhs.i297.i.while.cond.i.i_crit_edge, label %land.rhs.i297.i.if.end118.i_crit_edge

land.rhs.i297.i.if.end118.i_crit_edge:            ; preds = %land.rhs.i297.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

land.rhs.i297.i.while.cond.i.i_crit_edge:         ; preds = %land.rhs.i297.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.else68.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %10)
  %cmp71.i = icmp ugt i8 %10, 20
  br i1 %cmp71.i, label %if.end94.thread.i, label %if.end94.i, !prof !76

if.end94.thread.i:                                ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1848, i32 noundef 9, ptr noundef null) #12
  %arrayidx103313.i = getelementptr [21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 %conv24.i
  br label %if.then112.i

if.end94.i:                                       ; preds = %if.else68.i
  %arrayidx103.i = getelementptr [21 x %struct.perm_bits], ptr @cap_perms, i32 0, i32 %conv24.i
  %37 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %10, label %if.end94.i.if.then112.i_crit_edge [
    i8 5, label %if.then107.i
    i8 0, label %if.end94.i.if.end145.i_crit_edge
  ]

if.end94.i.if.end145.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145.i

if.end94.i.if.then112.i_crit_edge:                ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112.i

if.then107.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %msi_perm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msi_perm.i, align 4
  br label %if.then112.i

if.then112.i:                                     ; preds = %if.then107.i, %if.end94.i.if.then112.i_crit_edge, %if.end94.thread.i
  %perm.0317.i = phi ptr [ %arrayidx103313.i, %if.end94.thread.i ], [ %39, %if.then107.i ], [ %arrayidx103.i, %if.end94.i.if.then112.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %idxprom.i.i)
  %cmp.inv.i298.i = icmp slt i32 %idxprom.i.i, 256
  %cond.i299.i = select i1 %cmp.inv.i298.i, i32 64, i32 256
  %40 = ptrtoint ptr %pci_config_map.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_config_map.i.i, align 4
  %arrayidx.i301.i = getelementptr i8, ptr %41, i32 %idxprom.i.i
  %42 = ptrtoint ptr %arrayidx.i301.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i301.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp1.i302.i = icmp eq i8 %43, 0
  br i1 %cmp1.i302.i, label %if.then112.i.if.end118.i_crit_edge, label %if.then112.i.while.cond.i306.i_crit_edge

if.then112.i.while.cond.i306.i_crit_edge:         ; preds = %if.then112.i
  br label %while.cond.i306.i

if.then112.i.if.end118.i_crit_edge:               ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

while.cond.i306.i:                                ; preds = %land.rhs.i309.i.while.cond.i306.i_crit_edge, %if.then112.i.while.cond.i306.i_crit_edge
  %pos.addr.0.i303.i = phi i32 [ %sub.i304.i, %land.rhs.i309.i.while.cond.i306.i_crit_edge ], [ %idxprom.i.i, %if.then112.i.while.cond.i306.i_crit_edge ]
  %sub.i304.i = add i32 %pos.addr.0.i303.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i304.i, i32 %cond.i299.i)
  %cmp3.not.i305.i = icmp slt i32 %sub.i304.i, %cond.i299.i
  br i1 %cmp3.not.i305.i, label %while.cond.i306.i.if.end118.i_crit_edge, label %land.rhs.i309.i

while.cond.i306.i.if.end118.i_crit_edge:          ; preds = %while.cond.i306.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

land.rhs.i309.i:                                  ; preds = %while.cond.i306.i
  %arrayidx7.i307.i = getelementptr i8, ptr %41, i32 %sub.i304.i
  %44 = ptrtoint ptr %arrayidx7.i307.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx7.i307.i, align 1
  %cmp10.i308.i = icmp eq i8 %45, %43
  br i1 %cmp10.i308.i, label %land.rhs.i309.i.while.cond.i306.i_crit_edge, label %land.rhs.i309.i.if.end118.i_crit_edge

land.rhs.i309.i.if.end118.i_crit_edge:            ; preds = %land.rhs.i309.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

land.rhs.i309.i.while.cond.i306.i_crit_edge:      ; preds = %land.rhs.i309.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i306.i

if.end118.i:                                      ; preds = %land.rhs.i309.i.if.end118.i_crit_edge, %while.cond.i306.i.if.end118.i_crit_edge, %if.then112.i.if.end118.i_crit_edge, %land.rhs.i297.i.if.end118.i_crit_edge, %while.cond.i.i.if.end118.i_crit_edge, %if.end56.i.if.end118.i_crit_edge, %if.then33.i, %if.end23.i.if.end118.i_crit_edge
  %cap_start.0.i = phi i32 [ %idxprom.i.i, %if.then33.i ], [ %idxprom.i.i, %if.end23.i.if.end118.i_crit_edge ], [ 0, %if.end56.i.if.end118.i_crit_edge ], [ 0, %if.then112.i.if.end118.i_crit_edge ], [ %pos.addr.0.i.i, %while.cond.i.i.if.end118.i_crit_edge ], [ %pos.addr.0.i.i, %land.rhs.i297.i.if.end118.i_crit_edge ], [ %pos.addr.0.i303.i, %while.cond.i306.i.if.end118.i_crit_edge ], [ %pos.addr.0.i303.i, %land.rhs.i309.i.if.end118.i_crit_edge ]
  %perm.1.i = phi ptr [ @virt_perms, %if.then33.i ], [ @unassigned_perms, %if.end23.i.if.end118.i_crit_edge ], [ %arrayidx65.i, %if.end56.i.if.end118.i_crit_edge ], [ %perm.0317.i, %if.then112.i.if.end118.i_crit_edge ], [ %arrayidx65.i, %while.cond.i.i.if.end118.i_crit_edge ], [ %arrayidx65.i, %land.rhs.i297.i.if.end118.i_crit_edge ], [ %perm.0317.i, %while.cond.i306.i.if.end118.i_crit_edge ], [ %perm.0317.i, %land.rhs.i309.i.if.end118.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cap_start.0.i)
  %tobool120.not.i = icmp eq i32 %cap_start.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp122.i = icmp ne i8 %10, 0
  %spec.select.i = select i1 %tobool120.not.i, i1 %cmp122.i, i1 false
  br i1 %spec.select.i, label %do.end139.i, label %if.end118.i.if.end145.i_crit_edge, !prof !76

if.end118.i.if.end145.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145.i

do.end139.i:                                      ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1860, i32 noundef 9, ptr noundef null) #12
  br label %if.end145.i

if.end145.i:                                      ; preds = %do.end139.i, %if.end118.i.if.end145.i_crit_edge, %if.end94.i.if.end145.i_crit_edge
  %perm.1324.i = phi ptr [ %perm.1.i, %do.end139.i ], [ %perm.1.i, %if.end118.i.if.end145.i_crit_edge ], [ %arrayidx103.i, %if.end94.i.if.end145.i_crit_edge ]
  %cap_start.0323.i = phi i32 [ 0, %do.end139.i ], [ %cap_start.0.i, %if.end118.i.if.end145.i_crit_edge ], [ 0, %if.end94.i.if.end145.i_crit_edge ]
  %conv154.i = sext i32 %cap_start.0323.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %storemerge36, i64 %conv154.i)
  %cmp155.i = icmp slt i64 %storemerge36, %conv154.i
  br i1 %cmp155.i, label %do.end172.i, label %if.end145.i.if.end178.i_crit_edge, !prof !76

if.end145.i.if.end178.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end178.i

do.end172.i:                                      ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1861, i32 noundef 9, ptr noundef null) #12
  br label %if.end178.i

if.end178.i:                                      ; preds = %do.end172.i, %if.end145.i.if.end178.i_crit_edge
  %conv187.i = sub i32 %idxprom.i.i, %cap_start.0323.i
  br i1 %iswrite, label %if.then189.i, label %if.else200.i

if.then189.i:                                     ; preds = %if.end178.i
  %writefn.i = getelementptr inbounds %struct.perm_bits, ptr %perm.1324.i, i32 0, i32 3
  %46 = ptrtoint ptr %writefn.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %writefn.i, align 4
  %tobool190.not.i = icmp eq ptr %47, null
  br i1 %tobool190.not.i, label %vfio_config_do_rw.exit.thread26, label %if.then.i.i.i.i

vfio_config_do_rw.exit.thread26:                  ; preds = %if.then189.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  br label %if.end

if.then.i.i.i.i:                                  ; preds = %if.then189.i
  call void @__check_object_size(ptr noundef nonnull %val.i, i32 noundef %count.addr.0.i, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #12
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_from_user.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.copy_from_user.exit.i_crit_edge:  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_user.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.038, i32 %count.addr.0.i, i32 -1226833920) #19, !srcloc !77
  %asmresult.i.i.i = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.copy_from_user.exit.i_crit_edge, !prof !75

land.lhs.true.i.i.i.copy_from_user.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_user.exit.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i, i32 noundef %count.addr.0.i) #12
  %49 = call i32 @llvm.read_register.i32(metadata !63) #12
  %and.i.i.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #11, !srcloc !78
  %and.i.i.i.i.i = and i32 %51, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #12, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val.i, ptr noundef %buf.addr.038, i32 noundef %count.addr.0.i) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #12, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end196.i, label %if.end.i.i.i.copy_from_user.exit.i_crit_edge, !prof !75

if.end.i.i.i.copy_from_user.exit.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_user.exit.i

copy_from_user.exit.i:                            ; preds = %if.end.i.i.i.copy_from_user.exit.i_crit_edge, %land.lhs.true.i.i.i.copy_from_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_from_user.exit.i_crit_edge
  %res.0.i.i327.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.copy_from_user.exit.i_crit_edge ], [ %count.addr.0.i, %if.then.i.i.i.i.copy_from_user.exit.i_crit_edge ], [ %count.addr.0.i, %land.lhs.true.i.i.i.copy_from_user.exit.i_crit_edge ]
  %sub.i.i.i = sub i32 %count.addr.0.i, %res.0.i.i327.i
  %add.ptr.i.i.i = getelementptr i8, ptr %val.i, i32 %sub.i.i.i
  %52 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i327.i)
  br label %vfio_config_do_rw.exit.thread

if.end196.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %writefn.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %writefn.i, align 4
  %55 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val.i, align 4
  %call199.i = call i32 %54(ptr noundef %vdev, i32 noundef %idxprom.i.i, i32 noundef %count.addr.0.i, ptr noundef %perm.1324.i, i32 noundef %conv187.i, i32 noundef %56) #12
  br label %vfio_config_do_rw.exit

if.else200.i:                                     ; preds = %if.end178.i
  %readfn.i = getelementptr inbounds %struct.perm_bits, ptr %perm.1324.i, i32 0, i32 2
  %57 = ptrtoint ptr %readfn.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %readfn.i, align 4
  %tobool201.not.i = icmp eq ptr %58, null
  br i1 %tobool201.not.i, label %if.else200.i.if.then.i.i.i287.i_crit_edge, label %if.then202.i

if.else200.i.if.then.i.i.i287.i_crit_edge:        ; preds = %if.else200.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i287.i

if.then202.i:                                     ; preds = %if.else200.i
  %call205.i = call i32 %58(ptr noundef %vdev, i32 noundef %idxprom.i.i, i32 noundef %count.addr.0.i, ptr noundef %perm.1324.i, i32 noundef %conv187.i, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205.i)
  %cmp206.i = icmp slt i32 %call205.i, 0
  br i1 %cmp206.i, label %if.then202.i.vfio_config_do_rw.exit.thread_crit_edge, label %if.then202.i.if.then.i.i.i287.i_crit_edge

if.then202.i.if.then.i.i.i287.i_crit_edge:        ; preds = %if.then202.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i287.i

if.then202.i.vfio_config_do_rw.exit.thread_crit_edge: ; preds = %if.then202.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_config_do_rw.exit.thread

if.then.i.i.i287.i:                               ; preds = %if.then202.i.if.then.i.i.i287.i_crit_edge, %if.else200.i.if.then.i.i.i287.i_crit_edge
  %ret.0.i = phi i32 [ %call205.i, %if.then202.i.if.then.i.i.i287.i_crit_edge ], [ %count.addr.0.i, %if.else200.i.if.then.i.i.i287.i_crit_edge ]
  call void @__check_object_size(ptr noundef nonnull %val.i, i32 noundef %count.addr.0.i, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #12
  %call.i.i288.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i288.i, label %if.then.i.i.i287.i.vfio_config_do_rw.exit.thread_crit_edge, label %if.end.i.i292.i

if.then.i.i.i287.i.vfio_config_do_rw.exit.thread_crit_edge: ; preds = %if.then.i.i.i287.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_config_do_rw.exit.thread

if.end.i.i292.i:                                  ; preds = %if.then.i.i.i287.i
  %59 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.038, i32 %count.addr.0.i, i32 -1226833920) #19, !srcloc !81
  %asmresult.i.i290.i = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i290.i)
  %cmp.i6.i291.i = icmp eq i32 %asmresult.i.i290.i, 0
  br i1 %cmp.i6.i291.i, label %copy_to_user.exit.i, label %if.end.i.i292.i.vfio_config_do_rw.exit.thread_crit_edge

if.end.i.i292.i.vfio_config_do_rw.exit.thread_crit_edge: ; preds = %if.end.i.i292.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_config_do_rw.exit.thread

copy_to_user.exit.i:                              ; preds = %if.end.i.i292.i
  %call.i.i.i293.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val.i, i32 noundef %count.addr.0.i) #12
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.038, ptr noundef nonnull %val.i, i32 noundef %count.addr.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool212.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool212.not.i, label %copy_to_user.exit.i.vfio_config_do_rw.exit_crit_edge, label %copy_to_user.exit.i.vfio_config_do_rw.exit.thread_crit_edge

copy_to_user.exit.i.vfio_config_do_rw.exit.thread_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_config_do_rw.exit.thread

copy_to_user.exit.i.vfio_config_do_rw.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_config_do_rw.exit

vfio_config_do_rw.exit.thread:                    ; preds = %copy_to_user.exit.i.vfio_config_do_rw.exit.thread_crit_edge, %if.end.i.i292.i.vfio_config_do_rw.exit.thread_crit_edge, %if.then.i.i.i287.i.vfio_config_do_rw.exit.thread_crit_edge, %if.then202.i.vfio_config_do_rw.exit.thread_crit_edge, %copy_from_user.exit.i, %lor.lhs.false4.i.vfio_config_do_rw.exit.thread_crit_edge, %lor.lhs.false.i.vfio_config_do_rw.exit.thread_crit_edge, %while.body.vfio_config_do_rw.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %copy_from_user.exit.i ], [ -14, %lor.lhs.false4.i.vfio_config_do_rw.exit.thread_crit_edge ], [ -14, %lor.lhs.false.i.vfio_config_do_rw.exit.thread_crit_edge ], [ -14, %while.body.vfio_config_do_rw.exit.thread_crit_edge ], [ %call205.i, %if.then202.i.vfio_config_do_rw.exit.thread_crit_edge ], [ -14, %copy_to_user.exit.i.vfio_config_do_rw.exit.thread_crit_edge ], [ -14, %if.then.i.i.i287.i.vfio_config_do_rw.exit.thread_crit_edge ], [ -14, %if.end.i.i292.i.vfio_config_do_rw.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  br label %cleanup

vfio_config_do_rw.exit:                           ; preds = %copy_to_user.exit.i.vfio_config_do_rw.exit_crit_edge, %if.end196.i
  %ret.1.i = phi i32 [ %call199.i, %if.end196.i ], [ %ret.0.i, %copy_to_user.exit.i.vfio_config_do_rw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp = icmp slt i32 %ret.1.i, 0
  br i1 %cmp, label %vfio_config_do_rw.exit.cleanup_crit_edge, label %vfio_config_do_rw.exit.if.end_crit_edge

vfio_config_do_rw.exit.if.end_crit_edge:          ; preds = %vfio_config_do_rw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

vfio_config_do_rw.exit.cleanup_crit_edge:         ; preds = %vfio_config_do_rw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %vfio_config_do_rw.exit.if.end_crit_edge, %vfio_config_do_rw.exit.thread26
  %retval.0.i29 = phi i32 [ %count.addr.0.i, %vfio_config_do_rw.exit.thread26 ], [ %ret.1.i, %vfio_config_do_rw.exit.if.end_crit_edge ]
  %sub = sub i32 %count.addr.037, %retval.0.i29
  %add = add i32 %retval.0.i29, %done.041
  %add.ptr = getelementptr i8, ptr %buf.addr.038, i32 %retval.0.i29
  %conv = sext i32 %retval.0.i29 to i64
  %add2 = add i64 %storemerge36, %conv
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %done.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add, %if.end.while.end_crit_edge ]
  %conv3 = zext i32 %done.0.lcssa to i64
  %60 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %ppos, align 8
  %add4 = add i64 %61, %conv3
  store i64 %add4, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %vfio_config_do_rw.exit.cleanup_crit_edge, %vfio_config_do_rw.exit.thread
  %retval.0 = phi i32 [ %done.0.lcssa, %while.end ], [ %retval.0.i.ph, %vfio_config_do_rw.exit.thread ], [ %ret.1.i, %vfio_config_do_rw.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_direct_config_read(ptr nocapture noundef readonly %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readnone %perm, i32 noundef %offset, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  %tmp_val.i = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  %tmp2.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_val.i) #12
  %2 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp_val.i, align 4
  %3 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %count, label %vfio_user_config_read.exit.thread [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb5.i
  ]

vfio_user_config_read.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp_val.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_val.i) #12
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #12
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %tmp.i, align 1, !annotation !74
  %call.i = call i32 @pci_user_read_config_byte(ptr noundef %1, i32 noundef %pos, ptr noundef nonnull %tmp.i) #12
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp.i, align 1
  %conv.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %tmp_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #12
  br label %vfio_user_config_read.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp2.i) #12
  %12 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %tmp2.i, align 2, !annotation !74
  %call3.i = call i32 @pci_user_read_config_word(ptr noundef %1, i32 noundef %pos, ptr noundef nonnull %tmp2.i) #12
  %13 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tmp2.i, align 2
  %conv4.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv4.i, ptr %tmp_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp2.i) #12
  br label %vfio_user_config_read.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call i32 @pci_user_read_config_dword(ptr noundef %1, i32 noundef %pos, ptr noundef nonnull %tmp_val.i) #12
  br label %vfio_user_config_read.exit

vfio_user_config_read.exit:                       ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call6.i, %sw.bb5.i ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  %16 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmp_val.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #12
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %if.end, label %vfio_user_config_read.exit.cleanup_crit_edge

vfio_user_config_read.exit.cleanup_crit_edge:     ; preds = %vfio_user_config_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %vfio_user_config_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %pos)
  %cmp = icmp sgt i32 %pos, 255
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %offset)
  %cmp2 = icmp slt i32 %offset, 4
  br i1 %cmp2, label %if.then3, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %20 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vconfig, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %pos
  %22 = call ptr @memcpy(ptr %val, ptr %add.ptr, i32 %count)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %pos)
  %cmp5 = icmp sgt i32 %pos, 63
  br i1 %cmp5, label %if.then6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp7 = icmp eq i32 %offset, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp8 = icmp ugt i32 %count, 1
  %or.cond = and i1 %cmp8, %cmp7
  br i1 %or.cond, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %vconfig10 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %23 = ptrtoint ptr %vconfig10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vconfig10, align 4
  %add.ptr11 = getelementptr i8, ptr %24, i32 %pos
  %25 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr11, align 1
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %val, align 4
  br label %cleanup

if.else13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %offset)
  %cmp14 = icmp eq i32 %offset, 1
  br i1 %cmp14, label %if.then15, label %if.else13.cleanup_crit_edge

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  %vconfig16 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %28 = ptrtoint ptr %vconfig16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vconfig16, align 4
  %add.ptr17 = getelementptr i8, ptr %29, i32 %pos
  %30 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr17, align 1
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.else13.cleanup_crit_edge, %if.then9, %if.else.cleanup_crit_edge, %if.then3, %if.then1.cleanup_crit_edge, %vfio_user_config_read.exit.cleanup_crit_edge, %vfio_user_config_read.exit.thread
  %retval.0 = phi i32 [ %ret.0.i, %vfio_user_config_read.exit.cleanup_crit_edge ], [ %count, %if.else.cleanup_crit_edge ], [ %count, %if.else13.cleanup_crit_edge ], [ %count, %if.then15 ], [ %count, %if.then9 ], [ %count, %if.then1.cleanup_crit_edge ], [ %count, %if.then3 ], [ -22, %vfio_user_config_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_perm_bits(ptr nocapture noundef %perm, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i.i, ptr %perm, align 4
  %call9.i.i37 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %write = getelementptr inbounds %struct.perm_bits, ptr %perm, i32 0, i32 1
  %1 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i37, ptr %write, align 4
  %2 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perm, align 4
  %tobool.not = icmp eq ptr %3, null
  %tobool4.not = icmp eq ptr %call9.i.i37, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %3) #12
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  tail call void @kfree(ptr noundef %5) #12
  %6 = ptrtoint ptr %perm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %perm, align 4
  %7 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %write, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %readfn = getelementptr inbounds %struct.perm_bits, ptr %perm, i32 0, i32 2
  %8 = ptrtoint ptr %readfn to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vfio_default_config_read, ptr %readfn, align 4
  %writefn = getelementptr inbounds %struct.perm_bits, ptr %perm, i32 0, i32 3
  %9 = ptrtoint ptr %writefn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vfio_default_config_write, ptr %writefn, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_basic_config_read(ptr nocapture noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readonly %perm, i32 noundef %offset, ptr nocapture noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %offset, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %0)
  %1 = icmp ult i32 %0, 24
  %2 = and i32 %offset, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %2)
  %3 = icmp eq i32 %2, 48
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %pdev1.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %4 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1.i, align 4
  %bardirty.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 23
  %6 = ptrtoint ptr %bardirty.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bardirty.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.thread, label %if.end.i

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 @vfio_default_config_read(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr noundef %perm, i32 noundef %offset, ptr noundef %val)
  br label %if.end8

if.end.i:                                         ; preds = %if.then
  %vconfig.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %8 = ptrtoint ptr %vconfig.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vconfig.i, align 4
  %arrayidx.i = getelementptr i8, ptr %9, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i
  %vbar.0113.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %incdec.ptr25.i, %cleanup.i.for.body.i_crit_edge ]
  %i.0112.i = phi i32 [ 0, %if.end.i ], [ %inc24.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %i.0112.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %vbar.0113.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %vbar.0113.i, align 4
  br label %cleanup.i

if.end5.i:                                        ; preds = %for.body.i
  %end.i = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %i.0112.i, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8.i = icmp eq i32 %14, 0
  %15 = xor i32 %14, -1
  %add15.neg.i = add i32 %11, %15
  %cond.neg.i = select i1 %cmp8.i, i32 0, i32 %add15.neg.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %cond.neg.i) #12
  %17 = ptrtoint ptr %vbar.0113.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vbar.0113.i, align 4
  %and.i = and i32 %16, %18
  store i32 %and.i, ptr %vbar.0113.i, align 4
  %flags1.i.i = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %i.0112.i, i32 3
  %19 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = lshr i32 %20, 10
  %21 = and i32 %and2.i.i, 8
  %and6.i.i = lshr i32 %20, 18
  %22 = and i32 %and6.i.i, 4
  %23 = or i32 %22, %21
  %24 = shl nuw nsw i32 %23, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %24, i32 16777216
  %or.i = or i32 %retval.0.i.i, %and.i
  %25 = ptrtoint ptr %vbar.0113.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i, ptr %vbar.0113.i, align 4
  %and18.i = and i32 %or.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end5.i.cleanup.i_crit_edge, label %if.then20.i

if.end5.i.cleanup.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then20.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i = getelementptr i32, ptr %vbar.0113.i, i32 1
  %26 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %incdec.ptr.i, align 4
  %inc.i = add nsw i32 %i.0112.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then20.i, %if.end5.i.cleanup.i_crit_edge, %if.then4.i
  %i.2.i = phi i32 [ %i.0112.i, %if.then4.i ], [ %inc.i, %if.then20.i ], [ %i.0112.i, %if.end5.i.cleanup.i_crit_edge ]
  %vbar.2.i = phi ptr [ %vbar.0113.i, %if.then4.i ], [ %incdec.ptr.i, %if.then20.i ], [ %vbar.0113.i, %if.end5.i.cleanup.i_crit_edge ]
  %inc24.i = add nsw i32 %i.2.i, 1
  %incdec.ptr25.i = getelementptr i32, ptr %vbar.2.i, i32 1
  %cmp.i = icmp slt i32 %i.2.i, 5
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  %27 = ptrtoint ptr %vconfig.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vconfig.i, align 4
  %arrayidx27.i = getelementptr i8, ptr %28, i32 48
  %arrayidx29.i = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 6
  %29 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool31.not.i = icmp eq i32 %30, 0
  br i1 %tobool31.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %end35.i = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 6, i32 1
  %31 = ptrtoint ptr %end35.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp36.i = icmp eq i32 %32, 0
  %33 = xor i32 %32, -1
  %phi.bo.i = add i32 %30, %33
  %phi.bo111.i = or i32 %phi.bo.i, 1
  %cond49.i = select i1 %cmp36.i, i32 1, i32 %phi.bo111.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %cond49.i) #12
  %35 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx27.i, align 4
  br label %if.end66.sink.split.i

if.else.i:                                        ; preds = %for.end.i
  %flags.i = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 6, i32 3
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %and58.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.else.i.if.end66.i_crit_edge, label %if.then60.i

if.else.i.if.end66.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.i

if.then60.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx27.i, align 4
  br label %if.end66.sink.split.i

if.end66.sink.split.i:                            ; preds = %if.then60.i, %if.then32.i
  %.sink114.i = phi i32 [ 16842495, %if.then60.i ], [ %36, %if.then32.i ]
  %.sink.i = phi i32 [ %40, %if.then60.i ], [ %34, %if.then32.i ]
  %and63.i = and i32 %.sink.i, %.sink114.i
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end66.sink.split.i, %if.else.i.if.end66.i_crit_edge
  %and63.sink.i = phi i32 [ 0, %if.else.i.if.end66.i_crit_edge ], [ %and63.i, %if.end66.sink.split.i ]
  %41 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and63.sink.i, ptr %arrayidx27.i, align 4
  %42 = ptrtoint ptr %bardirty.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %bardirty.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end66.i, %entry.if.end_crit_edge
  %call = tail call i32 @vfio_default_config_read(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr noundef %perm, i32 noundef %offset, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %offset)
  %cmp5 = icmp eq i32 %offset, 4
  br i1 %cmp5, label %land.lhs.true6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true6:                                   ; preds = %if.end
  %pdev = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 4
  %no_command_memory = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 49
  %45 = ptrtoint ptr %no_command_memory to i32
  call void @__asan_loadN_noabort(i32 %45, i32 5)
  %bf.load = load i40, ptr %no_command_memory, align 1
  %46 = and i40 %bf.load, 8
  %tobool.not = icmp eq i40 %46, 0
  br i1 %tobool.not, label %land.lhs.true6.if.end8_crit_edge, label %if.then7

land.lhs.true6.if.end8_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %47 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vconfig, align 4
  %arrayidx = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx, align 2
  %51 = lshr i16 %50, 8
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = and i16 %51, 2
  %and = zext i16 %55 to i32
  %or = or i32 %54, %and
  %56 = tail call i32 @llvm.bswap.i32(i32 %or)
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %val, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true6.if.end8_crit_edge, %if.end.if.end8_crit_edge, %if.end.thread
  %call24 = phi i32 [ %call22, %if.end.thread ], [ %call, %if.then7 ], [ %call, %land.lhs.true6.if.end8_crit_edge ], [ %call, %if.end.if.end8_crit_edge ]
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_basic_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readonly %perm, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  %cmd.i = alloca i16, align 2
  %bar.i = alloca i32, align 4
  %phys_cmd = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %2 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vconfig, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %offset)
  %cmp = icmp eq i32 %offset, 4
  br i1 %cmp, label %if.then, label %if.end65.thread

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phys_cmd) #12
  %4 = ptrtoint ptr %phys_cmd to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %phys_cmd, align 2, !annotation !74
  %call = call i32 @pci_user_read_config_word(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %phys_cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %5 = call i32 @llvm.bswap.i32(i32 %val)
  %6 = ptrtoint ptr %phys_cmd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phys_cmd, align 2
  %conv3 = zext i16 %7 to i32
  %and = and i32 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp ne i32 %and, 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %conv6 = zext i16 %10 to i32
  %and7 = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and13 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %and31 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @vfio_pci_zap_and_down_write_memory_lock(ptr noundef %vdev) #12
  br label %lor.lhs.false

if.else:                                          ; preds = %if.end
  %and25 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %and19 = and i32 %conv3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp ne i32 %and19, 0
  %memory_lock = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 40
  call void @down_write(ptr noundef %memory_lock) #12
  %brmerge = select i1 %tobool26.not, i1 true, i1 %tobool20.not
  br i1 %brmerge, label %if.else.lor.lhs.false_crit_edge, label %land.lhs.true45

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true45:                                  ; preds = %if.else
  %no_command_memory = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  %11 = ptrtoint ptr %no_command_memory to i32
  call void @__asan_loadN_noabort(i32 %11, i32 5)
  %bf.load = load i40, ptr %no_command_memory, align 1
  %12 = and i40 %bf.load, 8
  %tobool46.not = icmp ne i40 %12, 0
  %brmerge179 = select i1 %tobool14.not, i1 true, i1 %tobool8.not
  %brmerge180 = select i1 %brmerge179, i1 true, i1 %tobool4.not
  %or.cond = select i1 %tobool46.not, i1 %brmerge180, i1 false
  br i1 %or.cond, label %land.lhs.true45.lor.lhs.false54_crit_edge, label %land.lhs.true45.if.then57_crit_edge

land.lhs.true45.if.then57_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57

land.lhs.true45.lor.lhs.false54_crit_edge:        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false54

lor.lhs.false:                                    ; preds = %if.else.lor.lhs.false_crit_edge, %if.then37
  %brmerge179.old = select i1 %tobool14.not, i1 true, i1 %tobool8.not
  %brmerge180.old = select i1 %brmerge179.old, i1 true, i1 %tobool4.not
  br i1 %brmerge180.old, label %lor.lhs.false.lor.lhs.false54_crit_edge, label %lor.lhs.false.if.then57_crit_edge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57

lor.lhs.false.lor.lhs.false54_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false.lor.lhs.false54_crit_edge, %land.lhs.true45.lor.lhs.false54_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar.i) #12
  %13 = ptrtoint ptr %bar.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %bar.i, align 4, !annotation !74
  %arrayidx.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %lor.lhs.false54.for.inc.i_crit_edge, label %if.then.i

lor.lhs.false54.for.inc.i_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %lor.lhs.false54
  %16 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev1, align 4
  %call.i = call i32 @pci_user_read_config_dword(ptr noundef %17, i32 noundef 16, ptr noundef nonnull %bar.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.then.i.vfio_need_bar_restore.exit.thread_crit_edge

if.then.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bar.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp4.not.i = icmp eq i32 %19, %21
  br i1 %cmp4.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.vfio_need_bar_restore.exit.thread_crit_edge

lor.lhs.false.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %lor.lhs.false54.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.1.i = icmp eq i32 %23, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %24 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev1, align 4
  %call.1.i = call i32 @pci_user_read_config_dword(ptr noundef %25, i32 noundef 20, ptr noundef nonnull %bar.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool1.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool1.not.1.i, label %lor.lhs.false.1.i, label %if.then.1.i.vfio_need_bar_restore.exit.thread_crit_edge

if.then.1.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.1.i:                                ; preds = %if.then.1.i
  %26 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1.i, align 4
  %28 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bar.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp4.not.1.i = icmp eq i32 %27, %29
  br i1 %cmp4.not.1.i, label %lor.lhs.false.1.i.for.inc.1.i_crit_edge, label %lor.lhs.false.1.i.vfio_need_bar_restore.exit.thread_crit_edge

lor.lhs.false.1.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.1.i.for.inc.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %lor.lhs.false.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.2.i = icmp eq i32 %31, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %32 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev1, align 4
  %call.2.i = call i32 @pci_user_read_config_dword(ptr noundef %33, i32 noundef 24, ptr noundef nonnull %bar.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool1.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool1.not.2.i, label %lor.lhs.false.2.i, label %if.then.2.i.vfio_need_bar_restore.exit.thread_crit_edge

if.then.2.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.2.i:                                ; preds = %if.then.2.i
  %34 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.2.i, align 4
  %36 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bar.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp4.not.2.i = icmp eq i32 %35, %37
  br i1 %cmp4.not.2.i, label %lor.lhs.false.2.i.for.inc.2.i_crit_edge, label %lor.lhs.false.2.i.vfio_need_bar_restore.exit.thread_crit_edge

lor.lhs.false.2.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.2.i.for.inc.2.i_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %lor.lhs.false.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 3
  %38 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.3.i = icmp eq i32 %39, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %40 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev1, align 4
  %call.3.i = call i32 @pci_user_read_config_dword(ptr noundef %41, i32 noundef 28, ptr noundef nonnull %bar.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool1.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool1.not.3.i, label %lor.lhs.false.3.i, label %if.then.3.i.vfio_need_bar_restore.exit.thread_crit_edge

if.then.3.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.3.i:                                ; preds = %if.then.3.i
  %42 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.3.i, align 4
  %44 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bar.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp4.not.3.i = icmp eq i32 %43, %45
  br i1 %cmp4.not.3.i, label %lor.lhs.false.3.i.for.inc.3.i_crit_edge, label %lor.lhs.false.3.i.vfio_need_bar_restore.exit.thread_crit_edge

lor.lhs.false.3.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.3.i.for.inc.3.i_crit_edge:          ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %lor.lhs.false.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 4
  %46 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.4.i = icmp eq i32 %47, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  %48 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev1, align 4
  %call.4.i = call i32 @pci_user_read_config_dword(ptr noundef %49, i32 noundef 32, ptr noundef nonnull %bar.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool1.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool1.not.4.i, label %lor.lhs.false.4.i, label %if.then.4.i.vfio_need_bar_restore.exit.thread_crit_edge

if.then.4.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.4.i:                                ; preds = %if.then.4.i
  %50 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.4.i, align 4
  %52 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bar.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp4.not.4.i = icmp eq i32 %51, %53
  br i1 %cmp4.not.4.i, label %lor.lhs.false.4.i.for.inc.4.i_crit_edge, label %lor.lhs.false.4.i.vfio_need_bar_restore.exit.thread_crit_edge

lor.lhs.false.4.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %lor.lhs.false.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.4.i.for.inc.4.i_crit_edge:          ; preds = %lor.lhs.false.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %lor.lhs.false.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 5
  %54 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.5.i = icmp eq i32 %55, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.vfio_need_bar_restore.exit_crit_edge, label %if.then.5.i

for.inc.4.i.vfio_need_bar_restore.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit

if.then.5.i:                                      ; preds = %for.inc.4.i
  %56 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev1, align 4
  %call.5.i = call i32 @pci_user_read_config_dword(ptr noundef %57, i32 noundef 36, ptr noundef nonnull %bar.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool1.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool1.not.5.i, label %lor.lhs.false.5.i, label %if.then.5.i.vfio_need_bar_restore.exit.thread_crit_edge

if.then.5.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.5.i:                                ; preds = %if.then.5.i
  %58 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.5.i, align 4
  %60 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bar.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp4.not.5.i = icmp eq i32 %59, %61
  br i1 %cmp4.not.5.i, label %lor.lhs.false.5.i.vfio_need_bar_restore.exit_crit_edge, label %lor.lhs.false.5.i.vfio_need_bar_restore.exit.thread_crit_edge

lor.lhs.false.5.i.vfio_need_bar_restore.exit.thread_crit_edge: ; preds = %lor.lhs.false.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit.thread

lor.lhs.false.5.i.vfio_need_bar_restore.exit_crit_edge: ; preds = %lor.lhs.false.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_need_bar_restore.exit

vfio_need_bar_restore.exit.thread:                ; preds = %lor.lhs.false.5.i.vfio_need_bar_restore.exit.thread_crit_edge, %if.then.5.i.vfio_need_bar_restore.exit.thread_crit_edge, %lor.lhs.false.4.i.vfio_need_bar_restore.exit.thread_crit_edge, %if.then.4.i.vfio_need_bar_restore.exit.thread_crit_edge, %lor.lhs.false.3.i.vfio_need_bar_restore.exit.thread_crit_edge, %if.then.3.i.vfio_need_bar_restore.exit.thread_crit_edge, %lor.lhs.false.2.i.vfio_need_bar_restore.exit.thread_crit_edge, %if.then.2.i.vfio_need_bar_restore.exit.thread_crit_edge, %lor.lhs.false.1.i.vfio_need_bar_restore.exit.thread_crit_edge, %if.then.1.i.vfio_need_bar_restore.exit.thread_crit_edge, %lor.lhs.false.i.vfio_need_bar_restore.exit.thread_crit_edge, %if.then.i.vfio_need_bar_restore.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar.i) #12
  br label %if.then57

vfio_need_bar_restore.exit:                       ; preds = %lor.lhs.false.5.i.vfio_need_bar_restore.exit_crit_edge, %for.inc.4.i.vfio_need_bar_restore.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar.i) #12
  br label %if.end65

if.then57:                                        ; preds = %vfio_need_bar_restore.exit.thread, %lor.lhs.false.if.then57_crit_edge, %land.lhs.true45.if.then57_crit_edge
  %62 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #12
  %64 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %cmd.i, align 2, !annotation !74
  %is_virtfn.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 49
  %65 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 5)
  %bf.load.i = load i40, ptr %is_virtfn.i, align 1
  %66 = and i40 %bf.load.i, 65536
  %tobool.not.i183 = icmp eq i40 %66, 0
  br i1 %tobool.not.i183, label %do.end.i, label %if.then57.vfio_bar_restore.exit_crit_edge

if.then57.vfio_bar_restore.exit_crit_edge:        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_bar_restore.exit

do.end.i:                                         ; preds = %if.then57
  %rbar2.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #17
  %67 = ptrtoint ptr %rbar2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rbar2.i, align 4
  %call.i184 = call i32 @pci_user_write_config_dword(ptr noundef %63, i32 noundef 16, i32 noundef %68) #12
  %incdec.ptr.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 1
  %69 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %incdec.ptr.i, align 4
  %call.1.i185 = call i32 @pci_user_write_config_dword(ptr noundef %63, i32 noundef 20, i32 noundef %70) #12
  %incdec.ptr.1.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 2
  %71 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %incdec.ptr.1.i, align 4
  %call.2.i186 = call i32 @pci_user_write_config_dword(ptr noundef %63, i32 noundef 24, i32 noundef %72) #12
  %incdec.ptr.2.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 3
  %73 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %incdec.ptr.2.i, align 4
  %call.3.i187 = call i32 @pci_user_write_config_dword(ptr noundef %63, i32 noundef 28, i32 noundef %74) #12
  %incdec.ptr.3.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 4
  %75 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %incdec.ptr.3.i, align 4
  %call.4.i188 = call i32 @pci_user_write_config_dword(ptr noundef %63, i32 noundef 32, i32 noundef %76) #12
  %incdec.ptr.4.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 5
  %77 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %incdec.ptr.4.i, align 4
  %call.5.i189 = call i32 @pci_user_write_config_dword(ptr noundef %63, i32 noundef 36, i32 noundef %78) #12
  %incdec.ptr.5.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 18, i32 6
  %79 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %incdec.ptr.5.i, align 4
  %call3.i = call i32 @pci_user_write_config_dword(ptr noundef %63, i32 noundef 48, i32 noundef %80) #12
  %nointx.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 26
  %81 = ptrtoint ptr %nointx.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %nointx.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool4.not.i = icmp eq i8 %82, 0
  br i1 %tobool4.not.i, label %do.end.i.vfio_bar_restore.exit_crit_edge, label %if.then5.i

do.end.i.vfio_bar_restore.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_bar_restore.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call i32 @pci_user_read_config_word(ptr noundef %63, i32 noundef 4, ptr noundef nonnull %cmd.i) #12
  %83 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %cmd.i, align 2
  %85 = or i16 %84, 1024
  store i16 %85, ptr %cmd.i, align 2
  %call8.i = call i32 @pci_user_write_config_word(ptr noundef %63, i32 noundef 4, i16 noundef zeroext %85) #12
  br label %vfio_bar_restore.exit

vfio_bar_restore.exit:                            ; preds = %if.then5.i, %do.end.i.vfio_bar_restore.exit_crit_edge, %if.then57.vfio_bar_restore.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #12
  br label %if.end65

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phys_cmd) #12
  br label %cleanup136

if.end65:                                         ; preds = %vfio_bar_restore.exit, %vfio_need_bar_restore.exit
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phys_cmd) #12
  %call66 = call i32 @vfio_default_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr noundef %perm, i32 noundef 4, i32 noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then72, label %if.end93.thread

if.end65.thread:                                  ; preds = %entry
  %call66193 = tail call i32 @vfio_default_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr noundef %perm, i32 noundef %offset, i32 noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66193)
  %cmp67194 = icmp slt i32 %call66193, 0
  br i1 %cmp67194, label %if.end65.thread.cleanup136_crit_edge, label %if.end93

if.end65.thread.cleanup136_crit_edge:             ; preds = %if.end65.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup136

if.then72:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %memory_lock73 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 40
  call void @up_write(ptr noundef %memory_lock73) #12
  br label %cleanup136

if.end93.thread:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx, align 2
  %88 = and i16 %87, -769
  %new_cmd.1.tr = trunc i32 %5 to i16
  %89 = shl i16 %new_cmd.1.tr, 8
  %90 = and i16 %89, 768
  %conv91 = or i16 %88, %90
  store i16 %conv91, ptr %arrayidx, align 2
  %memory_lock92 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 40
  call void @up_write(ptr noundef %memory_lock92) #12
  br label %if.then99

if.end93:                                         ; preds = %if.end65.thread
  %91 = and i32 %offset, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %91)
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %if.end93.if.then99_crit_edge, label %if.end122

if.end93.if.then99_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then99

if.then99:                                        ; preds = %if.end93.if.then99_crit_edge, %if.end93.thread
  %call66197201211 = phi i32 [ %call66, %if.end93.thread ], [ %call66193, %if.end93.if.then99_crit_edge ]
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx, align 2
  %95 = and i16 %94, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool102.not = icmp eq i16 %95, 0
  %virq_disabled115 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 20
  %96 = ptrtoint ptr %virq_disabled115 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %virq_disabled115, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool116.not = icmp eq i8 %97, 0
  br i1 %tobool102.not, label %land.lhs.true114.critedge, label %land.lhs.true108

land.lhs.true108:                                 ; preds = %if.then99
  br i1 %tobool116.not, label %if.then110, label %land.lhs.true108.cleanup136_crit_edge

land.lhs.true108.cleanup136_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup136

if.then110:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %virq_disabled115 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %virq_disabled115, align 1
  call void @vfio_pci_intx_mask(ptr noundef %vdev) #12
  br label %cleanup136

land.lhs.true114.critedge:                        ; preds = %if.then99
  br i1 %tobool116.not, label %land.lhs.true114.critedge.cleanup136_crit_edge, label %if.then118

land.lhs.true114.critedge.cleanup136_crit_edge:   ; preds = %land.lhs.true114.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup136

if.then118:                                       ; preds = %land.lhs.true114.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %virq_disabled115 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %virq_disabled115, align 1
  call void @vfio_pci_intx_unmask(ptr noundef %vdev) #12
  br label %cleanup136

if.end122:                                        ; preds = %if.end93
  %100 = add i32 %offset, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %100)
  %101 = icmp ult i32 %100, 24
  %102 = and i32 %offset, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %102)
  %103 = icmp eq i32 %102, 48
  %or.cond209 = or i1 %101, %103
  br i1 %or.cond209, label %if.then134, label %if.end122.cleanup136_crit_edge

if.end122.cleanup136_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup136

if.then134:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  %bardirty = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 23
  %104 = ptrtoint ptr %bardirty to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %bardirty, align 4
  br label %cleanup136

cleanup136:                                       ; preds = %if.then134, %if.end122.cleanup136_crit_edge, %if.then118, %land.lhs.true114.critedge.cleanup136_crit_edge, %if.then110, %land.lhs.true108.cleanup136_crit_edge, %if.then72, %if.end65.thread.cleanup136_crit_edge, %cleanup
  %retval.1 = phi i32 [ %call, %cleanup ], [ %call66, %if.then72 ], [ %call66193, %if.then134 ], [ %call66193, %if.end65.thread.cleanup136_crit_edge ], [ %call66197201211, %land.lhs.true108.cleanup136_crit_edge ], [ %call66197201211, %land.lhs.true114.critedge.cleanup136_crit_edge ], [ %call66197201211, %if.then118 ], [ %call66197201211, %if.then110 ], [ %call66193, %if.end122.cleanup136_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_default_config_read(ptr nocapture noundef readonly %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readonly %perm, i32 noundef %offset, ptr nocapture noundef %val) #3 align 64 {
entry:
  %tmp_val.i = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  %tmp2.i = alloca i16, align 2
  %virt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virt)
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %virt, align 4
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %1 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vconfig, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %pos
  %3 = call ptr @memcpy(ptr %val, ptr %add.ptr, i32 %count)
  %4 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perm, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 %offset
  %6 = call ptr @memcpy(ptr %virt, ptr %add.ptr2, i32 %count)
  %mul.neg = mul i32 %count, -8
  %sub = add i32 %mul.neg, 32
  %shr = lshr i32 -1, %sub
  %7 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %virt.0.virt.0.virt.0. = load i32, ptr %virt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %virt.0.virt.0.virt.0.)
  %cmp.not = icmp eq i32 %7, %virt.0.virt.0.virt.0.
  br i1 %cmp.not, label %entry.cleanup9_crit_edge, label %if.then

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup9

if.then:                                          ; preds = %entry
  %pdev3 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %9 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_val.i) #12
  %11 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tmp_val.i, align 4
  %12 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %count, label %vfio_user_config_read.exit.thread [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb5.i
  ]

vfio_user_config_read.exit.thread:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_val.i) #12
  br label %cleanup9

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #12
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %tmp.i, align 1, !annotation !74
  %call.i = call i32 @pci_user_read_config_byte(ptr noundef %10, i32 noundef %pos, ptr noundef nonnull %tmp.i) #12
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tmp.i, align 1
  %conv.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %tmp_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #12
  br label %vfio_user_config_read.exit

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp2.i) #12
  %17 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %tmp2.i, align 2, !annotation !74
  %call3.i = call i32 @pci_user_read_config_word(ptr noundef %10, i32 noundef %pos, ptr noundef nonnull %tmp2.i) #12
  %18 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tmp2.i, align 2
  %conv4.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv4.i, ptr %tmp_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp2.i) #12
  br label %vfio_user_config_read.exit

sw.bb5.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call i32 @pci_user_read_config_dword(ptr noundef %10, i32 noundef %pos, ptr noundef nonnull %tmp_val.i) #12
  br label %vfio_user_config_read.exit

vfio_user_config_read.exit:                       ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call6.i, %sw.bb5.i ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  %21 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %if.end, label %vfio_user_config_read.exit.cleanup9_crit_edge

vfio_user_config_read.exit.cleanup9_crit_edge:    ; preds = %vfio_user_config_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup9

if.end:                                           ; preds = %vfio_user_config_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = call i32 @llvm.bswap.i32(i32 %22) #12
  %neg = xor i32 %virt.0.virt.0.virt.0., -1
  %and = and i32 %23, %neg
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %and5 = and i32 %25, %virt.0.virt.0.virt.0.
  %or = or i32 %and5, %and
  store i32 %or, ptr %val, align 4
  br label %cleanup9

cleanup9:                                         ; preds = %if.end, %vfio_user_config_read.exit.cleanup9_crit_edge, %vfio_user_config_read.exit.thread, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ %count, %if.end ], [ %count, %entry.cleanup9_crit_edge ], [ -22, %vfio_user_config_read.exit.thread ], [ %ret.0.i, %vfio_user_config_read.exit.cleanup9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virt)
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_default_config_write(ptr nocapture noundef readonly %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readonly %perm, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  %tmp_val.i = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  %tmp2.i = alloca i16, align 2
  %virt = alloca i32, align 4
  %write = alloca i32, align 4
  %virt_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virt)
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %virt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %write)
  %1 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %write, align 4
  %write1 = getelementptr inbounds %struct.perm_bits, ptr %perm, i32 0, i32 1
  %2 = ptrtoint ptr %write1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %4 = call ptr @memcpy(ptr %write, ptr %add.ptr, i32 %count)
  %write.0.write.0.write.0. = load i32, ptr %write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write.0.write.0.write.0.)
  %tobool.not = icmp eq i32 %write.0.write.0.write.0., 0
  br i1 %tobool.not, label %entry.cleanup37_crit_edge, label %if.end

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %perm, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 %offset
  %7 = call ptr @memcpy(ptr %virt, ptr %add.ptr3, i32 %count)
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %virt.0.virt.0.virt.0. = load i32, ptr %virt, align 4
  %and = and i32 %virt.0.virt.0.virt.0., %write.0.write.0.write.0.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virt_val)
  %9 = ptrtoint ptr %virt_val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %virt_val, align 4
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %10 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vconfig, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 %pos
  %12 = call ptr @memcpy(ptr %virt_val, ptr %add.ptr6, i32 %count)
  %neg = xor i32 %and, -1
  %virt_val.0.virt_val.0.virt_val.0. = load i32, ptr %virt_val, align 4
  %and8 = and i32 %virt_val.0.virt_val.0.virt_val.0., %neg
  %and10 = and i32 %and, %val
  %or = or i32 %and8, %and10
  store i32 %or, ptr %virt_val, align 4
  %13 = call ptr @memcpy(ptr %add.ptr6, ptr %virt_val, i32 %count)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virt_val)
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.end.if.end13_crit_edge
  %neg14 = xor i32 %virt.0.virt.0.virt.0., -1
  %and15 = and i32 %write.0.write.0.write.0., %neg14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end36_crit_edge, label %if.then17

if.end13.if.end36_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then17:                                        ; preds = %if.end13
  %pdev18 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %14 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_val.i) #12
  %16 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tmp_val.i, align 4
  %17 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %count, label %vfio_user_config_read.exit.thread [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb5.i
  ]

vfio_user_config_read.exit.thread:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_val.i) #12
  br label %cleanup37

sw.bb.i:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #12
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %tmp.i, align 1, !annotation !74
  %call.i = call i32 @pci_user_read_config_byte(ptr noundef %15, i32 noundef %pos, ptr noundef nonnull %tmp.i) #12
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp.i, align 1
  %conv.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %tmp_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #12
  br label %vfio_user_config_read.exit

sw.bb1.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp2.i) #12
  %22 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %tmp2.i, align 2, !annotation !74
  %call3.i = call i32 @pci_user_read_config_word(ptr noundef %15, i32 noundef %pos, ptr noundef nonnull %tmp2.i) #12
  %23 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tmp2.i, align 2
  %conv4.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv4.i, ptr %tmp_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp2.i) #12
  br label %vfio_user_config_read.exit

sw.bb5.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call i32 @pci_user_read_config_dword(ptr noundef %15, i32 noundef %pos, ptr noundef nonnull %tmp_val.i) #12
  br label %vfio_user_config_read.exit

vfio_user_config_read.exit:                       ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call6.i, %sw.bb5.i ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  %26 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmp_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool19.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool19.not, label %if.end21, label %vfio_user_config_read.exit.cleanup37_crit_edge

vfio_user_config_read.exit.cleanup37_crit_edge:   ; preds = %vfio_user_config_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

if.end21:                                         ; preds = %vfio_user_config_read.exit
  %28 = call i32 @llvm.bswap.i32(i32 %27) #12
  %write.0.48.not = xor i32 %write.0.write.0.write.0., -1
  %neg24 = or i32 %virt.0.virt.0.virt.0., %write.0.48.not
  %and25 = and i32 %28, %neg24
  %and28 = and i32 %and15, %val
  %or29 = or i32 %and25, %and28
  %29 = call i32 @llvm.bswap.i32(i32 %or29) #12
  %30 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %count, label %if.end21.cleanup37_crit_edge [
    i32 1, label %sw.bb.i72
    i32 2, label %sw.bb1.i74
    i32 4, label %sw.bb4.i
  ]

if.end21.cleanup37_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

sw.bb.i72:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i70 = trunc i32 %29 to i8
  %call.i71 = call i32 @pci_user_write_config_byte(ptr noundef %15, i32 noundef %pos, i8 noundef zeroext %conv.i70) #12
  br label %cleanup

sw.bb1.i74:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %conv2.i = trunc i32 %29 to i16
  %call3.i73 = call i32 @pci_user_write_config_word(ptr noundef %15, i32 noundef %pos, i16 noundef zeroext %conv2.i) #12
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = call i32 @pci_user_write_config_dword(ptr noundef %15, i32 noundef %pos, i32 noundef %29) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4.i, %sw.bb1.i74, %sw.bb.i72
  %ret.0.i75 = phi i32 [ %call5.i, %sw.bb4.i ], [ %call3.i73, %sw.bb1.i74 ], [ %call.i71, %sw.bb.i72 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i75)
  %tobool31.not = icmp eq i32 %ret.0.i75, 0
  br i1 %tobool31.not, label %cleanup.if.end36_crit_edge, label %cleanup.cleanup37_crit_edge

cleanup.cleanup37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

cleanup.if.end36_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end36:                                         ; preds = %cleanup.if.end36_crit_edge, %if.end13.if.end36_crit_edge
  br label %cleanup37

cleanup37:                                        ; preds = %if.end36, %cleanup.cleanup37_crit_edge, %if.end21.cleanup37_crit_edge, %vfio_user_config_read.exit.cleanup37_crit_edge, %vfio_user_config_read.exit.thread, %entry.cleanup37_crit_edge
  %retval.1 = phi i32 [ %count, %if.end36 ], [ %ret.0.i75, %cleanup.cleanup37_crit_edge ], [ %count, %entry.cleanup37_crit_edge ], [ -22, %if.end21.cleanup37_crit_edge ], [ -22, %vfio_user_config_read.exit.thread ], [ %ret.0.i, %vfio_user_config_read.exit.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virt)
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_zap_and_down_write_memory_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_intx_mask(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_intx_unmask(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pm_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readonly %perm, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfio_default_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr noundef %perm, i32 noundef %offset, i32 noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %offset)
  %cmp1 = icmp eq i32 %offset, 4
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then2, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = lshr i32 %val, 24
  %and = and i32 %0, 3
  %call6 = tail call i32 @vfio_pci_set_power_state(ptr noundef %vdev, i32 noundef %and) #12
  br label %return

return:                                           ; preds = %if.then2, %entry.return_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_vpd_config_write(ptr nocapture noundef readonly %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readonly %perm, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %2 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vconfig, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %pos
  %idx.neg = sub i32 0, %offset
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 2
  %add.ptr8 = getelementptr i8, ptr %add.ptr2, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #12
  %call = tail call i32 @vfio_default_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr noundef %perm, i32 noundef %offset, i32 noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp9 = icmp sgt i32 %offset, 3
  %or.cond = or i1 %cmp9, %cmp
  %add = add i32 %call, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp11 = icmp slt i32 %add, 4
  %or.cond56 = or i1 %or.cond, %cmp11
  br i1 %or.cond56, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr3, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  %7 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr8, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %data, align 4
  %and14 = and i32 %conv, 32767
  %11 = zext i32 %and14 to i64
  %call16 = call i32 @pci_write_vpd(ptr noundef %1, i64 noundef %11, i32 noundef 4, ptr noundef nonnull %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 4
  br i1 %cmp17.not, label %if.then12.if.end27_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12.if.end27_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.else:                                          ; preds = %if.end
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %data, align 4
  %conv21 = zext i16 %6 to i64
  %call22 = call i32 @pci_read_vpd(ptr noundef %1, i64 noundef %conv21, i32 noundef 4, ptr noundef nonnull %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.else.cleanup_crit_edge, label %if.end26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr8, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then12.if.end27_crit_edge
  %xor = xor i16 %6, -32768
  %17 = call i16 @llvm.bswap.i16(i16 %xor)
  %18 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.else.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_vpd(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_vpd(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_exp_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readonly %perm, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  %cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idx.neg = sub i32 0, %offset
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vconfig, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %pos
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 8
  %2 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr2, align 2
  %4 = shl i16 %3, 8
  %5 = and i16 %4, 28672
  %call = tail call i32 @vfio_default_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr noundef %perm, i32 noundef %offset, i32 noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr2, align 2
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then6

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap) #12
  %9 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %cap, align 4, !annotation !74
  %10 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr2, align 2
  %12 = and i16 %11, -129
  store i16 %12, ptr %add.ptr2, align 2
  %pdev = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %sub = add i32 %pos, 4
  %add = sub i32 %sub, %offset
  %call10 = call i32 @pci_user_read_config_dword(ptr noundef %14, i32 noundef %add, ptr noundef nonnull %cap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.then6.if.end17_crit_edge

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then6
  %15 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cap, align 4
  %and12 = and i32 %16, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end17_crit_edge, label %if.then14

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @vfio_pci_zap_and_down_write_memory_lock(ptr noundef %vdev) #12
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %call16 = call i32 @pci_try_reset_function(ptr noundef %18) #12
  %memory_lock = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 40
  call void @up_write(ptr noundef %memory_lock) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true.if.end17_crit_edge, %if.then6.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap) #12
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end.if.end18_crit_edge
  %19 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr2, align 2
  %21 = shl i16 %20, 8
  %22 = and i16 %21, 28672
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %22)
  %cmp21.not = icmp eq i16 %5, %22
  br i1 %cmp21.not, label %if.end18.cleanup_crit_edge, label %if.then23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %23 = lshr exact i16 %22, 12
  %24 = zext i16 %23 to i32
  %shl = shl nuw nsw i32 128, %24
  %pdev26 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %25 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev26, align 4
  %call27 = call i32 @pcie_get_mps(ptr noundef %26) #12
  %27 = call i32 @llvm.smax.i32(i32 %shl, i32 %call27)
  %28 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev26, align 4
  %call31 = call i32 @pcie_set_readrq(ptr noundef %29, i32 noundef %27) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_reset_function(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_mps(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_af_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readonly %perm, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  %cap = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idx.neg = sub i32 0, %offset
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vconfig, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %pos
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 4
  %call = tail call i32 @vfio_default_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr noundef %perm, i32 noundef %offset, i32 noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr2, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cap) #12
  %5 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %cap, align 1, !annotation !74
  %6 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr2, align 1
  %8 = and i8 %7, -2
  store i8 %8, ptr %add.ptr2, align 1
  %pdev = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %sub = add i32 %pos, 3
  %add = sub i32 %sub, %offset
  %call7 = call i32 @pci_user_read_config_byte(ptr noundef %10, i32 noundef %add, ptr noundef nonnull %cap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.then3.if.end19_crit_edge

if.then3.if.end19_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then3
  %11 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cap, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %.not = icmp eq i8 %13, 3
  br i1 %.not, label %if.then16, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @vfio_pci_zap_and_down_write_memory_lock(ptr noundef %vdev) #12
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %call18 = call i32 @pci_try_reset_function(ptr noundef %15) #12
  %memory_lock = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 40
  call void @up_write(ptr noundef %memory_lock) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true.if.end19_crit_edge, %if.then3.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cap) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_msi_config_read(ptr nocapture noundef readonly %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readonly %perm, i32 noundef %offset, ptr nocapture noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp = icmp slt i32 %offset, 3
  %add = add i32 %offset, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp1 = icmp sgt i32 %add, 1
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %pos)
  %cmp.inv.i = icmp slt i32 %pos, 256
  %cond.i = select i1 %cmp.inv.i, i32 64, i32 256
  %pci_config_map.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %pci_config_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_config_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 %pos
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1.i = icmp eq i8 %3, 0
  br i1 %cmp1.i, label %if.then.vfio_find_cap_start.exit_crit_edge, label %if.then.while.cond.i_crit_edge

if.then.while.cond.i_crit_edge:                   ; preds = %if.then
  br label %while.cond.i

if.then.vfio_find_cap_start.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_find_cap_start.exit

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.then.while.cond.i_crit_edge
  %pos.addr.0.i = phi i32 [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ], [ %pos, %if.then.while.cond.i_crit_edge ]
  %sub.i = add i32 %pos.addr.0.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %cond.i)
  %cmp3.not.i = icmp slt i32 %sub.i, %cond.i
  br i1 %cmp3.not.i, label %while.cond.i.vfio_find_cap_start.exit_crit_edge, label %land.rhs.i

while.cond.i.vfio_find_cap_start.exit_crit_edge:  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_find_cap_start.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %arrayidx7.i = getelementptr i8, ptr %1, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %cmp10.i = icmp eq i8 %5, %3
  br i1 %cmp10.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.vfio_find_cap_start.exit_crit_edge

land.rhs.i.vfio_find_cap_start.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_find_cap_start.exit

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

vfio_find_cap_start.exit:                         ; preds = %land.rhs.i.vfio_find_cap_start.exit_crit_edge, %while.cond.i.vfio_find_cap_start.exit_crit_edge, %if.then.vfio_find_cap_start.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.vfio_find_cap_start.exit_crit_edge ], [ %pos.addr.0.i, %land.rhs.i.vfio_find_cap_start.exit_crit_edge ], [ %pos.addr.0.i, %while.cond.i.vfio_find_cap_start.exit_crit_edge ]
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %6 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vconfig, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %retval.0.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = and i16 %9, -3585
  store i16 %10, ptr %arrayidx, align 2
  %msi_qmax = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 14
  %11 = ptrtoint ptr %msi_qmax to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msi_qmax, align 4
  %conv3 = zext i8 %12 to i16
  %shl = shl nuw nsw i16 %conv3, 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or17 = or i16 %13, %10
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or17, ptr %arrayidx, align 2
  br label %if.end

if.end:                                           ; preds = %vfio_find_cap_start.exit, %entry.if.end_crit_edge
  %call8 = tail call i32 @vfio_default_config_read(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr noundef %perm, i32 noundef %offset, ptr noundef %val)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_msi_config_write(ptr nocapture noundef readonly %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readonly %perm, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfio_default_config_write(ptr noundef %vdev, i32 noundef %pos, i32 noundef %count, ptr noundef %perm, i32 noundef %offset, i32 noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp1 = icmp slt i32 %offset, 3
  %add = add i32 %call, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp2 = icmp sgt i32 %add, 1
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then3, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %pos)
  %cmp.inv.i = icmp slt i32 %pos, 256
  %cond.i = select i1 %cmp.inv.i, i32 64, i32 256
  %pci_config_map.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %pci_config_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_config_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 %pos
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1.i = icmp eq i8 %3, 0
  br i1 %cmp1.i, label %if.then3.vfio_find_cap_start.exit_crit_edge, label %if.then3.while.cond.i_crit_edge

if.then3.while.cond.i_crit_edge:                  ; preds = %if.then3
  br label %while.cond.i

if.then3.vfio_find_cap_start.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_find_cap_start.exit

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.then3.while.cond.i_crit_edge
  %pos.addr.0.i = phi i32 [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ], [ %pos, %if.then3.while.cond.i_crit_edge ]
  %sub.i = add i32 %pos.addr.0.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %cond.i)
  %cmp3.not.i = icmp slt i32 %sub.i, %cond.i
  br i1 %cmp3.not.i, label %while.cond.i.vfio_find_cap_start.exit_crit_edge, label %land.rhs.i

while.cond.i.vfio_find_cap_start.exit_crit_edge:  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_find_cap_start.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %arrayidx7.i = getelementptr i8, ptr %1, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %cmp10.i = icmp eq i8 %5, %3
  br i1 %cmp10.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.vfio_find_cap_start.exit_crit_edge

land.rhs.i.vfio_find_cap_start.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfio_find_cap_start.exit

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

vfio_find_cap_start.exit:                         ; preds = %land.rhs.i.vfio_find_cap_start.exit_crit_edge, %while.cond.i.vfio_find_cap_start.exit_crit_edge, %if.then3.vfio_find_cap_start.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then3.vfio_find_cap_start.exit_crit_edge ], [ %pos.addr.0.i, %land.rhs.i.vfio_find_cap_start.exit_crit_edge ], [ %pos.addr.0.i, %while.cond.i.vfio_find_cap_start.exit_crit_edge ]
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %6 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vconfig, align 4
  %add5 = add i32 %retval.0.i, 2
  %arrayidx = getelementptr i8, ptr %7, i32 %add5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %irq_type = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 11
  %11 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp6 = icmp eq i32 %12, 1
  %13 = and i16 %10, -2
  %spec.select = select i1 %cmp6, i16 %10, i16 %13
  %14 = lshr i16 %spec.select, 4
  %15 = and i16 %14, 7
  %msi_qmax = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 14
  %16 = ptrtoint ptr %msi_qmax to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msi_qmax, align 4
  %18 = zext i8 %17 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %18)
  %cmp13 = icmp ugt i16 %15, %18
  %and17 = and i16 %spec.select, -113
  %19 = shl nuw nsw i16 %18, 4
  %conv22 = or i16 %19, %and17
  %flags.1 = select i1 %cmp13, i16 %conv22, i16 %spec.select
  %20 = tail call i16 @llvm.bswap.i16(i16 %flags.1)
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx, align 2
  %pdev = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %call25 = tail call i32 @pci_user_write_config_word(ptr noundef %23, i32 noundef %add5, i16 noundef zeroext %flags.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %vfio_find_cap_start.exit.if.end31_crit_edge, label %vfio_find_cap_start.exit.return_crit_edge

vfio_find_cap_start.exit.return_crit_edge:        ; preds = %vfio_find_cap_start.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

vfio_find_cap_start.exit.if.end31_crit_edge:      ; preds = %vfio_find_cap_start.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end31:                                         ; preds = %vfio_find_cap_start.exit.if.end31_crit_edge, %if.end.if.end31_crit_edge
  br label %return

return:                                           ; preds = %if.end31, %vfio_find_cap_start.exit.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call25, %vfio_find_cap_start.exit.return_crit_edge ], [ %call, %if.end31 ], [ %call, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_raw_config_read(ptr nocapture noundef readonly %vdev, i32 noundef %pos, i32 noundef %count, ptr nocapture noundef readnone %perm, i32 noundef %offset, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  %tmp_val.i = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  %tmp2.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_val.i) #12
  %2 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp_val.i, align 4
  %3 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %count, label %vfio_user_config_read.exit.thread [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb5.i
  ]

vfio_user_config_read.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp_val.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_val.i) #12
  br label %20

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #12
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %tmp.i, align 1, !annotation !74
  %call.i = call i32 @pci_user_read_config_byte(ptr noundef %1, i32 noundef %pos, ptr noundef nonnull %tmp.i) #12
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp.i, align 1
  %conv.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %tmp_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #12
  br label %vfio_user_config_read.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp2.i) #12
  %12 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %tmp2.i, align 2, !annotation !74
  %call3.i = call i32 @pci_user_read_config_word(ptr noundef %1, i32 noundef %pos, ptr noundef nonnull %tmp2.i) #12
  %13 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tmp2.i, align 2
  %conv4.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv4.i, ptr %tmp_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp2.i) #12
  br label %vfio_user_config_read.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call i32 @pci_user_read_config_dword(ptr noundef %1, i32 noundef %pos, ptr noundef nonnull %tmp_val.i) #12
  br label %vfio_user_config_read.exit

vfio_user_config_read.exit:                       ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call6.i, %sw.bb5.i ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  %16 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmp_val.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #12
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %ret.0.i
  br label %20

20:                                               ; preds = %vfio_user_config_read.exit, %vfio_user_config_read.exit.thread
  %21 = phi i32 [ -22, %vfio_user_config_read.exit.thread ], [ %spec.select, %vfio_user_config_read.exit ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfio_virt_config_read(ptr nocapture noundef readonly %vdev, i32 noundef %pos, i32 noundef returned %count, ptr nocapture noundef readnone %perm, i32 noundef %offset, ptr nocapture noundef writeonly %val) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vconfig, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %pos
  %2 = call ptr @memcpy(ptr %val, ptr %add.ptr, i32 %count)
  ret i32 %count
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfio_virt_config_write(ptr nocapture noundef readonly %vdev, i32 noundef %pos, i32 noundef returned %count, ptr nocapture noundef readnone %perm, i32 noundef %offset, i32 noundef %val) #10 align 64 {
entry:
  %val.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %val.addr, align 4
  %vconfig = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 5
  %1 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vconfig, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %pos
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %val.addr, i32 %count)
  ret i32 %count
}

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
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !59, !61}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 1737, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vfio_config_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vfio_config_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @cap_perms, !9, !"cap_perms", i1 false, i1 false}
!9 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 316, i32 25}
!10 = !{ptr @ecap_perms, !11, !"ecap_perms", i1 false, i1 false}
!11 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 319, i32 25}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 426, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vfio_bar_restore._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @vfio_bar_restore._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @pci_cap_length, !19, !"pci_cap_length", i1 false, i1 false}
!19 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 43, i32 17}
!20 = !{ptr @pci_ext_cap_length, !21, !"pci_ext_cap_length", i1 false, i1 false}
!21 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 71, i32 18}
!22 = !{ptr @known_bogus_vf_intx_pin, !23, !"known_bogus_vf_intx_pin", i1 false, i1 false}
!23 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 1654, i32 35}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 1515, i32 4}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vfio_cap_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @vfio_cap_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 1527, i32 4}
!31 = !{ptr @vfio_cap_init._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vfio_cap_init._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 1334, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @vfio_cap_len._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @vfio_cap_len._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 1589, i32 4}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vfio_ecap_init._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @vfio_ecap_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 1612, i32 4}
!45 = !{ptr @vfio_ecap_init._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @vfio_ecap_init._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 1408, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vfio_ext_cap_len._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @vfio_ext_cap_len._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @unassigned_perms, !53, !"unassigned_perms", i1 false, i1 false}
!53 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 328, i32 25}
!54 = !{ptr @virt_perms, !55, !"virt_perms", i1 false, i1 false}
!55 = !{!"../drivers/vfio/pci/vfio_pci_config.c", i32 333, i32 25}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!58 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
!74 = !{!"auto-init"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2152215372, i64 2152215397}
!78 = !{i64 4710927}
!79 = !{i64 4711124}
!80 = !{i64 2152196357}
!81 = !{i64 2152216053, i64 2152216078}
