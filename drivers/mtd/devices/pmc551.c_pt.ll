; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/pmc551.c_pt.bc'
source_filename = "../drivers/mtd/devices/pmc551.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mypriv = type { ptr, ptr, i32, i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.75, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.75 = type { ptr }
%struct.erase_info = type { i64, i64, i64 }

@__UNIQUE_ID_file242 = internal constant [39 x i8] c"pmc551.file=drivers/mtd/devices/pmc551\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [19 x i8] c"pmc551.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [49 x i8] c"pmc551.author=Mark Ferrell <mferrell@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [90 x i8] c"pmc551.description=Ramix PMC551 PCI Mezzanine Ram Driver. (C) 1999,2000 Nortel Networks.\0A\00", section ".modinfo", align 1
@__param_str_msize = internal constant [13 x i8] c"pmc551.msize\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_msize = internal constant %struct.kernel_param { ptr @__param_str_msize, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @msize } }, section "__param", align 4
@__UNIQUE_ID_msizetype246 = internal constant [26 x i8] c"pmc551.parmtype=msize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msize247 = internal constant [48 x i8] c"pmc551.parm=msize:memory size in MiB [1 - 1024]\00", section ".modinfo", align 1
@__param_str_asize = internal constant [13 x i8] c"pmc551.asize\00", align 1
@asize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_asize = internal constant %struct.kernel_param { ptr @__param_str_asize, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @asize } }, section "__param", align 4
@__UNIQUE_ID_asizetype248 = internal constant [26 x i8] c"pmc551.parmtype=asize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_asize249 = internal constant [61 x i8] c"pmc551.parm=asize:aperture size, must be <= memsize [1-1024]\00", section ".modinfo", align 1
@pmc551list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cleanup_pmc551._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017pmc551: unmapping %dMiB starting at 0x%p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cleanup_pmc551\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/devices/pmc551.c\00", [35 x i8] zeroinitializer }, align 32
@cleanup_pmc551._entry_ptr = internal global ptr @cleanup_pmc551._entry, section ".printk_index", align 4
@cleanup_pmc551._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015pmc551: %d pmc551 devices unloaded\0A\00", [58 x i8] zeroinitializer }, align 32
@cleanup_pmc551._entry_ptr.5 = internal global ptr @cleanup_pmc551._entry.3, section ".printk_index", align 4
@__initcall__kmod_pmc551__250_846_init_pmc5516 = internal global ptr @init_pmc551, section ".initcall6.init", align 4
@__exitcall_cleanup_pmc551 = internal global ptr @cleanup_pmc551, section ".exitcall.exit", align 4
@init_pmc551._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015pmc551: Invalid memory size [%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_pmc551\00", [20 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr = internal global ptr @init_pmc551._entry, section ".printk_index", align 4
@init_pmc551._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015pmc551: Invalid aperture size [%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.10 = internal global ptr @init_pmc551._entry.8, section ".printk_index", align 4
@init_pmc551._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016Ramix PMC551 PCI Mezzanine Ram Driver. (C) 1999,2000 Nortel Networks.\0A\00", [55 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.13 = internal global ptr @init_pmc551._entry.11, section ".printk_index", align 4
@init_pmc551._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015pmc551: Found PCI V370PDC at 0x%llx\0A\00", [57 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.16 = internal global ptr @init_pmc551._entry.14, section ".printk_index", align 4
@init_pmc551._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015pmc551: Cannot init SDRAM\0A\00", [35 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.19 = internal global ptr @init_pmc551._entry.17, section ".printk_index", align 4
@init_pmc551._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015pmc551: Using specified memory size 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.22 = internal global ptr @init_pmc551._entry.20, section ".printk_index", align 4
@init_pmc551._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.2, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015pmc551: reducing aperture size to fit %dM\0A\00", [51 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.25 = internal global ptr @init_pmc551._entry.23, section ".printk_index", align 4
@init_pmc551._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.2, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015pmc551: Using existing aperture size %dM\0A\00", [52 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.28 = internal global ptr @init_pmc551._entry.26, section ".printk_index", align 4
@init_pmc551._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.7, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015pmc551: Using specified aperture size %dM\0A\00", [51 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.31 = internal global ptr @init_pmc551._entry.29, section ".printk_index", align 4
@init_pmc551._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.7, ptr @.str.2, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015pmc551: Unable to map IO space\0A\00", [62 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.34 = internal global ptr @init_pmc551._entry.32, section ".printk_index", align 4
@init_pmc551._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.7, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017pmc551: setting aperture to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.37 = internal global ptr @init_pmc551._entry.35, section ".printk_index", align 4
@init_pmc551._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.7, ptr @.str.2, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017pmc551: aperture set to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.40 = internal global ptr @init_pmc551._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PMC551 RAM board\00", [47 x i8] zeroinitializer }, align 32
@init_pmc551._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.7, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015pmc551: Failed to register new device\0A\00", [55 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.44 = internal global ptr @init_pmc551._entry.42, section ".printk_index", align 4
@init_pmc551._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.7, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015Registered pmc551 memory device.\0A\00", [60 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.47 = internal global ptr @init_pmc551._entry.45, section ".printk_index", align 4
@init_pmc551._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.7, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015Mapped %dMiB of memory from 0x%p to 0x%p\0A\00", [52 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.50 = internal global ptr @init_pmc551._entry.48, section ".printk_index", align 4
@init_pmc551._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.7, ptr @.str.2, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015Total memory is %d%sB\0A\00", [39 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.53 = internal global ptr @init_pmc551._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Ki\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Mi\00", [29 x i8] zeroinitializer }, align 32
@init_pmc551._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.7, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\015pmc551: not detected\0A\00", [40 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.59 = internal global ptr @init_pmc551._entry.57, section ".printk_index", align 4
@init_pmc551._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.7, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015pmc551: %d pmc551 devices loaded\0A\00", [60 x i8] zeroinitializer }, align 32
@init_pmc551._entry_ptr.62 = internal global ptr @init_pmc551._entry.60, section ".printk_index", align 4
@fixup_pmc551._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017pmc551: %d%sB (0x%x) of %sprefetchable memory at 0x%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fixup_pmc551\00", [19 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry_ptr = internal global ptr @fixup_pmc551._entry, section ".printk_index", align 4
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"non-\00", [27 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.64, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\017pmc551: DRAM_BLK0 Flags: %s,%s\0Apmc551: DRAM_BLK0 Size: %d at %d\0Apmc551: DRAM_BLK0 Row MUX: %d, Col MUX: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry_ptr.68 = internal global ptr @fixup_pmc551._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RW\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RO\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.64, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\017pmc551: DRAM_BLK1 Flags: %s,%s\0Apmc551: DRAM_BLK1 Size: %d at %d\0Apmc551: DRAM_BLK1 Row MUX: %d, Col MUX: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry_ptr.75 = internal global ptr @fixup_pmc551._entry.73, section ".printk_index", align 4
@fixup_pmc551._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.64, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\017pmc551: DRAM_BLK2 Flags: %s,%s\0Apmc551: DRAM_BLK2 Size: %d at %d\0Apmc551: DRAM_BLK2 Row MUX: %d, Col MUX: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry_ptr.78 = internal global ptr @fixup_pmc551._entry.76, section ".printk_index", align 4
@fixup_pmc551._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.64, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\017pmc551: DRAM_BLK3 Flags: %s,%s\0Apmc551: DRAM_BLK3 Size: %d at %d\0Apmc551: DRAM_BLK3 Row MUX: %d, Col MUX: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry_ptr.81 = internal global ptr @fixup_pmc551._entry.79, section ".printk_index", align 4
@fixup_pmc551._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.64, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017pmc551: Memory Access %s\0A\00", [36 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry_ptr.84 = internal global ptr @fixup_pmc551._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.64, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017pmc551: I/O Access %s\0A\00", [39 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry_ptr.89 = internal global ptr @fixup_pmc551._entry.87, section ".printk_index", align 4
@fixup_pmc551._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.64, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017pmc551: Devsel %s\0A\00", [43 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry_ptr.92 = internal global ptr @fixup_pmc551._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Fast\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Medium\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Slow\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.64, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017pmc551: %sFast Back-to-Back\0A\00", [33 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry_ptr.99 = internal global ptr @fixup_pmc551._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Not \00", [27 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.64, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [157 x i8], [35 x i8] } { [157 x i8] c"\017pmc551: EEPROM is under %s control\0Apmc551: System Control Register is %slocked to PCI access\0Apmc551: System Control Register is %slocked to EEPROM access\0A\00", [35 x i8] zeroinitializer }, align 32
@fixup_pmc551._entry_ptr.103 = internal global ptr @fixup_pmc551._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"software\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hardware\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pmc551_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017pmc551_erase(pos:%ld, len:%ld)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmc551_erase\00", [19 x i8] zeroinitializer }, align 32
@pmc551_erase._entry_ptr = internal global ptr @pmc551_erase._entry, section ".printk_index", align 4
@pmc551_erase._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017pmc551_erase() soff_hi: %ld, eoff_hi: %ld\0A\00", [51 x i8] zeroinitializer }, align 32
@pmc551_erase._entry_ptr.111 = internal global ptr @pmc551_erase._entry.109, section ".printk_index", align 4
@pmc551_erase._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017pmc551_erase() done\0A\00", [41 x i8] zeroinitializer }, align 32
@pmc551_erase._entry_ptr.114 = internal global ptr @pmc551_erase._entry.112, section ".printk_index", align 4
@pmc551_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017pmc551_read(pos:%ld, len:%ld) asize: %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmc551_read\00", [20 x i8] zeroinitializer }, align 32
@pmc551_read._entry_ptr = internal global ptr @pmc551_read._entry, section ".printk_index", align 4
@pmc551_read._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017pmc551_read() soff_hi: %ld, eoff_hi: %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@pmc551_read._entry_ptr.119 = internal global ptr @pmc551_read._entry.117, section ".printk_index", align 4
@pmc551_read._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017pmc551_read() done\0A\00", [42 x i8] zeroinitializer }, align 32
@pmc551_read._entry_ptr.122 = internal global ptr @pmc551_read._entry.120, section ".printk_index", align 4
@pmc551_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017pmc551_write(pos:%ld, len:%ld) asize:%ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmc551_write\00", [19 x i8] zeroinitializer }, align 32
@pmc551_write._entry_ptr = internal global ptr @pmc551_write._entry, section ".printk_index", align 4
@pmc551_write._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017pmc551_write() soff_hi: %ld, eoff_hi: %ld\0A\00", [51 x i8] zeroinitializer }, align 32
@pmc551_write._entry_ptr.127 = internal global ptr @pmc551_write._entry.125, section ".printk_index", align 4
@pmc551_write._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017pmc551_write() done\0A\00", [41 x i8] zeroinitializer }, align 32
@pmc551_write._entry_ptr.130 = internal global ptr @pmc551_write._entry.128, section ".printk_index", align 4
@pmc551_point._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017pmc551_point(%ld, %ld)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmc551_point\00", [19 x i8] zeroinitializer }, align 32
@pmc551_point._entry_ptr = internal global ptr @pmc551_point._entry, section ".printk_index", align 4
@pmc551_unpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017pmc551_unpoint()\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pmc551_unpoint\00", [17 x i8] zeroinitializer }, align 32
@pmc551_unpoint._entry_ptr = internal global ptr @pmc551_unpoint._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 512]
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"msize\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 640, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"asize\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 641, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant [11 x i8] c"pmc551list\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 130, i32 25 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 831, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 843, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 662, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 671, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 677, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 690, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 702, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 712, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 731, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 735, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 739, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 746, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 752, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 764, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 776, i32 15 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 782, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 792, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 793, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 796, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 809, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 812, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 554, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 565, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 575, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 585, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 595, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 605, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 607, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 611, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 616, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 620, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 145, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 166, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 183, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 234, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 255, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 273, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 290, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 311, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 329, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 197, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.472 = private constant [32 x i8] c"../drivers/mtd/devices/pmc551.c\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.472, i32 218, i32 2 }
@llvm.compiler.used = appending global [167 x ptr] [ptr @__UNIQUE_ID_asize249, ptr @__UNIQUE_ID_asizetype248, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__UNIQUE_ID_msize247, ptr @__UNIQUE_ID_msizetype246, ptr @__exitcall_cleanup_pmc551, ptr @__initcall__kmod_pmc551__250_846_init_pmc5516, ptr @__param_asize, ptr @__param_msize, ptr @cleanup_pmc551, ptr @cleanup_pmc551._entry, ptr @cleanup_pmc551._entry.3, ptr @cleanup_pmc551._entry_ptr, ptr @cleanup_pmc551._entry_ptr.5, ptr @fixup_pmc551._entry, ptr @fixup_pmc551._entry.101, ptr @fixup_pmc551._entry.66, ptr @fixup_pmc551._entry.73, ptr @fixup_pmc551._entry.76, ptr @fixup_pmc551._entry.79, ptr @fixup_pmc551._entry.82, ptr @fixup_pmc551._entry.87, ptr @fixup_pmc551._entry.90, ptr @fixup_pmc551._entry.97, ptr @fixup_pmc551._entry_ptr, ptr @fixup_pmc551._entry_ptr.103, ptr @fixup_pmc551._entry_ptr.68, ptr @fixup_pmc551._entry_ptr.75, ptr @fixup_pmc551._entry_ptr.78, ptr @fixup_pmc551._entry_ptr.81, ptr @fixup_pmc551._entry_ptr.84, ptr @fixup_pmc551._entry_ptr.89, ptr @fixup_pmc551._entry_ptr.92, ptr @fixup_pmc551._entry_ptr.99, ptr @init_pmc551._entry, ptr @init_pmc551._entry.11, ptr @init_pmc551._entry.14, ptr @init_pmc551._entry.17, ptr @init_pmc551._entry.20, ptr @init_pmc551._entry.23, ptr @init_pmc551._entry.26, ptr @init_pmc551._entry.29, ptr @init_pmc551._entry.32, ptr @init_pmc551._entry.35, ptr @init_pmc551._entry.38, ptr @init_pmc551._entry.42, ptr @init_pmc551._entry.45, ptr @init_pmc551._entry.48, ptr @init_pmc551._entry.51, ptr @init_pmc551._entry.57, ptr @init_pmc551._entry.60, ptr @init_pmc551._entry.8, ptr @init_pmc551._entry_ptr, ptr @init_pmc551._entry_ptr.10, ptr @init_pmc551._entry_ptr.13, ptr @init_pmc551._entry_ptr.16, ptr @init_pmc551._entry_ptr.19, ptr @init_pmc551._entry_ptr.22, ptr @init_pmc551._entry_ptr.25, ptr @init_pmc551._entry_ptr.28, ptr @init_pmc551._entry_ptr.31, ptr @init_pmc551._entry_ptr.34, ptr @init_pmc551._entry_ptr.37, ptr @init_pmc551._entry_ptr.40, ptr @init_pmc551._entry_ptr.44, ptr @init_pmc551._entry_ptr.47, ptr @init_pmc551._entry_ptr.50, ptr @init_pmc551._entry_ptr.53, ptr @init_pmc551._entry_ptr.59, ptr @init_pmc551._entry_ptr.62, ptr @pmc551_erase._entry, ptr @pmc551_erase._entry.109, ptr @pmc551_erase._entry.112, ptr @pmc551_erase._entry_ptr, ptr @pmc551_erase._entry_ptr.111, ptr @pmc551_erase._entry_ptr.114, ptr @pmc551_point._entry, ptr @pmc551_point._entry_ptr, ptr @pmc551_read._entry, ptr @pmc551_read._entry.117, ptr @pmc551_read._entry.120, ptr @pmc551_read._entry_ptr, ptr @pmc551_read._entry_ptr.119, ptr @pmc551_read._entry_ptr.122, ptr @pmc551_unpoint._entry, ptr @pmc551_unpoint._entry_ptr, ptr @pmc551_write._entry, ptr @pmc551_write._entry.125, ptr @pmc551_write._entry.128, ptr @pmc551_write._entry_ptr, ptr @pmc551_write._entry_ptr.127, ptr @pmc551_write._entry_ptr.130, ptr @msize, ptr @asize, ptr @pmc551list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleanup_pmc551._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleanup_pmc551._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmc551._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_pmc551._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_pmc551._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_pmc551._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_pmc551._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_pmc551._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_pmc551._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_pmc551._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_pmc551._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_pmc551._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_pmc551._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 157, i32 192, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_erase._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_erase._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_read._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_read._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_write._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_write._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_point._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc551_unpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_pmc551() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @pmc551list, align 4
  %tobool.not24 = icmp eq ptr %0, null
  br i1 %tobool.not24, label %entry.do.end10_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %18, %if.end.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %found.025 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %nextpmc551 = getelementptr inbounds %struct.mypriv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %nextpmc551 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nextpmc551, align 4
  store ptr %5, ptr @pmc551list, align 4
  %start = getelementptr inbounds %struct.mypriv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %do.end

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %asize = getelementptr inbounds %struct.mypriv, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asize, align 4
  %shr = lshr i32 %9, 20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %shr, ptr noundef nonnull %7) #10
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %start, align 4
  tail call void @pci_iounmap(ptr noundef %11, ptr noundef %13) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  tail call void @pci_dev_put(ptr noundef %15) #7
  %16 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv1, align 8
  tail call void @kfree(ptr noundef %17) #7
  %call7 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %1) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  %inc = add i32 %found.025, 1
  %18 = load ptr, ptr @pmc551list, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end.do.end10_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end10:                                         ; preds = %if.end.do.end10_crit_edge, %entry.do.end10_crit_edge
  %found.0.lcssa = phi i32 [ 0, %entry.do.end10_crit_edge ], [ %inc, %if.end.do.end10_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %found.0.lcssa) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_pmc551() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @msize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %1 = tail call i32 @llvm.cttz.i32(i32 %0, i1 true), !range !231
  %shl1 = shl i32 1048576, %1
  store i32 %shl1, ptr @msize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shl1)
  %cmp = icmp sgt i32 %shl1, 1073741824
  br i1 %cmp, label %do.end, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %shl1) #10
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %2 = load i32, ptr @asize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.end3.do.end22_crit_edge, label %if.then5

if.end3.do.end22_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

if.then5:                                         ; preds = %if.end3
  %3 = tail call i32 @llvm.cttz.i32(i32 %2, i1 true), !range !231
  %shl10 = shl i32 1048576, %3
  store i32 %shl10, ptr @asize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shl10)
  %cmp11 = icmp sgt i32 %shl10, 1073741824
  br i1 %cmp11, label %do.end15, label %if.then5.do.end22_crit_edge

if.then5.do.end22_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end15:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %shl10) #10
  br label %cleanup

do.end22:                                         ; preds = %if.then5.do.end22_crit_edge, %if.end3.do.end22_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  %call25288 = tail call ptr @pci_get_device(i32 noundef 4528, i32 noundef 512, ptr noundef null) #7
  %cmp26289 = icmp eq ptr %call25288, null
  br i1 %cmp26289, label %do.end22.for.end_crit_edge, label %do.end22.do.end31_crit_edge

do.end22.do.end31_crit_edge:                      ; preds = %do.end22
  br label %do.end31

do.end22.for.end_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end31:                                         ; preds = %cond.end172.do.end31_crit_edge, %do.end22.do.end31_crit_edge
  %call25291 = phi ptr [ %call25, %cond.end172.do.end31_crit_edge ], [ %call25288, %do.end22.do.end31_crit_edge ]
  %found.0290 = phi i32 [ %inc, %cond.end172.do.end31_crit_edge ], [ 0, %do.end22.do.end31_crit_edge ]
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call25291, i32 0, i32 47
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource, align 8
  %conv = zext i32 %5 to i64
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i64 noundef %conv) #10
  %call34 = tail call fastcc i32 @fixup_pmc551(ptr noundef nonnull %call25291) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %do.end40, label %if.end43

do.end40:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %for.end

if.end43:                                         ; preds = %do.end31
  %6 = load i32, ptr @msize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool44.not = icmp eq i32 %6, 0
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %6) #10
  br label %if.end51

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %call34, ptr @msize, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then45
  %length.0 = phi i32 [ %6, %if.then45 ], [ %call34, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1408) #12
  %tobool53.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool53.not, label %if.end51.for.end_crit_edge, label %if.end55

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end55:                                         ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i268 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 24) #12
  %tobool57.not = icmp eq ptr %call7.i.i268, null
  br i1 %tobool57.not, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %for.end

if.end59:                                         ; preds = %if.end55
  %priv60 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 54
  %9 = ptrtoint ptr %priv60 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i268, ptr %priv60, align 8
  %10 = ptrtoint ptr %call7.i.i268 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call25291, ptr %call7.i.i268, align 8
  %11 = load i32, ptr @asize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %length.0)
  %cmp61 = icmp sgt i32 %11, %length.0
  br i1 %cmp61, label %do.end66, label %if.else69

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %shr = ashr i32 %length.0, 20
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %shr) #10
  store i32 %length.0, ptr @asize, align 4
  br label %if.end91

if.else69:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp70 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %length.0)
  %cmp72 = icmp eq i32 %11, %length.0
  %or.cond = select i1 %cmp70, i1 true, i1 %cmp72
  br i1 %or.cond, label %do.end77, label %do.end85

do.end77:                                         ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #9
  %shr79 = ashr i32 %length.0, 20
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %shr79) #10
  store i32 %length.0, ptr @asize, align 4
  br label %if.end91

do.end85:                                         ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #9
  %shr87 = ashr i32 %11, 20
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %shr87) #10
  %12 = load i32, ptr @asize, align 4
  br label %if.end91

if.end91:                                         ; preds = %do.end85, %do.end77, %do.end66
  %length.0.sink = phi i32 [ %length.0, %do.end77 ], [ %12, %do.end85 ], [ %length.0, %do.end66 ]
  %asize81 = getelementptr inbounds %struct.mypriv, ptr %call7.i.i268, i32 0, i32 4
  %13 = ptrtoint ptr %asize81 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %length.0.sink, ptr %asize81, align 8
  %asize92 = getelementptr inbounds %struct.mypriv, ptr %call7.i.i268, i32 0, i32 4
  %call93 = tail call ptr @pci_iomap(ptr noundef nonnull %call25291, i32 noundef 0, i32 noundef %length.0.sink) #7
  %start94 = getelementptr inbounds %struct.mypriv, ptr %call7.i.i268, i32 0, i32 1
  %14 = ptrtoint ptr %start94 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call93, ptr %start94, align 4
  %tobool96.not = icmp eq ptr %call93, null
  br i1 %tobool96.not, label %do.end100, label %do.end107

do.end100:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %priv60.le320 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 54
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  %15 = ptrtoint ptr %priv60.le320 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv60.le320, align 8
  tail call void @kfree(ptr noundef %16) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %for.end

do.end107:                                        ; preds = %if.end91
  %17 = ptrtoint ptr %asize92 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %asize92, align 8
  %shr110 = lshr i32 %18, 20
  %19 = tail call i32 @llvm.cttz.i32(i32 %shr110, i1 true), !range !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %18)
  %iszero111 = icmp ult i32 %18, 1048576
  %sub113 = select i1 %iszero111, i32 -1, i32 %19
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %sub113) #10
  %20 = ptrtoint ptr %asize92 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %asize92, align 8
  %shr116 = lshr i32 %21, 20
  %22 = tail call i32 @llvm.cttz.i32(i32 %shr116, i1 true), !range !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %21)
  %iszero117 = icmp ult i32 %21, 1048576
  %.op = shl nuw nsw i32 %22, 4
  %.op.op = or i32 %.op, 3
  %or = select i1 %iszero117, i32 -13, i32 %.op.op
  %base_map0 = getelementptr inbounds %struct.mypriv, ptr %call7.i.i268, i32 0, i32 2
  %23 = ptrtoint ptr %base_map0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %base_map0, align 8
  %curr_map0 = getelementptr inbounds %struct.mypriv, ptr %call7.i.i268, i32 0, i32 3
  %24 = ptrtoint ptr %curr_map0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %curr_map0, align 4
  %25 = ptrtoint ptr %call7.i.i268 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i268, align 8
  %call124 = tail call i32 @pci_write_config_dword(ptr noundef %26, i32 noundef 80, i32 noundef %or) #7
  %27 = ptrtoint ptr %base_map0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base_map0, align 8
  %and = lshr i32 %28, 4
  %shr130 = and i32 %and, 15
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %shr130) #10
  %29 = load i32, ptr @msize, align 4
  %conv132 = sext i32 %29 to i64
  %size = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv132, ptr %size, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7168, ptr %flags, align 4
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 21
  %32 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @pmc551_erase, ptr %_erase, align 8
  %_read = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 24
  %33 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @pmc551_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 25
  %34 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pmc551_write, ptr %_write, align 8
  %_point = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 22
  %35 = ptrtoint ptr %_point to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pmc551_point, ptr %_point, align 4
  %_unpoint = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 23
  %36 = ptrtoint ptr %_unpoint to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pmc551_unpoint, ptr %_unpoint, align 8
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %call7.i.i, align 8
  %name = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 13
  %38 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.41, ptr %name, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 65536, ptr %erasesize, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %writesize, align 4
  %owner = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 55
  %41 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %owner, align 4
  %call133 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end143, label %do.end138

do.end138:                                        ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  %priv60.le = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 54
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #10
  %42 = ptrtoint ptr %start94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %start94, align 4
  tail call void @pci_iounmap(ptr noundef nonnull %call25291, ptr noundef %43) #7
  %44 = ptrtoint ptr %priv60.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv60.le, align 8
  tail call void @kfree(ptr noundef %45) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %for.end

if.end143:                                        ; preds = %do.end107
  %call144 = tail call ptr @pci_dev_get(ptr noundef nonnull %call25291) #7
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #10
  %46 = ptrtoint ptr %asize92 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %asize92, align 8
  %shr155 = lshr i32 %47, 20
  %48 = ptrtoint ptr %start94 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %start94, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 %47
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %shr155, ptr noundef %49, ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %length.0)
  %cmp164 = icmp slt i32 %length.0, 1024
  br i1 %cmp164, label %if.end143.cond.end172_crit_edge, label %cond.false

if.end143.cond.end172_crit_edge:                  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end172

cond.false:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %length.0)
  %cmp166 = icmp ult i32 %length.0, 1048576
  br i1 %cmp166, label %cond.true168, label %cond.false170

cond.true168:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  %shr169269 = lshr i32 %length.0, 10
  br label %cond.end172

cond.false170:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  %shr171270 = lshr i32 %length.0, 20
  br label %cond.end172

cond.end172:                                      ; preds = %cond.false170, %cond.true168, %if.end143.cond.end172_crit_edge
  %cond173 = phi i32 [ %shr169269, %cond.true168 ], [ %shr171270, %cond.false170 ], [ %length.0, %if.end143.cond.end172_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %length.0)
  %cmp178 = icmp slt i32 %length.0, 1048576
  %cond180 = select i1 %cmp178, ptr @.str.55, ptr @.str.56
  %cond182 = select i1 %cmp164, ptr @.str.54, ptr %cond180
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %cond173, ptr noundef nonnull %cond182) #10
  %50 = load ptr, ptr @pmc551list, align 4
  %nextpmc551 = getelementptr inbounds %struct.mypriv, ptr %call7.i.i268, i32 0, i32 5
  %51 = ptrtoint ptr %nextpmc551 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %nextpmc551, align 4
  store ptr %call7.i.i, ptr @pmc551list, align 4
  %inc = add i32 %found.0290, 1
  %call25 = tail call ptr @pci_get_device(i32 noundef 4528, i32 noundef 512, ptr noundef nonnull %call25291) #7
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %cond.end172.for.end_crit_edge, label %cond.end172.do.end31_crit_edge

cond.end172.do.end31_crit_edge:                   ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

cond.end172.for.end_crit_edge:                    ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cond.end172.for.end_crit_edge, %do.end138, %do.end100, %if.then58, %if.end51.for.end_crit_edge, %do.end40, %do.end22.for.end_crit_edge
  %found.0280 = phi i32 [ %found.0290, %do.end138 ], [ %found.0290, %do.end100 ], [ %found.0290, %if.then58 ], [ %found.0290, %do.end40 ], [ 0, %do.end22.for.end_crit_edge ], [ %inc, %cond.end172.for.end_crit_edge ], [ %found.0290, %if.end51.for.end_crit_edge ]
  %call25275 = phi ptr [ %call25291, %do.end138 ], [ %call25291, %do.end100 ], [ %call25291, %if.then58 ], [ %call25291, %do.end40 ], [ null, %do.end22.for.end_crit_edge ], [ null, %cond.end172.for.end_crit_edge ], [ %call25291, %if.end51.for.end_crit_edge ]
  tail call void @pci_dev_put(ptr noundef %call25275) #7
  %52 = load ptr, ptr @pmc551list, align 4
  %tobool184.not = icmp eq ptr %52, null
  br i1 %tobool184.not, label %do.end188, label %do.end194

do.end188:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #10
  br label %cleanup

do.end194:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %found.0280) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end194, %do.end188, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15 ], [ 0, %do.end194 ], [ -19, %do.end188 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fixup_pmc551(ptr noundef %dev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %dram_data = alloca i32, align 4
  %dcmd = alloca i32, align 4
  %cfg = alloca i32, align 4
  %cmd = alloca i16, align 2
  %bcmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dram_data) #7
  %0 = ptrtoint ptr %dram_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dram_data, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcmd) #7
  %1 = ptrtoint ptr %dcmd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dcmd, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg) #7
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cfg, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #7
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %cmd, align 2, !annotation !232
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bcmd) #7
  %4 = ptrtoint ptr %bcmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %bcmd, align 1, !annotation !232
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @pci_write_config_byte(ptr noundef nonnull %dev, i32 noundef 120, i8 noundef zeroext -91) #7
  %call1 = call i32 @pci_read_config_byte(ptr noundef nonnull %dev, i32 noundef 120, ptr noundef nonnull %bcmd) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0421 = phi i16 [ 0, %if.end ], [ %inc19, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %bcmd to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bcmd, align 1
  %7 = and i8 %6, 127
  store i8 %7, ptr %bcmd, align 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body
  %counter.1419 = phi i8 [ 0, %for.body ], [ %inc, %while.body.while.body_crit_edge ]
  %inc = add nuw nsw i8 %counter.1419, 1
  %8 = ptrtoint ptr %bcmd to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bcmd, align 1
  %call8 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 120, i8 noundef zeroext %9) #7
  %cmp6 = icmp ult i8 %counter.1419, 99
  br i1 %cmp6, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  %10 = ptrtoint ptr %bcmd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bcmd, align 1
  %12 = or i8 %11, -128
  store i8 %12, ptr %bcmd, align 1
  br label %while.body16

while.body16:                                     ; preds = %while.body16.while.body16_crit_edge, %while.end
  %inc12420 = phi i8 [ 1, %while.end ], [ %inc12, %while.body16.while.body16_crit_edge ]
  %13 = ptrtoint ptr %bcmd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bcmd, align 1
  %call17 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 120, i8 noundef zeroext %14) #7
  %inc12 = add nuw nsw i8 %inc12420, 1
  %cmp14 = icmp ult i8 %inc12420, 100
  br i1 %cmp14, label %while.body16.while.body16_crit_edge, label %for.inc

while.body16.while.body16_crit_edge:              ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body16

for.inc:                                          ; preds = %while.body16
  %inc19 = add nuw nsw i16 %i.0421, 1
  %cmp = icmp ult i16 %i.0421, 9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %15 = ptrtoint ptr %bcmd to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bcmd, align 1
  %17 = or i8 %16, 96
  store i8 %17, ptr %bcmd, align 1
  %call23 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 120, i8 noundef zeroext %17) #7
  %call24 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %cmd) #7
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cmd, align 2
  %20 = and i16 %19, -4
  %call28 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext %20) #7
  %call29 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 80, ptr noundef nonnull %dcmd) #7
  %21 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dcmd, align 4
  %or31 = or i32 %22, 3
  %call32 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 80, i32 noundef %or31) #7
  %call33 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 16, ptr noundef nonnull %cfg) #7
  %call34 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 104, ptr noundef nonnull %dram_data) #7
  %23 = ptrtoint ptr %dram_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dram_data, align 4
  %shr = lshr i32 %24, 4
  %and35 = and i32 %shr, 15
  %shl = shl i32 524288, %and35
  %and36 = and i32 %24, -32513
  %or39 = or i32 %and36, 22784
  store i32 %or39, ptr %dram_data, align 4
  %call40 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 104, i32 noundef %or39) #7
  %call41 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 108, ptr noundef nonnull %dram_data) #7
  %25 = ptrtoint ptr %dram_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dram_data, align 4
  %shr42 = lshr i32 %26, 4
  %and43 = and i32 %shr42, 15
  %shl44 = shl i32 524288, %and43
  %add = add i32 %shl44, %shl
  %and45 = and i32 %26, -32513
  %or48 = or i32 %and45, 22784
  store i32 %or48, ptr %dram_data, align 4
  %call49 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 108, i32 noundef %or48) #7
  %call50 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 112, ptr noundef nonnull %dram_data) #7
  %27 = ptrtoint ptr %dram_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dram_data, align 4
  %shr51 = lshr i32 %28, 4
  %and52 = and i32 %shr51, 15
  %shl53 = shl i32 524288, %and52
  %add54 = add i32 %add, %shl53
  %and55 = and i32 %28, -32513
  %or58 = or i32 %and55, 22784
  store i32 %or58, ptr %dram_data, align 4
  %call59 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 112, i32 noundef %or58) #7
  %call60 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 116, ptr noundef nonnull %dram_data) #7
  %29 = ptrtoint ptr %dram_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dram_data, align 4
  %shr61 = lshr i32 %30, 4
  %and62 = and i32 %shr61, 15
  %shl63 = shl i32 524288, %and62
  %add64 = add i32 %add54, %shl63
  %and65 = and i32 %30, -32513
  %or68 = or i32 %and65, 22784
  store i32 %or68, ptr %dram_data, align 4
  %call69 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 116, i32 noundef %or68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add64)
  %cmp71 = icmp eq i32 %add64, 0
  br i1 %cmp71, label %for.end.cleanup_crit_edge, label %if.end74

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74:                                         ; preds = %for.end
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cfg, align 4
  %and75 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76.not = icmp eq i32 %and75, 0
  br i1 %cmp76.not, label %do.end, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end74
  %call80 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 96, i16 noundef zeroext 1024) #7
  %call81 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 98, i16 noundef zeroext 191) #7
  %call82 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 98, ptr noundef nonnull %cmd) #7
  br label %for.body96

for.body96:                                       ; preds = %for.inc111.for.body96_crit_edge, %do.end
  %i.1422 = phi i16 [ 1, %do.end ], [ %inc112, %for.inc111.for.body96_crit_edge ]
  %call97 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 98, i16 noundef zeroext 223) #7
  br label %do.body98

do.body98:                                        ; preds = %do.cond106.do.body98_crit_edge, %for.body96
  %counter.4 = phi i8 [ 0, %for.body96 ], [ %inc100, %do.cond106.do.body98_crit_edge ]
  %call99 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 98, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %counter.4)
  %cmp102 = icmp ugt i8 %counter.4, 100
  br i1 %cmp102, label %do.body98.for.inc111_crit_edge, label %do.cond106

do.body98.for.inc111_crit_edge:                   ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc111

do.cond106:                                       ; preds = %do.body98
  %inc100 = add nuw nsw i8 %counter.4, 1
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cmd, align 2
  %35 = and i16 %34, 1
  %tobool109.not = icmp eq i16 %35, 0
  br i1 %tobool109.not, label %do.cond106.for.inc111_crit_edge, label %do.cond106.do.body98_crit_edge

do.cond106.do.body98_crit_edge:                   ; preds = %do.cond106
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98

do.cond106.for.inc111_crit_edge:                  ; preds = %do.cond106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc111

for.inc111:                                       ; preds = %do.cond106.for.inc111_crit_edge, %do.body98.for.inc111_crit_edge
  %inc112 = add nuw nsw i16 %i.1422, 1
  %cmp94 = icmp ult i16 %i.1422, 8
  br i1 %cmp94, label %for.inc111.for.body96_crit_edge, label %for.end113

for.inc111.for.body96_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body96

for.end113:                                       ; preds = %for.inc111
  %call114 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 96, i16 noundef zeroext 32) #7
  %call115 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 98, i16 noundef zeroext 255) #7
  br label %do.body116

do.body116:                                       ; preds = %do.cond124.do.body116_crit_edge, %for.end113
  %counter.5 = phi i8 [ 0, %for.end113 ], [ %inc118, %do.cond124.do.body116_crit_edge ]
  %call117 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 98, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %counter.5)
  %cmp120 = icmp ugt i8 %counter.5, 100
  br i1 %cmp120, label %do.body116.do.end128_crit_edge, label %do.cond124

do.body116.do.end128_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end128

do.cond124:                                       ; preds = %do.body116
  %inc118 = add nuw nsw i8 %counter.5, 1
  %36 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cmd, align 2
  %38 = and i16 %37, 1
  %tobool127.not = icmp eq i16 %38, 0
  br i1 %tobool127.not, label %do.cond124.do.end128_crit_edge, label %do.cond124.do.body116_crit_edge

do.cond124.do.body116_crit_edge:                  ; preds = %do.cond124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116

do.cond124.do.end128_crit_edge:                   ; preds = %do.cond124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end128

do.end128:                                        ; preds = %do.cond124.do.end128_crit_edge, %do.body116.do.end128_crit_edge
  %call129 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 100, ptr noundef nonnull %dcmd) #7
  %39 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dcmd, align 4
  %or130 = or i32 %40, 33554432
  store i32 %or130, ptr %dcmd, align 4
  %call131 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 100, i32 noundef %or130) #7
  %call132 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 6, ptr noundef nonnull %cmd) #7
  %41 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cmd, align 2
  %43 = and i16 %42, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp135 = icmp eq i16 %43, 0
  br i1 %cmp135, label %if.then137, label %do.end128.if.end142_crit_edge

do.end128.if.end142_crit_edge:                    ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then137:                                       ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #9
  %or139 = or i16 %42, 512
  %44 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %or139, ptr %cmd, align 2
  %call141 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 6, i16 noundef zeroext %or139) #7
  br label %if.end142

if.end142:                                        ; preds = %if.then137, %do.end128.if.end142_crit_edge
  %45 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cmd, align 2
  %47 = and i16 %46, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp145.not = icmp eq i16 %47, 0
  br i1 %cmp145.not, label %if.end142.if.end152_crit_edge, label %if.then147

if.end142.if.end152_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then147:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %and149 = and i16 %46, -1537
  %48 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %and149, ptr %cmd, align 2
  %call151 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 6, i16 noundef zeroext %and149) #7
  br label %if.end152

if.end152:                                        ; preds = %if.then147, %if.end142.if.end152_crit_edge
  %call153 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %add64)
  %cmp160 = icmp ult i32 %add64, 1048576
  %cond167.v = select i1 %cmp160, i32 10, i32 20
  %cond167 = lshr i32 %add64, %cond167.v
  %cond174 = select i1 %cmp160, ptr @.str.55, ptr @.str.56
  %49 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dcmd, align 4
  %and177 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %cmp178 = icmp eq i32 %and177, 0
  %cond180 = select i1 %cmp178, ptr @.str.65, ptr @.str.54
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %51 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %resource, align 8
  %conv181 = zext i32 %52 to i64
  %call182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %cond167, ptr noundef nonnull %cond174, i32 noundef %add64, ptr noundef nonnull %cond180, i64 noundef %conv181) #10
  %call183 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 104, ptr noundef nonnull %dcmd) #7
  %53 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dcmd, align 4
  %and188 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %cmp189 = icmp eq i32 %and188, 0
  %cond191 = select i1 %cmp189, ptr @.str.69, ptr @.str.70
  %and192 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %cmp193 = icmp eq i32 %and192, 0
  %cond195 = select i1 %cmp193, ptr @.str.71, ptr @.str.72
  %shr196 = lshr i32 %54, 4
  %and197 = and i32 %shr196, 15
  %shl198 = shl i32 524288, %and197
  %shr199 = lshr i32 %54, 20
  %and200 = and i32 %shr199, 2047
  %shr201 = lshr i32 %54, 13
  %and202 = and i32 %shr201, 7
  %shr203 = lshr i32 %54, 9
  %and204 = and i32 %shr203, 15
  %call205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull %cond191, ptr noundef nonnull %cond195, i32 noundef %shl198, i32 noundef %and200, i32 noundef %and202, i32 noundef %and204) #10
  %call206 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 108, ptr noundef nonnull %dcmd) #7
  %55 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dcmd, align 4
  %and211 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %cmp212 = icmp eq i32 %and211, 0
  %cond214 = select i1 %cmp212, ptr @.str.69, ptr @.str.70
  %and215 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %cmp216 = icmp eq i32 %and215, 0
  %cond218 = select i1 %cmp216, ptr @.str.71, ptr @.str.72
  %shr219 = lshr i32 %56, 4
  %and220 = and i32 %shr219, 15
  %shl221 = shl i32 524288, %and220
  %shr222 = lshr i32 %56, 20
  %and223 = and i32 %shr222, 2047
  %shr224 = lshr i32 %56, 13
  %and225 = and i32 %shr224, 7
  %shr226 = lshr i32 %56, 9
  %and227 = and i32 %shr226, 15
  %call228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull %cond214, ptr noundef nonnull %cond218, i32 noundef %shl221, i32 noundef %and223, i32 noundef %and225, i32 noundef %and227) #10
  %call229 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 112, ptr noundef nonnull %dcmd) #7
  %57 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dcmd, align 4
  %and234 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %cmp235 = icmp eq i32 %and234, 0
  %cond237 = select i1 %cmp235, ptr @.str.69, ptr @.str.70
  %and238 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %cmp239 = icmp eq i32 %and238, 0
  %cond241 = select i1 %cmp239, ptr @.str.71, ptr @.str.72
  %shr242 = lshr i32 %58, 4
  %and243 = and i32 %shr242, 15
  %shl244 = shl i32 524288, %and243
  %shr245 = lshr i32 %58, 20
  %and246 = and i32 %shr245, 2047
  %shr247 = lshr i32 %58, 13
  %and248 = and i32 %shr247, 7
  %shr249 = lshr i32 %58, 9
  %and250 = and i32 %shr249, 15
  %call251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull %cond237, ptr noundef nonnull %cond241, i32 noundef %shl244, i32 noundef %and246, i32 noundef %and248, i32 noundef %and250) #10
  %call252 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 116, ptr noundef nonnull %dcmd) #7
  %59 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dcmd, align 4
  %and257 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %cmp258 = icmp eq i32 %and257, 0
  %cond260 = select i1 %cmp258, ptr @.str.69, ptr @.str.70
  %and261 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %cmp262 = icmp eq i32 %and261, 0
  %cond264 = select i1 %cmp262, ptr @.str.71, ptr @.str.72
  %shr265 = lshr i32 %60, 4
  %and266 = and i32 %shr265, 15
  %shl267 = shl i32 524288, %and266
  %shr268 = lshr i32 %60, 20
  %and269 = and i32 %shr268, 2047
  %shr270 = lshr i32 %60, 13
  %and271 = and i32 %shr270, 7
  %shr272 = lshr i32 %60, 9
  %and273 = and i32 %shr272, 15
  %call274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull %cond260, ptr noundef nonnull %cond264, i32 noundef %shl267, i32 noundef %and269, i32 noundef %and271, i32 noundef %and273) #10
  %call275 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %cmd) #7
  %61 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %cmd, align 2
  %63 = and i16 %62, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp282 = icmp eq i16 %63, 0
  %cond284 = select i1 %cmp282, ptr @.str.85, ptr @.str.86
  %call285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull %cond284) #10
  %64 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %cmd, align 2
  %66 = and i16 %65, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp292 = icmp eq i16 %66, 0
  %cond294 = select i1 %cmp292, ptr @.str.85, ptr @.str.86
  %call295 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull %cond294) #10
  %call296 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 6, ptr noundef nonnull %cmd) #7
  %67 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %cmd, align 2
  %69 = and i16 %68, 1536
  %trunc = trunc i16 %69 to i11
  %70 = zext i11 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i11 %trunc, label %cond.false312 [
    i11 0, label %if.end152.cond.end320_crit_edge
    i11 512, label %cond.end320.fold.split
  ]

if.end152.cond.end320_crit_edge:                  ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end320

cond.false312:                                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %69)
  %cmp315 = icmp eq i16 %69, 1024
  %cond317 = select i1 %cmp315, ptr @.str.95, ptr @.str.96
  br label %cond.end320

cond.end320.fold.split:                           ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end320

cond.end320:                                      ; preds = %cond.end320.fold.split, %cond.false312, %if.end152.cond.end320_crit_edge
  %cond321 = phi ptr [ @.str.93, %if.end152.cond.end320_crit_edge ], [ %cond317, %cond.false312 ], [ @.str.94, %cond.end320.fold.split ]
  %call322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull %cond321) #10
  %71 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cmd, align 2
  %73 = and i16 %72, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp329 = icmp eq i16 %73, 0
  %cond331 = select i1 %cmp329, ptr @.str.100, ptr @.str.54
  %call332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull %cond331) #10
  %call333 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 120, ptr noundef nonnull %bcmd) #7
  %74 = ptrtoint ptr %bcmd to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bcmd, align 1
  %conv338 = zext i8 %75 to i32
  %and339 = and i32 %conv338, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %tobool340.not = icmp eq i32 %and339, 0
  %cond341 = select i1 %tobool340.not, ptr @.str.105, ptr @.str.104
  %and343 = and i32 %conv338, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and343)
  %tobool344.not = icmp eq i32 %and343, 0
  %cond345 = select i1 %tobool344.not, ptr @.str.106, ptr @.str.54
  %and347 = and i32 %conv338, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347)
  %tobool348.not = icmp eq i32 %and347, 0
  %cond349 = select i1 %tobool348.not, ptr @.str.106, ptr @.str.54
  %call350 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull %cond341, ptr noundef nonnull %cond345, ptr noundef nonnull %cond349) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end320, %if.end74.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add64, %cond.end320 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.end.cleanup_crit_edge ], [ -19, %if.end74.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcmd) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcmd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dram_data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmc551_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %instr, align 8
  %conv = trunc i64 %3 to i32
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len, align 8
  %conv2 = trunc i64 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %conv, i32 noundef %conv2) #10
  %6 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %instr, align 8
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len, align 8
  %add = add i64 %9, %7
  %10 = trunc i64 %add to i32
  %conv5 = add i32 %10, -1
  %asize = getelementptr inbounds %struct.mypriv, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asize, align 4
  %sub6 = add i32 %12, -1
  %neg = sub i32 0, %12
  %and = and i32 %conv5, %neg
  %13 = trunc i64 %7 to i32
  %conv13 = and i32 %neg, %13
  %and16 = and i32 %conv5, %sub6
  %conv19 = trunc i64 %9 to i32
  %14 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv1, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %13, i32 noundef %conv19) #10
  %asize.i = getelementptr inbounds %struct.mypriv, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %asize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %asize.i, align 4
  %curr_map0.i = getelementptr inbounds %struct.mypriv, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %curr_map0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %curr_map0.i, align 4
  %conv9.i = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv9.i)
  %cmp.not.i = icmp eq i64 %7, %conv9.i
  br i1 %cmp.not.i, label %entry.pmc551_point.exit_crit_edge, label %if.then.i

entry.pmc551_point.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pmc551_point.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i = sub i32 0, %17
  %conv3.i = and i32 %neg.i, %13
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  %base_map0.i = getelementptr inbounds %struct.mypriv, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %base_map0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_map0.i, align 4
  %or.i = or i32 %23, %conv3.i
  %call11.i = tail call i32 @pci_write_config_dword(ptr noundef %21, i32 noundef 80, i32 noundef %or.i) #7
  %24 = ptrtoint ptr %curr_map0.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv3.i, ptr %curr_map0.i, align 4
  br label %pmc551_point.exit

pmc551_point.exit:                                ; preds = %if.then.i, %entry.pmc551_point.exit_crit_edge
  %sub.i = add i32 %17, -1
  %conv8.i = and i32 %sub.i, %13
  %start.i = getelementptr inbounds %struct.mypriv, ptr %15, i32 0, i32 1
  %25 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %start.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %conv8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %and)
  %cmp = icmp eq i32 %conv13, %and
  br i1 %cmp, label %pmc551_point.exit.if.then_crit_edge, label %lor.lhs.false

pmc551_point.exit.if.then_crit_edge:              ; preds = %pmc551_point.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %pmc551_point.exit
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size, align 8
  %29 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %asize, align 4
  %conv23 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %conv23)
  %cmp24 = icmp eq i64 %28, %conv23
  br i1 %cmp24, label %lor.lhs.false.if.then_crit_edge, label %do.end32.lr.ph

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

do.end32.lr.ph:                                   ; preds = %lor.lhs.false
  %base_map0 = getelementptr inbounds %struct.mypriv, ptr %1, i32 0, i32 2
  br label %do.end32

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %pmc551_point.exit.if.then_crit_edge
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %len, align 8
  %conv27 = trunc i64 %32 to i32
  %33 = call ptr @memset(ptr %add.ptr.i, i32 255, i32 %conv27)
  br label %do.end51

do.end32:                                         ; preds = %pmc551_point.exit97.do.end32_crit_edge, %do.end32.lr.ph
  %soff_hi.0103 = phi i32 [ %conv13, %do.end32.lr.ph ], [ %add37, %pmc551_point.exit97.do.end32_crit_edge ]
  %ptr.0102 = phi ptr [ %add.ptr.i, %do.end32.lr.ph ], [ %add.ptr.i96, %pmc551_point.exit97.do.end32_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %soff_hi.0103, i32 noundef %and) #10
  %34 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %asize, align 4
  %36 = call ptr @memset(ptr %ptr.0102, i32 255, i32 %35)
  %37 = load i32, ptr %asize, align 4
  %add37 = add i32 %37, %soff_hi.0103
  %conv38 = zext i32 %add37 to i64
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %conv38)
  %cmp40.not = icmp ugt i64 %39, %conv38
  br i1 %cmp40.not, label %if.end, label %do.end32.do.end51_crit_edge

do.end32.do.end51_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

if.end:                                           ; preds = %do.end32
  %40 = ptrtoint ptr %base_map0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base_map0, align 4
  %or = or i32 %41, %add37
  %42 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv1, align 8
  %call.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %or, i32 noundef %37) #10
  %asize.i83 = getelementptr inbounds %struct.mypriv, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %asize.i83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %asize.i83, align 4
  %curr_map0.i84 = getelementptr inbounds %struct.mypriv, ptr %43, i32 0, i32 3
  %46 = ptrtoint ptr %curr_map0.i84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %curr_map0.i84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %or)
  %cmp.not.i86 = icmp eq i32 %47, %or
  br i1 %cmp.not.i86, label %if.end.pmc551_point.exit97_crit_edge, label %if.then.i92

if.end.pmc551_point.exit97_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pmc551_point.exit97

if.then.i92:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i87 = sub i32 0, %45
  %conv3.i88 = and i32 %or, %neg.i87
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %43, align 4
  %base_map0.i89 = getelementptr inbounds %struct.mypriv, ptr %43, i32 0, i32 2
  %50 = ptrtoint ptr %base_map0.i89 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base_map0.i89, align 4
  %or.i90 = or i32 %51, %conv3.i88
  %call11.i91 = tail call i32 @pci_write_config_dword(ptr noundef %49, i32 noundef 80, i32 noundef %or.i90) #7
  %52 = ptrtoint ptr %curr_map0.i84 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv3.i88, ptr %curr_map0.i84, align 4
  br label %pmc551_point.exit97

pmc551_point.exit97:                              ; preds = %if.then.i92, %if.end.pmc551_point.exit97_crit_edge
  %sub.i93 = add i32 %45, -1
  %conv8.i94 = and i32 %sub.i93, %or
  %start.i95 = getelementptr inbounds %struct.mypriv, ptr %43, i32 0, i32 1
  %53 = ptrtoint ptr %start.i95 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %start.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %54, i32 %conv8.i94
  %cmp28.not = icmp eq i32 %add37, %and
  br i1 %cmp28.not, label %while.end, label %pmc551_point.exit97.do.end32_crit_edge

pmc551_point.exit97.do.end32_crit_edge:           ; preds = %pmc551_point.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

while.end:                                        ; preds = %pmc551_point.exit97
  call void @__sanitizer_cov_trace_pc() #9
  %55 = call ptr @memset(ptr %add.ptr.i96, i32 255, i32 %and16)
  br label %do.end51

do.end51:                                         ; preds = %while.end, %do.end32.do.end51_crit_edge, %if.then
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmc551_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conv = trunc i64 %from to i32
  %asize = getelementptr inbounds %struct.mypriv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asize, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %conv, i32 noundef %len, i32 noundef %3) #10
  %4 = add i32 %len, -1
  %conv3 = add i32 %4, %conv
  %5 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asize, align 4
  %sub5 = add i32 %6, -1
  %neg = sub i32 0, %6
  %conv7 = and i32 %neg, %conv
  %and11 = and i32 %conv3, %neg
  %and14 = and i32 %sub5, %conv3
  %7 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv1, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %conv, i32 noundef %len) #10
  %asize.i = getelementptr inbounds %struct.mypriv, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %asize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asize.i, align 4
  %curr_map0.i = getelementptr inbounds %struct.mypriv, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %curr_map0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %curr_map0.i, align 4
  %conv9.i = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv9.i, i64 %from)
  %cmp.not.i = icmp eq i64 %conv9.i, %from
  br i1 %cmp.not.i, label %entry.pmc551_point.exit_crit_edge, label %if.then.i

entry.pmc551_point.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pmc551_point.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i = sub i32 0, %10
  %conv3.i = and i32 %neg.i, %conv
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  %base_map0.i = getelementptr inbounds %struct.mypriv, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %base_map0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_map0.i, align 4
  %or.i = or i32 %16, %conv3.i
  %call11.i = tail call i32 @pci_write_config_dword(ptr noundef %14, i32 noundef 80, i32 noundef %or.i) #7
  %17 = ptrtoint ptr %curr_map0.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv3.i, ptr %curr_map0.i, align 4
  br label %pmc551_point.exit

pmc551_point.exit:                                ; preds = %if.then.i, %entry.pmc551_point.exit_crit_edge
  %sub.i = add i32 %10, -1
  %conv8.i = and i32 %sub.i, %conv
  %start.i = getelementptr inbounds %struct.mypriv, ptr %8, i32 0, i32 1
  %18 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %start.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv8.i
  %20 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %and11)
  %cmp = icmp eq i32 %conv7, %and11
  br i1 %cmp, label %if.then, label %do.end21.lr.ph

do.end21.lr.ph:                                   ; preds = %pmc551_point.exit
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  br label %do.end21

if.then:                                          ; preds = %pmc551_point.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i, i32 %len)
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  br label %do.end42

do.end21:                                         ; preds = %pmc551_point.exit97.do.end21_crit_edge, %do.end21.lr.ph
  %soff_hi.0105 = phi i32 [ %conv7, %do.end21.lr.ph ], [ %add28, %pmc551_point.exit97.do.end21_crit_edge ]
  %copyto.0104 = phi ptr [ %buf, %do.end21.lr.ph ], [ %add.ptr26, %pmc551_point.exit97.do.end21_crit_edge ]
  %ptr.0103 = phi ptr [ %add.ptr.i, %do.end21.lr.ph ], [ %add.ptr.i96, %pmc551_point.exit97.do.end21_crit_edge ]
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %soff_hi.0105, i32 noundef %and11) #10
  %22 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asize, align 4
  %24 = call ptr @memcpy(ptr %copyto.0104, ptr %ptr.0103, i32 %23)
  %25 = load i32, ptr %asize, align 4
  %add.ptr26 = getelementptr i8, ptr %copyto.0104, i32 %25
  %add28 = add i32 %25, %soff_hi.0105
  %conv29 = zext i32 %add28 to i64
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %conv29)
  %cmp30.not = icmp ugt i64 %27, %conv29
  br i1 %cmp30.not, label %if.end, label %do.end21.do.end42_crit_edge

do.end21.do.end42_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.end:                                           ; preds = %do.end21
  %28 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv1, align 8
  %call.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %add28, i32 noundef %25) #10
  %asize.i83 = getelementptr inbounds %struct.mypriv, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %asize.i83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %asize.i83, align 4
  %curr_map0.i84 = getelementptr inbounds %struct.mypriv, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %curr_map0.i84 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %curr_map0.i84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add28)
  %cmp.not.i86 = icmp eq i32 %33, %add28
  br i1 %cmp.not.i86, label %if.end.pmc551_point.exit97_crit_edge, label %if.then.i92

if.end.pmc551_point.exit97_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pmc551_point.exit97

if.then.i92:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i87 = sub i32 0, %31
  %conv3.i88 = and i32 %add28, %neg.i87
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 4
  %base_map0.i89 = getelementptr inbounds %struct.mypriv, ptr %29, i32 0, i32 2
  %36 = ptrtoint ptr %base_map0.i89 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_map0.i89, align 4
  %or.i90 = or i32 %37, %conv3.i88
  %call11.i91 = tail call i32 @pci_write_config_dword(ptr noundef %35, i32 noundef 80, i32 noundef %or.i90) #7
  %38 = ptrtoint ptr %curr_map0.i84 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv3.i88, ptr %curr_map0.i84, align 4
  br label %pmc551_point.exit97

pmc551_point.exit97:                              ; preds = %if.then.i92, %if.end.pmc551_point.exit97_crit_edge
  %sub.i93 = add i32 %31, -1
  %conv8.i94 = and i32 %sub.i93, %add28
  %start.i95 = getelementptr inbounds %struct.mypriv, ptr %29, i32 0, i32 1
  %39 = ptrtoint ptr %start.i95 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %start.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %40, i32 %conv8.i94
  %41 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %25, ptr %retlen, align 4
  %cmp17.not = icmp eq i32 %add28, %and11
  br i1 %cmp17.not, label %while.end, label %pmc551_point.exit97.do.end21_crit_edge

pmc551_point.exit97.do.end21_crit_edge:           ; preds = %pmc551_point.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

while.end:                                        ; preds = %pmc551_point.exit97
  call void @__sanitizer_cov_trace_pc() #9
  %42 = call ptr @memcpy(ptr %add.ptr26, ptr %add.ptr.i96, i32 %and14)
  %add.ptr38 = getelementptr i8, ptr %add.ptr26, i32 %and14
  br label %do.end42

do.end42:                                         ; preds = %while.end, %do.end21.do.end42_crit_edge, %if.then
  %copyto.1 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr38, %while.end ], [ %add.ptr26, %do.end21.do.end42_crit_edge ]
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #10
  %sub.ptr.lhs.cast = ptrtoint ptr %copyto.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %43 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.ptr.sub, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmc551_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conv = trunc i64 %to to i32
  %asize = getelementptr inbounds %struct.mypriv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asize, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %conv, i32 noundef %len, i32 noundef %3) #10
  %4 = add i32 %len, -1
  %conv3 = add i32 %4, %conv
  %5 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asize, align 4
  %sub5 = add i32 %6, -1
  %neg = sub i32 0, %6
  %conv7 = and i32 %neg, %conv
  %and11 = and i32 %conv3, %neg
  %and14 = and i32 %sub5, %conv3
  %7 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv1, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %conv, i32 noundef %len) #10
  %asize.i = getelementptr inbounds %struct.mypriv, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %asize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asize.i, align 4
  %curr_map0.i = getelementptr inbounds %struct.mypriv, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %curr_map0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %curr_map0.i, align 4
  %conv9.i = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv9.i, i64 %to)
  %cmp.not.i = icmp eq i64 %conv9.i, %to
  br i1 %cmp.not.i, label %entry.pmc551_point.exit_crit_edge, label %if.then.i

entry.pmc551_point.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pmc551_point.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i = sub i32 0, %10
  %conv3.i = and i32 %neg.i, %conv
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  %base_map0.i = getelementptr inbounds %struct.mypriv, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %base_map0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_map0.i, align 4
  %or.i = or i32 %16, %conv3.i
  %call11.i = tail call i32 @pci_write_config_dword(ptr noundef %14, i32 noundef 80, i32 noundef %or.i) #7
  %17 = ptrtoint ptr %curr_map0.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv3.i, ptr %curr_map0.i, align 4
  br label %pmc551_point.exit

pmc551_point.exit:                                ; preds = %if.then.i, %entry.pmc551_point.exit_crit_edge
  %sub.i = add i32 %10, -1
  %conv8.i = and i32 %sub.i, %conv
  %start.i = getelementptr inbounds %struct.mypriv, ptr %8, i32 0, i32 1
  %18 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %start.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv8.i
  %20 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %and11)
  %cmp = icmp eq i32 %conv7, %and11
  br i1 %cmp, label %if.then, label %do.end21.lr.ph

do.end21.lr.ph:                                   ; preds = %pmc551_point.exit
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  br label %do.end21

if.then:                                          ; preds = %pmc551_point.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %len)
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  br label %do.end40

do.end21:                                         ; preds = %pmc551_point.exit94.do.end21_crit_edge, %do.end21.lr.ph
  %soff_hi.0102 = phi i32 [ %conv7, %do.end21.lr.ph ], [ %add32, %pmc551_point.exit94.do.end21_crit_edge ]
  %copyfrom.0101 = phi ptr [ %buf, %do.end21.lr.ph ], [ %add.ptr26, %pmc551_point.exit94.do.end21_crit_edge ]
  %ptr.0100 = phi ptr [ %add.ptr.i, %do.end21.lr.ph ], [ %add.ptr.i93, %pmc551_point.exit94.do.end21_crit_edge ]
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %soff_hi.0102, i32 noundef %and11) #10
  %22 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asize, align 4
  %24 = call ptr @memcpy(ptr %ptr.0100, ptr %copyfrom.0101, i32 %23)
  %25 = load i32, ptr %asize, align 4
  %add.ptr26 = getelementptr i8, ptr %copyfrom.0101, i32 %25
  %conv27 = zext i32 %soff_hi.0102 to i64
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %conv27)
  %cmp28.not = icmp ugt i64 %27, %conv27
  br i1 %cmp28.not, label %if.end, label %do.end21.do.end40_crit_edge

do.end21.do.end40_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

if.end:                                           ; preds = %do.end21
  %add32 = add i32 %25, %soff_hi.0102
  %28 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv1, align 8
  %call.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %add32, i32 noundef %25) #10
  %asize.i80 = getelementptr inbounds %struct.mypriv, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %asize.i80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %asize.i80, align 4
  %curr_map0.i81 = getelementptr inbounds %struct.mypriv, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %curr_map0.i81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %curr_map0.i81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add32)
  %cmp.not.i83 = icmp eq i32 %33, %add32
  br i1 %cmp.not.i83, label %if.end.pmc551_point.exit94_crit_edge, label %if.then.i89

if.end.pmc551_point.exit94_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pmc551_point.exit94

if.then.i89:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i84 = sub i32 0, %31
  %conv3.i85 = and i32 %add32, %neg.i84
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 4
  %base_map0.i86 = getelementptr inbounds %struct.mypriv, ptr %29, i32 0, i32 2
  %36 = ptrtoint ptr %base_map0.i86 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_map0.i86, align 4
  %or.i87 = or i32 %37, %conv3.i85
  %call11.i88 = tail call i32 @pci_write_config_dword(ptr noundef %35, i32 noundef 80, i32 noundef %or.i87) #7
  %38 = ptrtoint ptr %curr_map0.i81 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv3.i85, ptr %curr_map0.i81, align 4
  br label %pmc551_point.exit94

pmc551_point.exit94:                              ; preds = %if.then.i89, %if.end.pmc551_point.exit94_crit_edge
  %sub.i90 = add i32 %31, -1
  %conv8.i91 = and i32 %sub.i90, %add32
  %start.i92 = getelementptr inbounds %struct.mypriv, ptr %29, i32 0, i32 1
  %39 = ptrtoint ptr %start.i92 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %start.i92, align 4
  %add.ptr.i93 = getelementptr i8, ptr %40, i32 %conv8.i91
  %41 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %25, ptr %retlen, align 4
  %cmp17.not = icmp eq i32 %add32, %and11
  br i1 %cmp17.not, label %while.end, label %pmc551_point.exit94.do.end21_crit_edge

pmc551_point.exit94.do.end21_crit_edge:           ; preds = %pmc551_point.exit94
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

while.end:                                        ; preds = %pmc551_point.exit94
  call void @__sanitizer_cov_trace_pc() #9
  %42 = call ptr @memcpy(ptr %add.ptr.i93, ptr %add.ptr26, i32 %and14)
  %add.ptr36 = getelementptr i8, ptr %add.ptr26, i32 %and14
  br label %do.end40

do.end40:                                         ; preds = %while.end, %do.end21.do.end40_crit_edge, %if.then
  %copyfrom.1 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr36, %while.end ], [ %add.ptr26, %do.end21.do.end40_crit_edge ]
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #10
  %sub.ptr.lhs.cast = ptrtoint ptr %copyfrom.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %43 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.ptr.sub, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmc551_point(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %virt, ptr nocapture noundef readnone %phys) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conv = trunc i64 %from to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %conv, i32 noundef %len) #10
  %asize = getelementptr inbounds %struct.mypriv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %asize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asize, align 4
  %curr_map0 = getelementptr inbounds %struct.mypriv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %curr_map0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr_map0, align 4
  %conv9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv9, i64 %from)
  %cmp.not = icmp eq i64 %conv9, %from
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = sub i32 0, %3
  %conv3 = and i32 %neg, %conv
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %base_map0 = getelementptr inbounds %struct.mypriv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %base_map0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_map0, align 4
  %or = or i32 %9, %conv3
  %call11 = tail call i32 @pci_write_config_dword(ptr noundef %7, i32 noundef 80, i32 noundef %or) #7
  %10 = ptrtoint ptr %curr_map0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv3, ptr %curr_map0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sub = add i32 %3, -1
  %conv8 = and i32 %sub, %conv
  %start = getelementptr inbounds %struct.mypriv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %start, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %conv8
  %13 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %virt, align 4
  %14 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmc551_unpoint(ptr nocapture noundef readnone %mtd, i64 noundef %from, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !123, !125, !126, !127, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__UNIQUE_ID_file242, !1, !"__UNIQUE_ID_file242", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/pmc551.c", i32 633, i32 1}
!2 = !{ptr @__UNIQUE_ID_license243, !1, !"__UNIQUE_ID_license243", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author244, !4, !"__UNIQUE_ID_author244", i1 false, i1 false}
!4 = !{!"../drivers/mtd/devices/pmc551.c", i32 634, i32 1}
!5 = !{ptr @__UNIQUE_ID_description245, !6, !"__UNIQUE_ID_description245", i1 false, i1 false}
!6 = !{!"../drivers/mtd/devices/pmc551.c", i32 635, i32 1}
!7 = !{ptr @__param_msize, !8, !"__param_msize", i1 false, i1 false}
!8 = !{!"../drivers/mtd/devices/pmc551.c", i32 643, i32 1}
!9 = !{ptr @__UNIQUE_ID_msizetype246, !8, !"__UNIQUE_ID_msizetype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_msize247, !11, !"__UNIQUE_ID_msize247", i1 false, i1 false}
!11 = !{!"../drivers/mtd/devices/pmc551.c", i32 644, i32 1}
!12 = !{ptr @__param_asize, !13, !"__param_asize", i1 false, i1 false}
!13 = !{!"../drivers/mtd/devices/pmc551.c", i32 645, i32 1}
!14 = !{ptr @__UNIQUE_ID_asizetype248, !13, !"__UNIQUE_ID_asizetype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_asize249, !16, !"__UNIQUE_ID_asize249", i1 false, i1 false}
!16 = !{!"../drivers/mtd/devices/pmc551.c", i32 646, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/devices/pmc551.c", i32 831, i32 4}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cleanup_pmc551._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @cleanup_pmc551._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/devices/pmc551.c", i32 843, i32 2}
!25 = !{ptr @cleanup_pmc551._entry.3, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cleanup_pmc551._entry_ptr.5, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_pmc551__250_846_init_pmc5516, !28, !"__initcall__kmod_pmc551__250_846_init_pmc5516", i1 false, i1 false}
!28 = !{!"../drivers/mtd/devices/pmc551.c", i32 846, i32 1}
!29 = !{ptr @__exitcall_cleanup_pmc551, !30, !"__exitcall_cleanup_pmc551", i1 false, i1 false}
!30 = !{!"../drivers/mtd/devices/pmc551.c", i32 847, i32 1}
!31 = !{ptr @pmc551list, !32, !"pmc551list", i1 false, i1 false}
!32 = !{!"../drivers/mtd/devices/pmc551.c", i32 130, i32 25}
!33 = !{ptr @__param_str_msize, !8, !"__param_str_msize", i1 false, i1 false}
!34 = !{ptr @msize, !35, !"msize", i1 false, i1 false}
!35 = !{!"../drivers/mtd/devices/pmc551.c", i32 640, i32 12}
!36 = !{ptr @__param_str_asize, !13, !"__param_str_asize", i1 false, i1 false}
!37 = !{ptr @asize, !38, !"asize", i1 false, i1 false}
!38 = !{!"../drivers/mtd/devices/pmc551.c", i32 641, i32 12}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/devices/pmc551.c", i32 662, i32 4}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @init_pmc551._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @init_pmc551._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/devices/pmc551.c", i32 671, i32 4}
!46 = !{ptr @init_pmc551._entry.8, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @init_pmc551._entry_ptr.10, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/devices/pmc551.c", i32 677, i32 2}
!50 = !{ptr @init_pmc551._entry.11, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @init_pmc551._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/devices/pmc551.c", i32 690, i32 3}
!54 = !{ptr @init_pmc551._entry.14, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @init_pmc551._entry_ptr.16, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/devices/pmc551.c", i32 702, i32 4}
!58 = !{ptr @init_pmc551._entry.17, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @init_pmc551._entry_ptr.19, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/devices/pmc551.c", i32 712, i32 4}
!62 = !{ptr @init_pmc551._entry.20, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @init_pmc551._entry_ptr.22, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/devices/pmc551.c", i32 731, i32 4}
!66 = !{ptr @init_pmc551._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @init_pmc551._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/devices/pmc551.c", i32 735, i32 4}
!70 = !{ptr @init_pmc551._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @init_pmc551._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/devices/pmc551.c", i32 739, i32 4}
!74 = !{ptr @init_pmc551._entry.29, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @init_pmc551._entry_ptr.31, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/devices/pmc551.c", i32 746, i32 4}
!78 = !{ptr @init_pmc551._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @init_pmc551._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/devices/pmc551.c", i32 752, i32 3}
!82 = !{ptr @init_pmc551._entry.35, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @init_pmc551._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/devices/pmc551.c", i32 764, i32 3}
!86 = !{ptr @init_pmc551._entry.38, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @init_pmc551._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/devices/pmc551.c", i32 776, i32 15}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/devices/pmc551.c", i32 782, i32 4}
!92 = !{ptr @init_pmc551._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @init_pmc551._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/devices/pmc551.c", i32 792, i32 3}
!96 = !{ptr @init_pmc551._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @init_pmc551._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/devices/pmc551.c", i32 793, i32 3}
!100 = !{ptr @init_pmc551._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @init_pmc551._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/devices/pmc551.c", i32 796, i32 3}
!104 = !{ptr @init_pmc551._entry.51, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @init_pmc551._entry_ptr.53, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/devices/pmc551.c", i32 809, i32 3}
!111 = !{ptr @init_pmc551._entry.57, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @init_pmc551._entry_ptr.59, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/devices/pmc551.c", i32 812, i32 3}
!115 = !{ptr @init_pmc551._entry.60, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @init_pmc551._entry_ptr.62, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/devices/pmc551.c", i32 554, i32 2}
!119 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @fixup_pmc551._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @fixup_pmc551._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mtd/devices/pmc551.c", i32 565, i32 2}
!125 = !{ptr @fixup_pmc551._entry.66, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @fixup_pmc551._entry_ptr.68, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.72, !124, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/devices/pmc551.c", i32 575, i32 2}
!133 = !{ptr @fixup_pmc551._entry.73, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @fixup_pmc551._entry_ptr.75, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/devices/pmc551.c", i32 585, i32 2}
!137 = !{ptr @fixup_pmc551._entry.76, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @fixup_pmc551._entry_ptr.78, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.80, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/devices/pmc551.c", i32 595, i32 2}
!141 = !{ptr @fixup_pmc551._entry.79, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @fixup_pmc551._entry_ptr.81, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.83, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/devices/pmc551.c", i32 605, i32 2}
!145 = !{ptr @fixup_pmc551._entry.82, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @fixup_pmc551._entry_ptr.84, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.85, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.86, !144, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.88, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mtd/devices/pmc551.c", i32 607, i32 2}
!151 = !{ptr @fixup_pmc551._entry.87, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @fixup_pmc551._entry_ptr.89, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.91, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/devices/pmc551.c", i32 611, i32 2}
!155 = !{ptr @fixup_pmc551._entry.90, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @fixup_pmc551._entry_ptr.92, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.93, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.94, !154, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.95, !154, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.96, !154, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.98, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mtd/devices/pmc551.c", i32 616, i32 2}
!163 = !{ptr @fixup_pmc551._entry.97, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @fixup_pmc551._entry_ptr.99, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.100, !162, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.102, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mtd/devices/pmc551.c", i32 620, i32 2}
!168 = !{ptr @fixup_pmc551._entry.101, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @fixup_pmc551._entry_ptr.103, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.104, !167, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.105, !167, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.106, !167, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.107, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mtd/devices/pmc551.c", i32 145, i32 2}
!175 = !{ptr @.str.108, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @pmc551_erase._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @pmc551_erase._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.110, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/devices/pmc551.c", i32 166, i32 4}
!180 = !{ptr @pmc551_erase._entry.109, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @pmc551_erase._entry_ptr.111, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.113, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/devices/pmc551.c", i32 183, i32 2}
!184 = !{ptr @pmc551_erase._entry.112, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @pmc551_erase._entry_ptr.114, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.115, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mtd/devices/pmc551.c", i32 234, i32 2}
!188 = !{ptr @.str.116, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @pmc551_read._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @pmc551_read._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.118, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mtd/devices/pmc551.c", i32 255, i32 4}
!193 = !{ptr @pmc551_read._entry.117, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @pmc551_read._entry_ptr.119, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.121, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/mtd/devices/pmc551.c", i32 273, i32 2}
!197 = !{ptr @pmc551_read._entry.120, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @pmc551_read._entry_ptr.122, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.123, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mtd/devices/pmc551.c", i32 290, i32 2}
!201 = !{ptr @.str.124, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @pmc551_write._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @pmc551_write._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.126, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mtd/devices/pmc551.c", i32 311, i32 4}
!206 = !{ptr @pmc551_write._entry.125, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @pmc551_write._entry_ptr.127, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.129, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mtd/devices/pmc551.c", i32 329, i32 2}
!210 = !{ptr @pmc551_write._entry.128, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @pmc551_write._entry_ptr.130, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.131, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mtd/devices/pmc551.c", i32 197, i32 2}
!214 = !{ptr @.str.132, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @pmc551_point._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @pmc551_point._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.133, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mtd/devices/pmc551.c", i32 218, i32 2}
!219 = !{ptr @.str.134, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @pmc551_unpoint._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @pmc551_unpoint._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{i32 0, i32 33}
!232 = !{!"auto-init"}
