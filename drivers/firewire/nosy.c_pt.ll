; ModuleID = '/llk/IR_all_yes/drivers/firewire/nosy.c_pt.bc'
source_filename = "../drivers/firewire/nosy.c"
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pcilynx = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.miscdevice, %struct.list_head, %struct.kref }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.pcl = type { i32, i32, i32, i32, i32, i32, [13 x %struct.anon.72] }
%struct.anon.72 = type { i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.packet_buffer = type { ptr, i32, i32, i32, %struct.atomic_t, ptr, ptr, %struct.wait_queue_head }
%struct.packet = type { i32, [0 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.client = type { ptr, i32, %struct.packet_buffer, %struct.list_head }
%struct.nosy_stats = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }

@__initcall__kmod_nosy__236_713_lynx_pci_driver_init6 = internal global ptr @lynx_pci_driver_init, section ".initcall6.init", align 4
@lynx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @driver_name, ptr @pci_table, ptr @add_card, ptr @remove_card, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lynx_pci_driver_exit = internal global ptr @lynx_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [31 x i8] c"nosy.author=Kristian Hoegsberg\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [67 x i8] c"nosy.description=Snoop mode driver for TI pcilynx 1394 controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [32 x i8] c"nosy.file=drivers/firewire/nosy\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [17 x i8] c"nosy.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nosy\00", [27 x i8] zeroinitializer }, align 32
@driver_name = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"nosy\00", [27 x i8] zeroinitializer }, align 32
@pci_table = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4172, i32 32768, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@add_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 537, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"DMA address limits not supported for PCILynx hardware\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"add_card\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/firewire/nosy.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@add_card._entry_ptr = internal global ptr @add_card._entry, section ".printk_index", align 4
@add_card._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable PCILynx hardware\0A\00", [61 x i8] zeroinitializer }, align 32
@add_card._entry_ptr.8 = internal global ptr @add_card._entry.6, section ".printk_index", align 4
@add_card._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 548, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate control structure\0A\00", [58 x i8] zeroinitializer }, align 32
@add_card._entry_ptr.11 = internal global ptr @add_card._entry.9, section ".printk_index", align 4
@add_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&lynx->client_list_lock\00", [40 x i8] zeroinitializer }, align 32
@add_card._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to map registers\0A\00", [39 x i8] zeroinitializer }, align 32
@add_card._entry_ptr.15 = internal global ptr @add_card._entry.13, section ".printk_index", align 4
@add_card._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate receive buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@add_card._entry_ptr.18 = internal global ptr @add_card._entry.16, section ".printk_index", align 4
@add_card._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 643, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate shared interrupt %d\0A\00", [56 x i8] zeroinitializer }, align 32
@add_card._entry_ptr.21 = internal global ptr @add_card._entry.19, section ".printk_index", align 4
@nosy_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @nosy_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nosy_poll, ptr @nosy_ioctl, ptr null, ptr null, i32 0, ptr @nosy_open, ptr null, ptr @nosy_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@card_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @card_mutex, i64 52), ptr getelementptr (i8, ptr @card_mutex, i64 52) }, ptr @card_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@add_card._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 656, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register misc char device\0A\00", [59 x i8] zeroinitializer }, align 32
@add_card._entry_ptr.24 = internal global ptr @add_card._entry.22, section ".printk_index", align 4
@card_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @card_list, ptr @card_list }, [24 x i8] zeroinitializer }, align 32
@add_card._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 664, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Initialized PCILynx IEEE1394 card, irq=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@add_card._entry_ptr.28 = internal global ptr @add_card._entry.25, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@set_phy_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PHY register address %d out of range\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_phy_reg\00", [20 x i8] zeroinitializer }, align 32
@set_phy_reg._entry_ptr = internal global ptr @set_phy_reg._entry, section ".printk_index", align 4
@set_phy_reg._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PHY register value %d out of range\0A\00", [60 x i8] zeroinitializer }, align 32
@set_phy_reg._entry_ptr.33 = internal global ptr @set_phy_reg._entry.31, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@packet_buffer_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&buffer->wait\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"card_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"card_mutex\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9729, i64 9730, i64 1074013698, i64 2148017664]
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"lynx_pci_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 706, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 713, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 37, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"pci_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 694, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 536, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 541, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 548, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 555, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 562, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 580, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 642, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"nosy_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 394, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"card_mutex\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 656, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [10 x i8] c"card_list\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 112, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 663, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 248, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 253, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 230, i32 6 }
@___asan_gen_.149 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 214, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 174, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 125, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [27 x i8] c"../drivers/firewire/nosy.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 111, i32 8 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_lynx_pci_driver_exit, ptr @__initcall__kmod_nosy__236_713_lynx_pci_driver_init6, ptr @add_card._entry, ptr @add_card._entry.13, ptr @add_card._entry.16, ptr @add_card._entry.19, ptr @add_card._entry.22, ptr @add_card._entry.25, ptr @add_card._entry.6, ptr @add_card._entry.9, ptr @add_card._entry_ptr, ptr @add_card._entry_ptr.11, ptr @add_card._entry_ptr.15, ptr @add_card._entry_ptr.18, ptr @add_card._entry_ptr.21, ptr @add_card._entry_ptr.24, ptr @add_card._entry_ptr.28, ptr @add_card._entry_ptr.8, ptr @lynx_pci_driver_exit, ptr @set_phy_reg._entry, ptr @set_phy_reg._entry.31, ptr @set_phy_reg._entry_ptr, ptr @set_phy_reg._entry_ptr.33, ptr @lynx_pci_driver, ptr @.str, ptr @driver_name, ptr @pci_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @add_card.__key, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @nosy_ops, ptr @card_mutex, ptr @.str.23, ptr @card_list, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @packet_buffer_init.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_card._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_card._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_card._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_card._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_card._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nosy_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_card._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_card._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_phy_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_phy_reg._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_buffer_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lynx_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @lynx_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lynx_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @lynx_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_card(ptr noundef %dev, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_enable_device(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %dev) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #13
  br label %fail_disable

if.end17:                                         ; preds = %if.end10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %client_list_lock = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %client_list_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @add_card.__key, i16 noundef signext 3) #10
  %client_list = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %client_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %client_list, ptr %client_list, align 4
  %prev.i = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client_list, ptr %prev.i, align 8
  %kref = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %5 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %kref, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource, align 8
  %call22 = tail call ptr @ioremap(i32 noundef %7, i32 noundef 4095) #10
  %registers = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %registers, align 4
  %cmp24 = icmp eq ptr %call22, null
  br i1 %cmp24, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #13
  br label %fail_deallocate_lynx

if.end30:                                         ; preds = %if.end17
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %rcv_start_pcl_bus = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 5
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev32, i32 noundef 128, ptr noundef %rcv_start_pcl_bus, i32 noundef 3264, i32 noundef 0) #10
  %rcv_start_pcl = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %rcv_start_pcl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %rcv_start_pcl, align 8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %rcv_pcl_bus = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 6
  %call.i235 = tail call ptr @dma_alloc_attrs(ptr noundef %dev35, i32 noundef 128, ptr noundef %rcv_pcl_bus, i32 noundef 3264, i32 noundef 0) #10
  %rcv_pcl = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %rcv_pcl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i235, ptr %rcv_pcl, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %rcv_buffer_bus = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 7
  %call.i236 = tail call ptr @dma_alloc_attrs(ptr noundef %dev38, i32 noundef 16384, ptr noundef %rcv_buffer_bus, i32 noundef 3264, i32 noundef 0) #10
  %rcv_buffer = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %rcv_buffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i236, ptr %rcv_buffer, align 8
  %18 = ptrtoint ptr %rcv_start_pcl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rcv_start_pcl, align 8
  %cmp41 = icmp eq ptr %19, null
  br i1 %cmp41, label %if.end30.do.end50_crit_edge, label %lor.lhs.false

if.end30.do.end50_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

lor.lhs.false:                                    ; preds = %if.end30
  %20 = ptrtoint ptr %rcv_pcl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rcv_pcl, align 4
  %cmp43 = icmp eq ptr %21, null
  %cmp46 = icmp eq ptr %call.i236, null
  %or.cond = select i1 %cmp43, i1 true, i1 %cmp46
  br i1 %or.cond, label %lor.lhs.false.do.end50_crit_edge, label %if.end52

lor.lhs.false.do.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end50:                                         ; preds = %lor.lhs.false.do.end50_crit_edge, %if.end30.do.end50_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #13
  br label %fail_deallocate_buffers

if.end52:                                         ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %rcv_pcl_bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rcv_pcl_bus, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %19, align 4
  %26 = ptrtoint ptr %rcv_pcl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rcv_pcl, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16777216, ptr %27, align 4
  %29 = load ptr, ptr %rcv_pcl, align 4
  %async_error_next = getelementptr inbounds %struct.pcl, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %async_error_next to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16777216, ptr %async_error_next, align 4
  %31 = load ptr, ptr %rcv_pcl, align 4
  %buffer = getelementptr inbounds %struct.pcl, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -66649855, ptr %buffer, align 4
  %33 = ptrtoint ptr %rcv_buffer_bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rcv_buffer_bus, align 4
  %add = add i32 %34, 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %add)
  %36 = ptrtoint ptr %rcv_pcl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rcv_pcl, align 4
  %pointer = getelementptr inbounds %struct.pcl, ptr %37, i32 0, i32 6, i32 0, i32 1
  %38 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %pointer, align 4
  %39 = ptrtoint ptr %rcv_buffer_bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rcv_buffer_bus, align 4
  %add67 = add i32 %40, 16384
  %p.0246 = add i32 %40, 2048
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0246, i32 %add67)
  %cmp68247 = icmp ult i32 %p.0246, %add67
  br i1 %cmp68247, label %if.end52.for.body_crit_edge, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end52.for.body_crit_edge
  %p.0249 = phi i32 [ %p.0, %for.body.for.body_crit_edge ], [ %p.0246, %if.end52.for.body_crit_edge ]
  %i.0248 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end52.for.body_crit_edge ]
  %41 = ptrtoint ptr %rcv_pcl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rcv_pcl, align 4
  %arrayidx71 = getelementptr %struct.pcl, ptr %42, i32 0, i32 6, i32 %i.0248
  %43 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 524545, ptr %arrayidx71, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %p.0249)
  %45 = ptrtoint ptr %rcv_pcl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rcv_pcl, align 4
  %pointer76 = getelementptr %struct.pcl, ptr %46, i32 0, i32 6, i32 %i.0248, i32 1
  %47 = ptrtoint ptr %pointer76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %pointer76, align 4
  %inc = add i32 %i.0248, 1
  %p.0 = add i32 %p.0249, 2048
  %cmp68 = icmp ult i32 %p.0, %add67
  br i1 %cmp68, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end52.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end52.for.end_crit_edge ], [ %i.0248, %for.body.for.end_crit_edge ]
  %48 = ptrtoint ptr %rcv_pcl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rcv_pcl, align 4
  %arrayidx80 = getelementptr %struct.pcl, ptr %49, i32 0, i32 6, i32 %i.0.lcssa
  %50 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx80, align 4
  %or = or i32 %51, 1024
  store i32 %or, ptr %arrayidx80, align 4
  tail call fastcc void @reg_set_bits(ptr noundef nonnull %call7.i.i, i32 noundef 64, i32 noundef 1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %registers, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %registers, align 4
  %add.ptr.i238 = getelementptr i8, ptr %55, i32 2312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238, i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %registers, align 4
  %add.ptr.i240 = getelementptr i8, ptr %57, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i240, i32 -16777216) #10, !srcloc !94
  tail call fastcc void @reg_set_bits(ptr noundef nonnull %call7.i.i, i32 noundef 76, i32 noundef 1023)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %58 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %registers, align 4
  %add.ptr.i242 = getelementptr i8, ptr %59, i32 3864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242, i32 947919472) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %registers, align 4
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 3852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 68) #10, !srcloc !94
  tail call fastcc void @reg_set_bits(ptr noundef nonnull %call7.i.i, i32 noundef 3844, i32 noundef 64)
  %62 = ptrtoint ptr %rcv_start_pcl_bus to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rcv_start_pcl_bus, align 4
  tail call fastcc void @run_pcl(ptr noundef nonnull %call7.i.i, i32 noundef %63)
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %call.i243 = tail call i32 @request_threaded_irq(i32 noundef %65, ptr noundef nonnull @irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool85.not = icmp eq i32 %call.i243, 0
  br i1 %tobool85.not, label %if.end92, label %do.end89

do.end89:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %67) #13
  br label %fail_deallocate_buffers

if.end92:                                         ; preds = %for.end
  %misc = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 10
  %parent = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 10, i32 4
  %68 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %dev1, ptr %parent, align 8
  %69 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 255, ptr %misc, align 4
  %name = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 10, i32 1
  %70 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str, ptr %name, align 8
  %fops = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 10, i32 2
  %71 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @nosy_ops, ptr %fops, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @card_mutex, i32 noundef 0) #10
  %call98 = tail call i32 @misc_register(ptr noundef %misc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end105, label %do.end103

do.end103:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #13
  tail call void @mutex_unlock(ptr noundef nonnull @card_mutex) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %72 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %registers, align 4
  %add.ptr.i245 = getelementptr i8, ptr %73, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245, i32 0) #10, !srcloc !94
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  %irq112 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %irq112 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq112, align 4
  %call113 = tail call ptr @free_irq(i32 noundef %77, ptr noundef nonnull %call7.i.i) #10
  br label %fail_deallocate_buffers

if.end105:                                        ; preds = %if.end92
  %link = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 11
  %78 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @card_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %78, ptr noundef nonnull @card_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end105.list_add_tail.exit_crit_edge

if.end105.list_add_tail.exit_crit_edge:           ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %link, ptr getelementptr inbounds (%struct.list_head, ptr @card_list, i32 0, i32 1), align 4
  %79 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @card_list, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.pcilynx, ptr %call7.i.i, i32 0, i32 11, i32 1
  %80 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %prev3.i.i, align 8
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %link, ptr %78, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end105.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @card_mutex) #10
  %82 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %83) #13
  br label %cleanup

fail_deallocate_buffers:                          ; preds = %do.end103, %do.end89, %do.end50
  %ret.0 = phi i32 [ -12, %do.end50 ], [ -5, %do.end89 ], [ %call98, %do.end103 ]
  %84 = ptrtoint ptr %rcv_start_pcl to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rcv_start_pcl, align 8
  %tobool115.not = icmp eq ptr %85, null
  br i1 %tobool115.not, label %fail_deallocate_buffers.if.end121_crit_edge, label %if.then116

fail_deallocate_buffers.if.end121_crit_edge:      ; preds = %fail_deallocate_buffers
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then116:                                       ; preds = %fail_deallocate_buffers
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call7.i.i, align 8
  %dev118 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %rcv_start_pcl_bus to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rcv_start_pcl_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %dev118, i32 noundef 128, ptr noundef nonnull %85, i32 noundef %89, i32 noundef 0) #10
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %fail_deallocate_buffers.if.end121_crit_edge
  %90 = ptrtoint ptr %rcv_pcl to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rcv_pcl, align 4
  %tobool123.not = icmp eq ptr %91, null
  br i1 %tobool123.not, label %if.end121.if.end129_crit_edge, label %if.then124

if.end121.if.end129_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call7.i.i, align 8
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %94 = ptrtoint ptr %rcv_pcl_bus to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rcv_pcl_bus, align 8
  tail call void @dma_free_attrs(ptr noundef %dev126, i32 noundef 128, ptr noundef nonnull %91, i32 noundef %95, i32 noundef 0) #10
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.end121.if.end129_crit_edge
  %96 = ptrtoint ptr %rcv_buffer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rcv_buffer, align 8
  %tobool131.not = icmp eq ptr %97, null
  br i1 %tobool131.not, label %if.end129.if.end137_crit_edge, label %if.then132

if.end129.if.end137_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call7.i.i, align 8
  %dev134 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %100 = ptrtoint ptr %rcv_buffer_bus to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rcv_buffer_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %dev134, i32 noundef 4096, ptr noundef nonnull %97, i32 noundef %101, i32 noundef 0) #10
  br label %if.end137

if.end137:                                        ; preds = %if.then132, %if.end129.if.end137_crit_edge
  %102 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %registers, align 4
  tail call void @iounmap(ptr noundef %103) #10
  br label %fail_deallocate_lynx

fail_deallocate_lynx:                             ; preds = %if.end137, %do.end28
  %ret.1 = phi i32 [ -12, %do.end28 ], [ %ret.0, %if.end137 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %fail_disable

fail_disable:                                     ; preds = %fail_deallocate_lynx, %do.end15
  %ret.2 = phi i32 [ -12, %do.end15 ], [ %ret.1, %fail_deallocate_lynx ]
  tail call void @pci_disable_device(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %fail_disable, %list_add_tail.exit, %do.end8, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end8 ], [ %ret.2, %fail_disable ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @remove_card(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @card_mutex, i32 noundef 0) #10
  %link = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %link, ptr %link, align 4
  %prev.i3.i = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %link, ptr %prev.i3.i, align 4
  %misc = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 10
  tail call void @misc_deregister(ptr noundef %misc) #10
  tail call void @mutex_unlock(ptr noundef nonnull @card_mutex) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %registers.i = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %registers.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !94
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %1) #10
  %client_list_lock = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %client_list_lock) #10
  %client_list = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %client_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn38 = load ptr, ptr %client_list, align 4
  %cmp.not39 = icmp eq ptr %.pn38, %client_list
  br i1 %cmp.not39, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del_init.exit.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn38, %list_del_init.exit.for.body_crit_edge ]
  %wait = getelementptr i8, ptr %.pn40, i32 -52
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %17 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp.not = icmp eq ptr %.pn, %client_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_del_init.exit.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %client_list_lock) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %rcv_start_pcl = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %rcv_start_pcl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rcv_start_pcl, align 4
  %rcv_start_pcl_bus = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %rcv_start_pcl_bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rcv_start_pcl_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef 128, ptr noundef %21, i32 noundef %23, i32 noundef 0) #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %rcv_pcl = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %rcv_pcl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rcv_pcl, align 4
  %rcv_pcl_bus = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %rcv_pcl_bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rcv_pcl_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 128, ptr noundef %27, i32 noundef %29, i32 noundef 0) #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %rcv_buffer = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %rcv_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rcv_buffer, align 4
  %rcv_buffer_bus = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %rcv_buffer_bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rcv_buffer_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %dev15, i32 noundef 4096, ptr noundef %33, i32 noundef %35, i32 noundef 0) #10
  %36 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %registers.i, align 4
  tail call void @iounmap(ptr noundef %37) #10
  tail call void @pci_disable_device(ptr noundef %dev) #10
  %kref.i = getelementptr inbounds %struct.pcilynx, ptr %1, i32 0, i32 12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lynx_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.lynx_put.exit_crit_edge:        ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lynx_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %lynx_put.exit

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @kfree(ptr noundef %1) #10
  br label %lynx_put.exit

lynx_put.exit:                                    ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lynx_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_set_bits(ptr nocapture noundef readonly %lynx, i32 noundef %offset, i32 noundef %mask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %registers.i = getelementptr inbounds %struct.pcilynx, ptr %lynx, i32 0, i32 1
  %0 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %or = or i32 %3, %mask
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %5 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %registers.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %6, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %4) #10, !srcloc !94
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @run_pcl(ptr nocapture noundef readonly %lynx, i32 noundef %pcl_bus) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %pcl_bus) #10
  %registers.i = getelementptr inbounds %struct.pcilynx, ptr %lynx, i32 0, i32 1
  %1 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %registers.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %4, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 160) #10, !srcloc !94
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_handler(i32 noundef %irq, ptr noundef %device) #2 align 64 {
entry:
  %ts64.i36 = alloca %struct.timespec64, align 8
  %ts64.i = alloca %struct.timespec64, align 8
  %timestamp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %registers.i = getelementptr inbounds %struct.pcilynx, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp sgt i32 %3, -1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  %and4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5.not = icmp eq i32 %and4, 0
  br i1 %cmp5.not, label %if.end3.if.end12_crit_edge, label %if.then6

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %if.end3
  %4 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %5, i32 3860
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #10, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %registers.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %8, i32 3860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %6) #10, !srcloc !94
  %9 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.not = icmp eq i32 %9, 0
  br i1 %cmp9.not, label %if.then6.if.end12_crit_edge, label %if.then10

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts64.i) #10
  %10 = call ptr @memset(ptr %ts64.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timestamp.i) #10
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts64.i) #10
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts64.i, i32 0, i32 1
  %11 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %12, 1000
  %13 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.i, ptr %timestamp.i, align 4
  %client_list_lock.i = getelementptr inbounds %struct.pcilynx, ptr %device, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %client_list_lock.i) #10
  %client_list.i = getelementptr inbounds %struct.pcilynx, ptr %device, i32 0, i32 9
  %14 = ptrtoint ptr %client_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn13.i = load ptr, ptr %client_list.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %client_list.i
  br i1 %cmp.not14.i, label %if.then10.bus_reset_irq_handler.exit_crit_edge, label %if.then10.for.body.i_crit_edge

if.then10.for.body.i_crit_edge:                   ; preds = %if.then10
  br label %for.body.i

if.then10.bus_reset_irq_handler.exit_crit_edge:   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %bus_reset_irq_handler.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then10.for.body.i_crit_edge
  %.pn15.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn13.i, %if.then10.for.body.i_crit_edge ]
  %buffer.i = getelementptr i8, ptr %.pn15.i, i32 -80
  call fastcc void @packet_buffer_put(ptr noundef %buffer.i, ptr noundef nonnull %timestamp.i, i32 noundef 4) #10
  %15 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn15.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %client_list.i
  br i1 %cmp.not.i, label %for.body.i.bus_reset_irq_handler.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.bus_reset_irq_handler.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bus_reset_irq_handler.exit

bus_reset_irq_handler.exit:                       ; preds = %for.body.i.bus_reset_irq_handler.exit_crit_edge, %if.then10.bus_reset_irq_handler.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %client_list_lock.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timestamp.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts64.i) #10
  br label %if.end12

if.end12:                                         ; preds = %bus_reset_irq_handler.exit, %if.then6.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %registers.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %17, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %2) #10, !srcloc !94
  %and13 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 0
  br i1 %cmp14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts64.i36) #10
  %18 = call ptr @memset(ptr %ts64.i36, i32 255, i32 16)
  %rcv_pcl.i = getelementptr inbounds %struct.pcilynx, ptr %device, i32 0, i32 3
  %19 = ptrtoint ptr %rcv_pcl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rcv_pcl.i, align 4
  %pcl_status.i = getelementptr inbounds %struct.pcl, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %pcl_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcl_status.i, align 4
  %23 = and i32 %22, -14745600
  %rcv_buffer.i = getelementptr inbounds %struct.pcilynx, ptr %device, i32 0, i32 4
  %24 = ptrtoint ptr %rcv_buffer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rcv_buffer.i, align 4
  %arrayidx.i = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts64.i36) #10
  %tv_nsec.i37 = getelementptr inbounds %struct.timespec64, ptr %ts64.i36, i32 0, i32 1
  %28 = ptrtoint ptr %tv_nsec.i37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tv_nsec.i37, align 8
  %div.i38 = sdiv i32 %29, 1000
  %30 = ptrtoint ptr %rcv_buffer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rcv_buffer.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div.i38, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %23)
  %cmp.i = icmp eq i32 %23, 201326592
  %33 = lshr i32 %27, 28
  %shl.i = shl nuw nsw i32 1, %33
  %tcode_mask.0.i = select i1 %cmp.i, i32 65536, i32 %shl.i
  %client_list_lock.i39 = getelementptr inbounds %struct.pcilynx, ptr %device, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %client_list_lock.i39) #10
  %client_list.i40 = getelementptr inbounds %struct.pcilynx, ptr %device, i32 0, i32 9
  %34 = ptrtoint ptr %client_list.i40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn28.i = load ptr, ptr %client_list.i40, align 4
  %cmp5.not29.i = icmp eq ptr %.pn28.i, %client_list.i40
  br i1 %cmp5.not29.i, label %if.then15.packet_irq_handler.exit_crit_edge, label %for.body.lr.ph.i

if.then15.packet_irq_handler.exit_crit_edge:      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %packet_irq_handler.exit

for.body.lr.ph.i:                                 ; preds = %if.then15
  %35 = call i32 @llvm.bswap.i32(i32 %23) #10
  %add.i = add nuw nsw i32 %35, 4
  br label %for.body.i41

for.body.i41:                                     ; preds = %for.inc.i.for.body.i41_crit_edge, %for.body.lr.ph.i
  %.pn30.i = phi ptr [ %.pn28.i, %for.body.lr.ph.i ], [ %.pn.i43, %for.inc.i.for.body.i41_crit_edge ]
  %tcode_mask6.i = getelementptr i8, ptr %.pn30.i, i32 -84
  %36 = ptrtoint ptr %tcode_mask6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tcode_mask6.i, align 4
  %and7.i = and i32 %37, %tcode_mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %for.body.i41.for.inc.i_crit_edge, label %if.then8.i

for.body.i41.for.inc.i_crit_edge:                 ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #12
  %buffer.i42 = getelementptr i8, ptr %.pn30.i, i32 -80
  %38 = ptrtoint ptr %rcv_buffer.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rcv_buffer.i, align 4
  call fastcc void @packet_buffer_put(ptr noundef %buffer.i42, ptr noundef %39, i32 noundef %add.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %for.body.i41.for.inc.i_crit_edge
  %40 = ptrtoint ptr %.pn30.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i43 = load ptr, ptr %.pn30.i, align 4
  %cmp5.not.i = icmp eq ptr %.pn.i43, %client_list.i40
  br i1 %cmp5.not.i, label %for.inc.i.packet_irq_handler.exit_crit_edge, label %for.inc.i.for.body.i41_crit_edge

for.inc.i.for.body.i41_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i41

for.inc.i.packet_irq_handler.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %packet_irq_handler.exit

packet_irq_handler.exit:                          ; preds = %for.inc.i.packet_irq_handler.exit_crit_edge, %if.then15.packet_irq_handler.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %client_list_lock.i39) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts64.i36) #10
  %rcv_start_pcl_bus = getelementptr inbounds %struct.pcilynx, ptr %device, i32 0, i32 5
  %41 = ptrtoint ptr %rcv_start_pcl_bus to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rcv_start_pcl_bus, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  %43 = call i32 @llvm.bswap.i32(i32 %42) #10
  %44 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %registers.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %43) #10, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %registers.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %47, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 160) #10, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %packet_irq_handler.exit, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %packet_irq_handler.exit ], [ 1, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @packet_buffer_put(ptr noundef %buffer, ptr nocapture noundef readonly %data, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %total_packet_count = getelementptr inbounds %struct.packet_buffer, ptr %buffer, i32 0, i32 2
  %0 = ptrtoint ptr %total_packet_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_packet_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %total_packet_count, align 4
  %capacity = getelementptr inbounds %struct.packet_buffer, ptr %buffer, i32 0, i32 1
  %2 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capacity, align 4
  %size = getelementptr inbounds %struct.packet_buffer, ptr %buffer, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %size, i32 noundef 4) #10
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %size, align 4
  %add = add i32 %length, 4
  %add1 = add i32 %add, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add1)
  %cmp = icmp ult i32 %3, %add1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lost_packet_count = getelementptr inbounds %struct.packet_buffer, ptr %buffer, i32 0, i32 3
  %6 = ptrtoint ptr %lost_packet_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lost_packet_count, align 4
  %inc2 = add i32 %7, 1
  store i32 %inc2, ptr %lost_packet_count, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %10 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capacity, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %tail = getelementptr inbounds %struct.packet_buffer, ptr %buffer, i32 0, i32 6
  %12 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %length, ptr %13, align 4
  %15 = load ptr, ptr %tail, align 4
  %data7 = getelementptr inbounds %struct.packet, ptr %15, i32 0, i32 1
  %arrayidx = getelementptr %struct.packet, ptr %15, i32 0, i32 1, i32 %length
  %cmp8 = icmp ult ptr %arrayidx, %add.ptr
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call ptr @memcpy(ptr %data7, ptr %data, i32 %length)
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail, align 4
  %arrayidx14 = getelementptr %struct.packet, ptr %18, i32 0, i32 1, i32 %length
  br label %if.end28

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = call ptr @memcpy(ptr %data7, ptr %data, i32 %sub.ptr.sub)
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %add.ptr23 = getelementptr i8, ptr %data, i32 %sub.ptr.sub
  %sub = sub i32 %length, %sub.ptr.sub
  %22 = call ptr @memcpy(ptr %21, ptr %add.ptr23, i32 %sub)
  %23 = load ptr, ptr %buffer, align 4
  %arrayidx26 = getelementptr i8, ptr %23, i32 %sub
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then9
  %storemerge = phi ptr [ %arrayidx26, %if.else ], [ %arrayidx14, %if.then9 ]
  %24 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %storemerge, ptr %tail, align 4
  %call.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef %size, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %size, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %size, ptr %size, i32 %add, ptr elementtype(i32) %size) #10, !srcloc !101
  %wait = getelementptr inbounds %struct.packet_buffer, ptr %buffer, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nosy_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buffer1.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 144) #10
  %size.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %entry.lor.lhs.false.i_crit_edge, label %if.then.i

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %4 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %wait.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2, i32 7
  %call670.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %call.i.i171.i = call zeroext i1 @__kasan_check_read(ptr noundef %size.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp972.i = icmp sgt i32 %6, 0
  br i1 %cmp972.i, label %if.then.i.if.end14.thread60.i_crit_edge, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  br label %if.end.i

if.then.i.if.end14.thread60.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.thread60.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %call673.i = phi i32 [ %call6.i, %cleanup.i.if.end.i_crit_edge ], [ %call670.i, %if.then.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call673.i)
  %tobool.not.i = icmp eq i32 %call673.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.end14.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #10
  %call6.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %call.i.i1.i = call zeroext i1 @__kasan_check_read(ptr noundef %size.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %size.i, align 4
  %cmp9.i = icmp sgt i32 %8, 0
  br i1 %cmp9.i, label %cleanup.i.if.end14.thread60.i_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

cleanup.i.if.end14.thread60.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.thread60.i

if.end14.thread60.i:                              ; preds = %cleanup.i.if.end14.thread60.i_crit_edge, %if.then.i.if.end14.thread60.i_crit_edge
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %lor.lhs.false.i

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %packet_buffer_get.exit

lor.lhs.false.i:                                  ; preds = %if.end14.thread60.i, %entry.lor.lhs.false.i_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %link.i = getelementptr inbounds %struct.pcilynx, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %link.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %link.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.packet_buffer_get.exit_crit_edge, label %if.end20.i

lor.lhs.false.i.packet_buffer_get.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %packet_buffer_get.exit

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %call.i.i2.i = call zeroext i1 @__kasan_check_read(ptr noundef %size.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp23.i = icmp eq i32 %14, 0
  br i1 %cmp23.i, label %if.end20.i.packet_buffer_get.exit_crit_edge, label %if.end25.i

if.end20.i.packet_buffer_get.exit_crit_edge:      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %packet_buffer_get.exit

if.end25.i:                                       ; preds = %if.end20.i
  %15 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer1.i, align 4
  %capacity.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %capacity.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %18
  %head.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %data29.i = getelementptr inbounds %struct.packet, ptr %20, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.packet, ptr %20, i32 0, i32 1, i32 %22
  %cmp30.i = icmp ult ptr %arrayidx.i, %add.ptr.i
  br i1 %cmp30.i, label %if.end8.i.i.i, label %if.else.i

if.end8.i.i.i:                                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9.i.i.i = icmp slt i32 %22, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.packet_buffer_get.exit_crit_edge, label %if.then27.i.i.i, !prof !97

land.rhs16.i.i.i.packet_buffer_get.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %packet_buffer_get.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %packet_buffer_get.exit

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__check_object_size(ptr noundef %data29.i, i32 noundef %22, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #10
  %call.i.i3.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i3.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %22, i32 -1226833920) #15, !srcloc !102
  %asmresult.i.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %data29.i, i32 noundef %22) #10
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %data29.i, i32 noundef %22) #10
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %22, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %22, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool35.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %copy_to_user.exit.i.packet_buffer_get.exit_crit_edge

copy_to_user.exit.i.packet_buffer_get.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %packet_buffer_get.exit

if.end37.i:                                       ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 4
  %arrayidx40.i = getelementptr %struct.packet, ptr %25, i32 0, i32 1, i32 %22
  br label %if.end65.i

if.else.i:                                        ; preds = %if.end25.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %data29.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp9.i.i10.i = icmp slt i32 %sub.ptr.sub.i, 0
  br i1 %cmp9.i.i10.i, label %land.rhs16.i.i13.i, label %if.then.i.i.i16.i

land.rhs16.i.i13.i:                               ; preds = %if.else.i
  %.b1.i.i12.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i12.i, label %land.rhs16.i.i13.i.packet_buffer_get.exit_crit_edge, label %if.then27.i.i14.i, !prof !97

land.rhs16.i.i13.i.packet_buffer_get.exit_crit_edge: ; preds = %land.rhs16.i.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %packet_buffer_get.exit

if.then27.i.i14.i:                                ; preds = %land.rhs16.i.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %packet_buffer_get.exit

if.then.i.i.i16.i:                                ; preds = %if.else.i
  call void @__check_object_size(ptr noundef %data29.i, i32 noundef %sub.ptr.sub.i, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #10
  %call.i.i17.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i17.i, label %if.then.i.i.i16.i.copy_to_user.exit26.i_crit_edge, label %if.end.i.i21.i

if.then.i.i.i16.i.copy_to_user.exit26.i_crit_edge: ; preds = %if.then.i.i.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit26.i

if.end.i.i21.i:                                   ; preds = %if.then.i.i.i16.i
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %sub.ptr.sub.i, i32 -1226833920) #15, !srcloc !102
  %asmresult.i.i19.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i19.i)
  %cmp.i6.i20.i = icmp eq i32 %asmresult.i.i19.i, 0
  br i1 %cmp.i6.i20.i, label %if.then2.i.i24.i, label %if.end.i.i21.i.copy_to_user.exit26.i_crit_edge

if.end.i.i21.i.copy_to_user.exit26.i_crit_edge:   ; preds = %if.end.i.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit26.i

if.then2.i.i24.i:                                 ; preds = %if.end.i.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i22.i = call zeroext i1 @__kasan_check_read(ptr noundef %data29.i, i32 noundef %sub.ptr.sub.i) #10
  %call.i12.i.i23.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %data29.i, i32 noundef %sub.ptr.sub.i) #10
  br label %copy_to_user.exit26.i

copy_to_user.exit26.i:                            ; preds = %if.then2.i.i24.i, %if.end.i.i21.i.copy_to_user.exit26.i_crit_edge, %if.then.i.i.i16.i.copy_to_user.exit26.i_crit_edge
  %n.addr.0.i25.i = phi i32 [ %sub.ptr.sub.i, %if.then.i.i.i16.i.copy_to_user.exit26.i_crit_edge ], [ %call.i12.i.i23.i, %if.then2.i.i24.i ], [ %sub.ptr.sub.i, %if.end.i.i21.i.copy_to_user.exit26.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i25.i)
  %tobool49.not.i = icmp eq i32 %n.addr.0.i25.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %copy_to_user.exit26.i.packet_buffer_get.exit_crit_edge

copy_to_user.exit26.i.packet_buffer_get.exit_crit_edge: ; preds = %copy_to_user.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %packet_buffer_get.exit

if.end51.i:                                       ; preds = %copy_to_user.exit26.i
  %add.ptr52.i = getelementptr i8, ptr %buffer, i32 %sub.ptr.sub.i
  %27 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer1.i, align 4
  %sub.i = sub i32 %22, %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp9.i.i33.i = icmp slt i32 %sub.i, 0
  br i1 %cmp9.i.i33.i, label %land.rhs16.i.i36.i, label %if.then.i.i.i39.i

land.rhs16.i.i36.i:                               ; preds = %if.end51.i
  %.b1.i.i35.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i35.i, label %land.rhs16.i.i36.i.packet_buffer_get.exit_crit_edge, label %if.then27.i.i37.i, !prof !97

land.rhs16.i.i36.i.packet_buffer_get.exit_crit_edge: ; preds = %land.rhs16.i.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %packet_buffer_get.exit

if.then27.i.i37.i:                                ; preds = %land.rhs16.i.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %packet_buffer_get.exit

if.then.i.i.i39.i:                                ; preds = %if.end51.i
  call void @__check_object_size(ptr noundef %28, i32 noundef %sub.i, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #10
  %call.i.i40.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i40.i, label %if.then.i.i.i39.i.copy_to_user.exit49.i_crit_edge, label %if.end.i.i44.i

if.then.i.i.i39.i.copy_to_user.exit49.i_crit_edge: ; preds = %if.then.i.i.i39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit49.i

if.end.i.i44.i:                                   ; preds = %if.then.i.i.i39.i
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr52.i, i32 %sub.i, i32 -1226833920) #15, !srcloc !102
  %asmresult.i.i42.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i42.i)
  %cmp.i6.i43.i = icmp eq i32 %asmresult.i.i42.i, 0
  br i1 %cmp.i6.i43.i, label %if.then2.i.i47.i, label %if.end.i.i44.i.copy_to_user.exit49.i_crit_edge

if.end.i.i44.i.copy_to_user.exit49.i_crit_edge:   ; preds = %if.end.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit49.i

if.then2.i.i47.i:                                 ; preds = %if.end.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i45.i = call zeroext i1 @__kasan_check_read(ptr noundef %28, i32 noundef %sub.i) #10
  %call.i12.i.i46.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr52.i, ptr noundef %28, i32 noundef %sub.i) #10
  br label %copy_to_user.exit49.i

copy_to_user.exit49.i:                            ; preds = %if.then2.i.i47.i, %if.end.i.i44.i.copy_to_user.exit49.i_crit_edge, %if.then.i.i.i39.i.copy_to_user.exit49.i_crit_edge
  %n.addr.0.i48.i = phi i32 [ %sub.i, %if.then.i.i.i39.i.copy_to_user.exit49.i_crit_edge ], [ %call.i12.i.i46.i, %if.then2.i.i47.i ], [ %sub.i, %if.end.i.i44.i.copy_to_user.exit49.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i48.i)
  %tobool55.not.i = icmp eq i32 %n.addr.0.i48.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %copy_to_user.exit49.i.packet_buffer_get.exit_crit_edge

copy_to_user.exit49.i.packet_buffer_get.exit_crit_edge: ; preds = %copy_to_user.exit49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %packet_buffer_get.exit

if.end57.i:                                       ; preds = %copy_to_user.exit49.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer1.i, align 4
  %arrayidx60.i = getelementptr i8, ptr %31, i32 %sub.i
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end57.i, %if.end37.i
  %storemerge.i = phi ptr [ %arrayidx60.i, %if.end57.i ], [ %arrayidx40.i, %if.end37.i ]
  %32 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %storemerge.i, ptr %head.i, align 4
  %add.i = add i32 %22, 4
  %call.i.i50.i = call zeroext i1 @__kasan_check_write(ptr noundef %size.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %size.i, i32 1, i32 3, i32 1) #10
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %size.i, ptr %size.i, i32 %add.i, ptr elementtype(i32) %size.i) #10, !srcloc !103
  br label %packet_buffer_get.exit

packet_buffer_get.exit:                           ; preds = %if.end65.i, %copy_to_user.exit49.i.packet_buffer_get.exit_crit_edge, %if.then27.i.i37.i, %land.rhs16.i.i36.i.packet_buffer_get.exit_crit_edge, %copy_to_user.exit26.i.packet_buffer_get.exit_crit_edge, %if.then27.i.i14.i, %land.rhs16.i.i13.i.packet_buffer_get.exit_crit_edge, %copy_to_user.exit.i.packet_buffer_get.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.packet_buffer_get.exit_crit_edge, %if.end20.i.packet_buffer_get.exit_crit_edge, %lor.lhs.false.i.packet_buffer_get.exit_crit_edge, %if.end14.i
  %retval.1.i = phi i32 [ %22, %if.end65.i ], [ -512, %lor.lhs.false.i.packet_buffer_get.exit_crit_edge ], [ -512, %if.end14.i ], [ -19, %if.end20.i.packet_buffer_get.exit_crit_edge ], [ -14, %copy_to_user.exit.i.packet_buffer_get.exit_crit_edge ], [ -14, %copy_to_user.exit49.i.packet_buffer_get.exit_crit_edge ], [ -14, %copy_to_user.exit26.i.packet_buffer_get.exit_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.packet_buffer_get.exit_crit_edge ], [ -14, %if.then27.i.i14.i ], [ -14, %land.rhs16.i.i13.i.packet_buffer_get.exit_crit_edge ], [ -14, %if.then27.i.i37.i ], [ -14, %land.rhs16.i.i36.i.packet_buffer_get.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nosy_poll(ptr noundef %file, ptr noundef %pt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2, i32 7
  %tobool.not.i = icmp eq ptr %pt, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pt, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait, ptr noundef nonnull %pt) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %size = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %size, i32 noundef 4) #10
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  %spec.select = select i1 %cmp, i32 65, i32 0
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %link = getelementptr inbounds %struct.pcilynx, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %9, %link
  %or = or i32 %spec.select, 16
  %ret.1 = select i1 %cmp.i.not, i32 %or, i32 %spec.select
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nosy_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %stats = alloca %struct.nosy_stats, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %client_list_lock1 = getelementptr inbounds %struct.pcilynx, ptr %3, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stats) #10
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2146949632, label %sw.bb
    i32 9729, label %sw.bb5
    i32 9730, label %sw.bb11
    i32 1074013698, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = getelementptr inbounds %struct.nosy_stats, ptr %stats, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %client_list_lock1) #10
  %total_packet_count = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %total_packet_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_packet_count, align 4
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %stats, align 4
  %lost_packet_count = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %lost_packet_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lost_packet_count, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %5, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %client_list_lock1) #10
  %12 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb.cleanup_crit_edge, label %if.end.i.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 8, i32 -1226833920) #15, !srcloc !102
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %stats, i32 noundef 8) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef nonnull %stats, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %client_list_lock1) #10
  %link = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %15, %link
  br i1 %cmp.i.not, label %if.then8, label %sw.bb5.if.end_crit_edge

sw.bb5.if.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then8:                                         ; preds = %sw.bb5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %client_list = getelementptr inbounds %struct.pcilynx, ptr %17, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.pcilynx, ptr %17, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i32 = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %19, ptr noundef %client_list) #10
  br i1 %call.i.i32, label %if.end.i.i33, label %if.then8.if.end_crit_edge

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i33:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %link, ptr %prev.i, align 4
  %21 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %client_list, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %link, ptr %19, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i33, %if.then8.if.end_crit_edge, %sw.bb5.if.end_crit_edge
  %ret.0 = phi i32 [ -16, %sw.bb5.if.end_crit_edge ], [ 0, %if.then8.if.end_crit_edge ], [ 0, %if.end.i.i33 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %client_list_lock1) #10
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %client_list_lock1) #10
  %link12 = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3
  %call.i.i34 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link12) #10
  br i1 %call.i.i34, label %if.end.i.i35, label %sw.bb11.list_del_init.exit_crit_edge

sw.bb11.list_del_init.exit_crit_edge:             ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i35:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %link12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link12, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i35, %sw.bb11.list_del_init.exit_crit_edge
  %30 = ptrtoint ptr %link12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %link12, ptr %link12, align 4
  %prev.i3.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %link12, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %client_list_lock1) #10
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %client_list_lock1) #10
  %tcode_mask = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %tcode_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %arg, ptr %tcode_mask, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %client_list_lock1) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %list_del_init.exit, %if.end, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb13 ], [ 0, %list_del_init.exit ], [ %ret.0, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -14, %sw.bb.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stats) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nosy_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  tail call void @mutex_lock_nested(ptr noundef nonnull @card_mutex, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @card_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @card_list
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @card_mutex) #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %misc = getelementptr i8, ptr %.pn, i32 -40
  %3 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %misc, align 4
  %cmp3 = icmp eq i32 %4, %and.i
  br i1 %cmp3, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %tmp.0.le = getelementptr i8, ptr %.pn, i32 -124
  %kref.i = getelementptr i8, ptr %.pn, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !104
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !105

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !97

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.end_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %for.end

for.end:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @card_mutex) #10
  %cmp9 = icmp eq ptr %tmp.0.le, null
  br i1 %cmp9, label %for.end.cleanup_crit_edge, label %if.end11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 96) #14
  %cmp13 = icmp eq ptr %call7.i, null
  br i1 %cmp13, label %if.end11.fail_crit_edge, label %if.end15

if.end11.fail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end15:                                         ; preds = %if.end11
  %tcode_mask = getelementptr inbounds %struct.client, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %tcode_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tcode_mask, align 4
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tmp.0.le, ptr %call7.i, align 8
  %link17 = getelementptr inbounds %struct.client, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %link17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %link17, ptr %link17, align 8
  %prev.i = getelementptr inbounds %struct.client, ptr %call7.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %link17, ptr %prev.i, align 4
  %buffer = getelementptr inbounds %struct.client, ptr %call7.i, i32 0, i32 2
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131072, i32 noundef 3264, i32 noundef 5) #16
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i.i.i, ptr %buffer, align 8
  %cmp.i = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp.i, label %if.end15.fail_crit_edge, label %if.end21

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %head.i = getelementptr inbounds %struct.client, ptr %call7.i, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call1.i.i.i, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.client, ptr %call7.i, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1.i.i.i, ptr %tail.i, align 8
  %capacity4.i = getelementptr inbounds %struct.client, ptr %call7.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %capacity4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 131072, ptr %capacity4.i, align 4
  %lost_packet_count.i = getelementptr inbounds %struct.client, ptr %call7.i, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %lost_packet_count.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %lost_packet_count.i, align 4
  %size.i = getelementptr inbounds %struct.client, ptr %call7.i, i32 0, i32 2, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %size.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %size.i, align 8
  %wait.i = getelementptr inbounds %struct.client, ptr %call7.i, i32 0, i32 2, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @packet_buffer_init.__key) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %private_data, align 4
  %call22 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #10
  br label %cleanup

fail:                                             ; preds = %if.end15.fail_crit_edge, %if.end11.fail_crit_edge
  tail call void @kfree(ptr noundef %call7.i) #10
  %call.i.i.i.i.i.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %fail
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i41 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i41, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @kfree(ptr noundef nonnull %tmp.0.le) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end21, %for.end.cleanup_crit_edge, %for.end.thread
  %retval.0 = phi i32 [ %call22, %if.end21 ], [ -19, %for.end.cleanup_crit_edge ], [ -19, %for.end.thread ], [ -12, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ -12, %if.then10.i.i.i.i.i ], [ -12, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nosy_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %client_list_lock = getelementptr inbounds %struct.pcilynx, ptr %3, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %client_list_lock) #10
  %link = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %link, ptr %link, align 4
  %prev.i3.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %link, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %client_list_lock) #10
  %buffer = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %13) #10
  tail call void @kfree(ptr noundef %1) #10
  %kref.i = getelementptr inbounds %struct.pcilynx, ptr %3, i32 0, i32 12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lynx_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.lynx_put.exit_crit_edge:        ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lynx_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %lynx_put.exit

if.then.i.i:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @kfree(ptr noundef %3) #10
  br label %lynx_put.exit

lynx_put.exit:                                    ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lynx_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !73, !75, !77, !78, !80, !81, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_nosy__236_713_lynx_pci_driver_init6, !1, !"__initcall__kmod_nosy__236_713_lynx_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/firewire/nosy.c", i32 713, i32 1}
!2 = !{ptr @__exitcall_lynx_pci_driver_exit, !1, !"__exitcall_lynx_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/firewire/nosy.c", i32 715, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/firewire/nosy.c", i32 716, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/firewire/nosy.c", i32 717, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lynx_pci_driver, !12, !"lynx_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/firewire/nosy.c", i32 706, i32 26}
!13 = !{ptr @driver_name, !14, !"driver_name", i1 false, i1 false}
!14 = !{!"../drivers/firewire/nosy.c", i32 37, i32 13}
!15 = !{ptr @pci_table, !16, !"pci_table", i1 false, i1 false}
!16 = !{!"../drivers/firewire/nosy.c", i32 694, i32 29}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/firewire/nosy.c", i32 536, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @add_card._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @add_card._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/firewire/nosy.c", i32 541, i32 3}
!27 = !{ptr @add_card._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @add_card._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/firewire/nosy.c", i32 548, i32 3}
!31 = !{ptr @add_card._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @add_card._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @add_card.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/firewire/nosy.c", i32 555, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/firewire/nosy.c", i32 562, i32 3}
!38 = !{ptr @add_card._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @add_card._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/firewire/nosy.c", i32 580, i32 3}
!42 = !{ptr @add_card._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @add_card._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/firewire/nosy.c", i32 642, i32 3}
!46 = !{ptr @add_card._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @add_card._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/firewire/nosy.c", i32 656, i32 3}
!50 = !{ptr @add_card._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @add_card._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/firewire/nosy.c", i32 663, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @add_card._entry.25, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @add_card._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/firewire/nosy.c", i32 248, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @set_phy_reg._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @set_phy_reg._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/firewire/nosy.c", i32 253, i32 3}
!64 = !{ptr @set_phy_reg._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @set_phy_reg._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @nosy_ops, !67, !"nosy_ops", i1 false, i1 false}
!67 = !{!"../drivers/firewire/nosy.c", i32 394, i32 37}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!75 = !{ptr @packet_buffer_init.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/firewire/nosy.c", i32 125, i32 2}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/firewire/nosy.c", i32 111, i32 8}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @card_mutex, !79, !"card_mutex", i1 false, i1 false}
!82 = !{ptr @card_list, !83, !"card_list", i1 false, i1 false}
!83 = !{!"../drivers/firewire/nosy.c", i32 112, i32 8}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2154473073}
!94 = !{i64 5608929}
!95 = !{i64 2148569137}
!96 = !{i64 2148483601, i64 2148483633, i64 2148483662, i64 2148483696, i64 2148483727, i64 2148483750}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2149615107}
!99 = !{i64 5609347}
!100 = !{i64 2154473941}
!101 = !{i64 2148479606, i64 2148479632, i64 2148479661, i64 2148479695, i64 2148479726, i64 2148479749}
!102 = !{i64 2152659607, i64 2152659632}
!103 = !{i64 2148482071, i64 2148482097, i64 2148482126, i64 2148482160, i64 2148482191, i64 2148482214}
!104 = !{i64 2148481136, i64 2148481168, i64 2148481197, i64 2148481231, i64 2148481262, i64 2148481285}
!105 = !{!"branch_weights", i32 1, i32 2000}
