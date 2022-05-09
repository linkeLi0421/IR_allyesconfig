; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/cpci_hotplug_pci.c_pt.bc'
source_filename = "../drivers/pci/hotplug/cpci_hotplug_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.slot = type { i8, i32, ptr, ptr, i8, i32, %struct.hotplug_slot, %struct.list_head }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@cpci_led_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Could not set LOO for slot %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpci_led_on\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pci/hotplug/cpci_hotplug_pci.c\00", [57 x i8] zeroinitializer }, align 32
@cpci_led_on._entry_ptr = internal global ptr @cpci_led_on._entry, section ".printk_index", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpci_hotplug\00", [19 x i8] zeroinitializer }, align 32
@cpci_led_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Could not clear LOO for slot %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpci_led_off\00", [19 x i8] zeroinitializer }, align 32
@cpci_led_off._entry_ptr = internal global ptr @cpci_led_off._entry, section ".printk_index", align 4
@cpci_debug = external dso_local local_unnamed_addr global i32, align 4
@cpci_configure_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s - enter\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpci_configure_slot\00", [44 x i8] zeroinitializer }, align 32
@cpci_configure_slot._entry_ptr = internal global ptr @cpci_configure_slot._entry, section ".printk_index", align 4
@cpci_configure_slot._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: pci_dev null, finding %02x:%02x:%x\0A\00", [54 x i8] zeroinitializer }, align 32
@cpci_configure_slot._entry_ptr.10 = internal global ptr @cpci_configure_slot._entry.8, section ".printk_index", align 4
@cpci_configure_slot._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: pci_dev still null\0A\00", [38 x i8] zeroinitializer }, align 32
@cpci_configure_slot._entry_ptr.13 = internal global ptr @cpci_configure_slot._entry.11, section ".printk_index", align 4
@cpci_configure_slot._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: pci_scan_slot returned %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cpci_configure_slot._entry_ptr.16 = internal global ptr @cpci_configure_slot._entry.14, section ".printk_index", align 4
@cpci_configure_slot._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Could not find PCI device for slot %02x\0A\00", [49 x i8] zeroinitializer }, align 32
@cpci_configure_slot._entry_ptr.19 = internal global ptr @cpci_configure_slot._entry.17, section ".printk_index", align 4
@cpci_configure_slot._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: %s - exit\0A\00", [47 x i8] zeroinitializer }, align 32
@cpci_configure_slot._entry_ptr.22 = internal global ptr @cpci_configure_slot._entry.20, section ".printk_index", align 4
@cpci_unconfigure_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.23, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpci_unconfigure_slot\00", [42 x i8] zeroinitializer }, align 32
@cpci_unconfigure_slot._entry_ptr = internal global ptr @cpci_unconfigure_slot._entry, section ".printk_index", align 4
@cpci_unconfigure_slot._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: No device for slot %02x\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@cpci_unconfigure_slot._entry_ptr.26 = internal global ptr @cpci_unconfigure_slot._entry.24, section ".printk_index", align 4
@cpci_unconfigure_slot._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.23, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cpci_unconfigure_slot._entry_ptr.28 = internal global ptr @cpci_unconfigure_slot._entry.27, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 195, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 223, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 241, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 246, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 254, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 261, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 264, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 282, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 290, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 292, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private constant [42 x i8] c"../drivers/pci/hotplug/cpci_hotplug_pci.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 310, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @cpci_configure_slot._entry, ptr @cpci_configure_slot._entry.11, ptr @cpci_configure_slot._entry.14, ptr @cpci_configure_slot._entry.17, ptr @cpci_configure_slot._entry.20, ptr @cpci_configure_slot._entry.8, ptr @cpci_configure_slot._entry_ptr, ptr @cpci_configure_slot._entry_ptr.10, ptr @cpci_configure_slot._entry_ptr.13, ptr @cpci_configure_slot._entry_ptr.16, ptr @cpci_configure_slot._entry_ptr.19, ptr @cpci_configure_slot._entry_ptr.22, ptr @cpci_led_off._entry, ptr @cpci_led_off._entry_ptr, ptr @cpci_led_on._entry, ptr @cpci_led_on._entry_ptr, ptr @cpci_unconfigure_slot._entry, ptr @cpci_unconfigure_slot._entry.24, ptr @cpci_unconfigure_slot._entry.27, ptr @cpci_unconfigure_slot._entry_ptr, ptr @cpci_unconfigure_slot._entry_ptr.26, ptr @cpci_unconfigure_slot._entry_ptr.28, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_led_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_led_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_configure_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_configure_slot._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_configure_slot._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_configure_slot._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_configure_slot._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_configure_slot._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_unconfigure_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_unconfigure_slot._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpci_unconfigure_slot._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @cpci_get_attention_status(ptr nocapture noundef readonly %slot) local_unnamed_addr #0 align 64 {
entry:
  %hs_csr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hs_csr) #4
  %0 = ptrtoint ptr %hs_csr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hs_csr, align 2, !annotation !57
  %bus = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %devfn = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %call = tail call zeroext i8 @pci_bus_find_capability(ptr noundef %2, i32 noundef %4, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %call to i32
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  %add = add nuw nsw i32 %conv, 2
  %call3 = call i32 @pci_bus_read_config_word(ptr noundef %6, i32 noundef %8, i32 noundef %add, ptr noundef nonnull %hs_csr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hs_csr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hs_csr, align 2
  %11 = trunc i16 %10 to i8
  %12 = lshr i8 %11, 3
  %13 = and i8 %12, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %13, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hs_csr) #4
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_bus_find_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_word(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_set_attention_status(ptr nocapture noundef readonly %slot, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %hs_csr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hs_csr) #4
  %0 = ptrtoint ptr %hs_csr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hs_csr, align 2, !annotation !57
  %bus = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %devfn = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %call = tail call zeroext i8 @pci_bus_find_capability(ptr noundef %2, i32 noundef %4, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %call to i32
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  %add = add nuw nsw i32 %conv, 2
  %call3 = call i32 @pci_bus_read_config_word(ptr noundef %6, i32 noundef %8, i32 noundef %add, ptr noundef nonnull %hs_csr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool7.not = icmp eq i32 %status, 0
  %9 = ptrtoint ptr %hs_csr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hs_csr, align 2
  %11 = and i16 %10, -9
  %masksel = select i1 %tobool7.not, i16 0, i16 8
  %storemerge = or i16 %11, %masksel
  store i16 %storemerge, ptr %hs_csr, align 2
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devfn, align 4
  %call17 = call i32 @pci_bus_write_config_word(ptr noundef %13, i32 noundef %15, i32 noundef %add, i16 noundef zeroext %storemerge) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %. = zext i1 %tobool18.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hs_csr) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_write_config_word(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @cpci_get_hs_csr(ptr nocapture noundef readonly %slot) local_unnamed_addr #0 align 64 {
entry:
  %hs_csr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hs_csr) #4
  %0 = ptrtoint ptr %hs_csr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hs_csr, align 2, !annotation !57
  %bus = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %devfn = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %call = tail call zeroext i8 @pci_bus_find_capability(ptr noundef %2, i32 noundef %4, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %call to i32
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  %add = add nuw nsw i32 %conv, 2
  %call3 = call i32 @pci_bus_read_config_word(ptr noundef %6, i32 noundef %8, i32 noundef %add, ptr noundef nonnull %hs_csr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hs_csr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hs_csr, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %10, %if.end6 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hs_csr) #4
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_check_and_clear_ins(ptr nocapture noundef readonly %slot) local_unnamed_addr #0 align 64 {
entry:
  %hs_csr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hs_csr) #4
  %0 = ptrtoint ptr %hs_csr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hs_csr, align 2, !annotation !57
  %bus = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %devfn = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %call = tail call zeroext i8 @pci_bus_find_capability(ptr noundef %2, i32 noundef %4, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %call to i32
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  %add = add nuw nsw i32 %conv, 2
  %call3 = call i32 @pci_bus_read_config_word(ptr noundef %6, i32 noundef %8, i32 noundef %add, ptr noundef nonnull %hs_csr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %hs_csr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hs_csr, align 2
  %11 = and i16 %10, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devfn, align 4
  %call13 = call i32 @pci_bus_write_config_word(ptr noundef %13, i32 noundef %15, i32 noundef %add, i16 noundef zeroext %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %. = zext i1 %tobool14.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %., %if.then9 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hs_csr) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_check_ext(ptr nocapture noundef readonly %slot) local_unnamed_addr #0 align 64 {
entry:
  %hs_csr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hs_csr) #4
  %0 = ptrtoint ptr %hs_csr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hs_csr, align 2, !annotation !57
  %bus = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %devfn = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %call = tail call zeroext i8 @pci_bus_find_capability(ptr noundef %2, i32 noundef %4, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %call to i32
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  %add = add nuw nsw i32 %conv, 2
  %call3 = call i32 @pci_bus_read_config_word(ptr noundef %6, i32 noundef %8, i32 noundef %add, ptr noundef nonnull %hs_csr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hs_csr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hs_csr, align 2
  %11 = lshr i16 %10, 6
  %.lobit = and i16 %11, 1
  %12 = zext i16 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hs_csr) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_clear_ext(ptr nocapture noundef readonly %slot) local_unnamed_addr #0 align 64 {
entry:
  %hs_csr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hs_csr) #4
  %0 = ptrtoint ptr %hs_csr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hs_csr, align 2, !annotation !57
  %bus = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %devfn = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %call = tail call zeroext i8 @pci_bus_find_capability(ptr noundef %2, i32 noundef %4, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %call to i32
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  %add = add nuw nsw i32 %conv, 2
  %call3 = call i32 @pci_bus_read_config_word(ptr noundef %6, i32 noundef %8, i32 noundef %add, ptr noundef nonnull %hs_csr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %hs_csr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hs_csr, align 2
  %11 = and i16 %10, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %if.end6.if.end17_crit_edge, label %if.then9

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then9:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devfn, align 4
  %call13 = call i32 @pci_bus_write_config_word(ptr noundef %13, i32 noundef %15, i32 noundef %add, i16 noundef zeroext %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then9.if.end17_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end17:                                         ; preds = %if.then9.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.then9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hs_csr) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_led_on(ptr nocapture noundef readonly %slot) local_unnamed_addr #0 align 64 {
entry:
  %hs_csr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hs_csr) #4
  %0 = ptrtoint ptr %hs_csr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hs_csr, align 2, !annotation !57
  %bus = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %devfn = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %call = tail call zeroext i8 @pci_bus_find_capability(ptr noundef %2, i32 noundef %4, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %call to i32
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  %add = add nuw nsw i32 %conv, 2
  %call3 = call i32 @pci_bus_read_config_word(ptr noundef %6, i32 noundef %8, i32 noundef %add, ptr noundef nonnull %hs_csr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %hs_csr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hs_csr, align 2
  %11 = and i16 %10, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.not.not = icmp eq i16 %11, 0
  br i1 %cmp.not.not, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %or = or i16 %10, 8
  %12 = ptrtoint ptr %hs_csr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %or, ptr %hs_csr, align 2
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %15 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devfn, align 4
  %call15 = call i32 @pci_bus_write_config_word(ptr noundef %14, i32 noundef %16, i32 noundef %add, i16 noundef zeroext %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then9.cleanup_crit_edge, label %do.end

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %pci_slot.i.i = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kobj.i.i.i, align 4
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef %20) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hs_csr) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_led_off(ptr nocapture noundef readonly %slot) local_unnamed_addr #0 align 64 {
entry:
  %hs_csr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hs_csr) #4
  %0 = ptrtoint ptr %hs_csr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hs_csr, align 2, !annotation !57
  %bus = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %devfn = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %call = tail call zeroext i8 @pci_bus_find_capability(ptr noundef %2, i32 noundef %4, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %call to i32
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  %add = add nuw nsw i32 %conv, 2
  %call3 = call i32 @pci_bus_read_config_word(ptr noundef %6, i32 noundef %8, i32 noundef %add, ptr noundef nonnull %hs_csr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %hs_csr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hs_csr, align 2
  %11 = and i16 %10, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %and11 = and i16 %10, -9
  %12 = ptrtoint ptr %hs_csr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %and11, ptr %hs_csr, align 2
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %15 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devfn, align 4
  %call16 = call i32 @pci_bus_write_config_word(ptr noundef %14, i32 noundef %16, i32 noundef %add, i16 noundef zeroext %and11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then9.cleanup_crit_edge, label %do.end

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %pci_slot.i.i = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kobj.i.i.i, align 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %20) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hs_csr) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_configure_slot(ptr nocapture noundef %slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpci_debug to i32))
  %0 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @pci_lock_rescan_remove() #4
  %dev4 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 3
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev4, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %do.body6, label %do.end3.if.end69_crit_edge

do.end3.if.end69_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

do.body6:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpci_debug to i32))
  %3 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %do.body6.if.end23_crit_edge, label %do.end11

do.body6.if.end23_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %bus = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number, align 4
  %conv = zext i8 %7 to i32
  %devfn = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %8 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %9, 3
  %and = and i32 %shr, 31
  %and14 = and i32 %9, 7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %and, i32 noundef %and14) #7
  br label %if.end23

if.end23:                                         ; preds = %do.end11, %do.body6.if.end23_crit_edge
  %bus19 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %10 = ptrtoint ptr %bus19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus19, align 4
  %devfn20 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %12 = ptrtoint ptr %devfn20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn20, align 4
  %call21 = tail call ptr @pci_get_slot(ptr noundef %11, i32 noundef %13) #4
  %14 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call21, ptr %dev4, align 4
  %cmp25 = icmp eq ptr %call21, null
  br i1 %cmp25, label %if.then27, label %if.end23.if.end69_crit_edge

if.end23.if.end69_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then27:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpci_debug to i32))
  %15 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool29.not = icmp eq i32 %15, 0
  br i1 %tobool29.not, label %if.then27.do.end38_crit_edge, label %do.end33

if.then27.do.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end38

do.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3) #7
  br label %do.end38

do.end38:                                         ; preds = %do.end33, %if.then27.do.end38_crit_edge
  %16 = ptrtoint ptr %bus19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus19, align 4
  %18 = ptrtoint ptr %devfn20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devfn20, align 4
  %call41 = tail call i32 @pci_scan_slot(ptr noundef %17, i32 noundef %19) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpci_debug to i32))
  %20 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool43.not = icmp eq i32 %20, 0
  br i1 %tobool43.not, label %do.end38.do.end52_crit_edge, label %do.end47

do.end38.do.end52_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

do.end47:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, i32 noundef %call41) #7
  br label %do.end52

do.end52:                                         ; preds = %do.end47, %do.end38.do.end52_crit_edge
  %21 = ptrtoint ptr %bus19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus19, align 4
  %23 = ptrtoint ptr %devfn20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devfn20, align 4
  %call55 = tail call ptr @pci_get_slot(ptr noundef %22, i32 noundef %24) #4
  %25 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call55, ptr %dev4, align 4
  %cmp58 = icmp eq ptr %call55, null
  br i1 %cmp58, label %cleanup, label %do.end52.if.end69_crit_edge

do.end52.if.end69_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

cleanup:                                          ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %slot to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %slot, align 4
  %conv66 = zext i8 %27 to i32
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, i32 noundef %conv66) #7
  br label %out

if.end69:                                         ; preds = %do.end52.if.end69_crit_edge, %if.end23.if.end69_crit_edge, %do.end3.if.end69_crit_edge
  %28 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev4, align 4
  %bus71 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %bus71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus71, align 8
  %devices = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %32)
  %dev.0136 = load ptr, ptr %devices, align 4
  %cmp74.not137 = icmp eq ptr %dev.0136, %devices
  br i1 %cmp74.not137, label %if.end69.for.end_crit_edge, label %for.body.lr.ph

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end69
  %devfn81 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dev.0138 = phi ptr [ %dev.0136, %for.body.lr.ph ], [ %dev.0, %for.inc.for.body_crit_edge ]
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0138, i32 0, i32 13
  %33 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hdr_type.i, align 1
  %35 = add i8 %34, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %36 = icmp ult i8 %35, 2
  br i1 %36, label %if.else, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.else:                                          ; preds = %for.body
  %devfn78 = getelementptr inbounds %struct.pci_dev, ptr %dev.0138, i32 0, i32 6
  %37 = ptrtoint ptr %devfn78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %devfn78, align 4
  %39 = ptrtoint ptr %devfn81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %devfn81, align 4
  %shr79132 = xor i32 %40, %38
  %41 = and i32 %shr79132, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp84 = icmp eq i32 %41, 0
  br i1 %cmp84, label %if.then86, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then86:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call87 = tail call i32 @pci_hp_add_bridge(ptr noundef %dev.0138) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then86, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %42 = ptrtoint ptr %dev.0138 to i32
  call void @__asan_load4_noabort(i32 %42)
  %dev.0 = load ptr, ptr %dev.0138, align 4
  %cmp74.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp74.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end69.for.end_crit_edge
  %self = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 4
  %43 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %self, align 4
  tail call void @pci_assign_unassigned_bridge_resources(ptr noundef %44) #4
  tail call void @pci_bus_add_devices(ptr noundef %31) #4
  br label %out

out:                                              ; preds = %for.end, %cleanup
  %ret.2 = phi i32 [ -19, %cleanup ], [ 0, %for.end ]
  tail call void @pci_unlock_rescan_remove() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpci_debug to i32))
  %45 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool96.not = icmp eq i32 %45, 0
  br i1 %tobool96.not, label %out.cleanup106_crit_edge, label %do.end100

out.cleanup106_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup106

do.end100:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #7
  br label %cleanup106

cleanup106:                                       ; preds = %do.end100, %out.cleanup106_crit_edge
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_scan_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_hp_add_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_assign_unassigned_bridge_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_add_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpci_unconfigure_slot(ptr nocapture noundef %slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpci_debug to i32))
  %0 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dev4 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 3
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev4, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %slot to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %slot, align 4
  %conv = zext i8 %4 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef %conv) #7
  br label %cleanup

if.end12:                                         ; preds = %do.end3
  tail call void @pci_lock_rescan_remove() #4
  %bus = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %devices = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devices, align 4
  %cmp.not64 = icmp eq ptr %8, %devices
  br i1 %cmp.not64, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %devfn22 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dev.065 = phi ptr [ %8, %for.body.lr.ph ], [ %temp.066, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %dev.065 to i32
  call void @__asan_load4_noabort(i32 %9)
  %temp.066 = load ptr, ptr %dev.065, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev.065, i32 0, i32 6
  %10 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devfn, align 4
  %12 = ptrtoint ptr %devfn22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn22, align 4
  %shr61 = xor i32 %13, %11
  %14 = and i32 %shr61, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp25.not = icmp eq i32 %14, 0
  br i1 %cmp25.not, label %if.end28, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call ptr @pci_dev_get(ptr noundef %dev.065) #4
  tail call void @pci_stop_and_remove_bus_device(ptr noundef %dev.065) #4
  tail call void @pci_dev_put(ptr noundef %dev.065) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %devices20 = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 3
  %cmp.not = icmp eq ptr %temp.066, %devices20
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge
  %17 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev4, align 4
  tail call void @pci_dev_put(ptr noundef %18) #4
  %19 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dev4, align 4
  tail call void @pci_unlock_rescan_remove() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpci_debug to i32))
  %20 = load i32, ptr @cpci_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool38.not = icmp eq i32 %20, 0
  br i1 %tobool38.not, label %for.end.cleanup_crit_edge, label %do.end42

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end42:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %for.end.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ -19, %do.end9 ], [ 0, %do.end42 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_and_remove_bus_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 195, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cpci_led_on._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cpci_led_on._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 223, i32 4}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cpci_led_off._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @cpci_led_off._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 241, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cpci_configure_slot._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cpci_configure_slot._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 246, i32 3}
!19 = !{ptr @cpci_configure_slot._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @cpci_configure_slot._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 254, i32 3}
!23 = !{ptr @cpci_configure_slot._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cpci_configure_slot._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 261, i32 3}
!27 = !{ptr @cpci_configure_slot._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cpci_configure_slot._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 264, i32 4}
!31 = !{ptr @cpci_configure_slot._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cpci_configure_slot._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 282, i32 2}
!35 = !{ptr @cpci_configure_slot._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cpci_configure_slot._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 290, i32 2}
!39 = !{ptr @cpci_unconfigure_slot._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cpci_unconfigure_slot._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 292, i32 3}
!43 = !{ptr @cpci_unconfigure_slot._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cpci_unconfigure_slot._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @cpci_unconfigure_slot._entry.27, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/pci/hotplug/cpci_hotplug_pci.c", i32 310, i32 2}
!47 = !{ptr @cpci_unconfigure_slot._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
